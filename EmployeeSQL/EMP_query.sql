--List the employee number, last name, first name, sex, and salary of each employee

SELECT e.emp_id, e.last_name, e.first_name, e.sex, s.emp_salary
FROM employees e
JOIN salaries s
ON (e.emp_no = s.emp_no);

--List the first name, last name, and hire date for the employees who were hired in 1986

--SELECT * from employees;

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986/01/01' AND '1986/12/31';

--List the manager of each department along with their department number, department name, employee number, last name, and first name.

-- SELECT * from employees;
-- SELECT * from departments;
-- SELECT * from dept_emp;


SELECT d.dept_no, f.dept_name,d.emp_no, e.last_name, e.first_name
FROM employees e
JOIN dept_manager d
ON (e.emp_no = d.emp_no)
JOIN departments f
ON (d.dept_no = f.dept_no);

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

SELECT d.dept_no, e.emp_no, e.last_name, e.first_name, f.dept_name
FROM employees e
JOIN dept_emp d
ON (e.emp_no = d.emp_no)
JOIN departments f
ON (d.dept_no = f.dept_no);

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.


SELECT first_name, last_name, sex
FROM employees
WHERE "first_name" LIKE 'Hercules' AND "last_name" LIKE 'B%';

-- List each employee in the Sales department, including their employee number, last name, and first name.

SELECT e.emp_no, e.last_name, e.first_name
FROM employees e
JOIN dept_emp d
ON (e.emp_no = d.emp_no)
JOIN departments f
ON (d.dept_no = f.dept_no)
WHERE "dept_name" LIKE 'Sales';

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, f.dept_name
FROM employees e
JOIN dept_emp d
ON (e.emp_no = d.emp_no)
JOIN departments f
ON (d.dept_no = f.dept_no)
WHERE "dept_name" LIKE 'Sales' OR "dept_name" LIKE 'Development';


-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

SELECT last_name, COUNT (last_name)AS FREQUENCY
FROM employees
GROUP BY last_name ORDER BY 
COUNT(last_name) DESC;