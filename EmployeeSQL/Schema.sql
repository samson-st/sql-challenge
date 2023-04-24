-- Delete the table
DROP TABLE employees IF EXISTS;

-- Create a new table employees
CREATE TABLE employees (
  emp_ID INT PRIMARY KEY,
  emp_title VARCHAR(10) NOT NULL,
  birth_date VARCHAR(10) NOT NULL,
  first_name VARCHAR(20) NOT NULL,
  last_name VARCHAR(20) NOT NULL,
  sex VARCHAR(1) NOT NULL,
  hire_date VARCHAR(10) NOT NULL  
);

--show data in employees table
SELECT * FROM employees;

-- Delete the table
DROP TABLE salaries IF EXISTS;

--Create a new table salaries
CREATE TABLE salaries (
  emp_no INT PRIMARY KEY,
  emp_salary INT NOT NULL
);

--show data in employees table
SELECT * FROM salaries;

-- Delete the table
DROP TABLE emp_titles IF EXISTS;

--Create a new table employee titles
CREATE TABLE emp_titles (
  title_ID INT PRIMARY KEY,
  title VARCHAR NOT NULL
);

--show data in employee titles table
SELECT * FROM emp_titles;

-- Delete the table
DROP TABLE dept_manager;

--Create a new table department manager
CREATE TABLE dept_manager (
  dept_no VARCHAR(4) NOT NULL,
  emp_no INT PRIMARY KEY
);

--show data in department employee table
SELECT * FROM dept_emp;

-- Delete the table
DROP TABLE dept_emp;

--Create a new table department manager
CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
	dept_no VARCHAR(4) NOT NULL
);

--show data in department manager table
SELECT * FROM dept_emp;

-- Delete the table
DROP TABLE departments;

--Create a new table departments
CREATE TABLE departments (
    dept_no VARCHAR(4) NOT NULL,
	dept_name VARCHAR NOT NULL
);

--show data in departments table
SELECT * FROM departments;