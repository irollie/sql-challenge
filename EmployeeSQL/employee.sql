--Data Engineering
-- Drop tables if exists
DROP TABLE titles;
DROP TABLE departments;
DROP TABLE dept_emp;
DROP TABLE dept_manager;
DROP TABLE employees;
DROP TABLE salaries;


-- Creates Titles Table
CREATE TABLE titles (
  title_id VARCHAR PRIMARY KEY,
  title VARCHAR
  );

-- Checks table after importing titles csv
SELECT * FROM titles;
----


-- Creates Employees Table
CREATE TABLE employees (
  emp_no INT PRIMARY KEY NOT NULL,
  emp_title_id VARCHAR NOT NULL,
  birth_date DATE NOT NULL,
  first_name VARCHAR NOT NULL,
  last_name VARCHAR NOT NULL,
  sex VARCHAR NOT NULL,
  hire_date DATE NOT NULL,
  --PRIMARY KEY (emp_no)
  FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
);

-- Checks table after importing employees csv
SELECT * FROM employees;
----


-- Creates Departments Table
CREATE TABLE departments (
  dept_no VARCHAR PRIMARY KEY,
  dept_name VARCHAR
);

-- Checks table after importing departments csv
SELECT * FROM departments;
----


-- Creates dept_emp Table
CREATE TABLE dept_emp (
  emp_no INT,
  dept_no VARCHAR,
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  PRIMARY KEY (emp_no, dept_no)
);

-- Checks table after importing dept_emp csv
SELECT * FROM dept_emp;
----


-- Creates dept_manager Table
CREATE TABLE dept_manager (
	dept_no VARCHAR,
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY (dept_no, emp_no)
);

-- Checks table after importing dept_manager csv
SELECT * FROM dept_manager;
----


-- Creates Salaries Table
CREATE TABLE salaries (
  emp_no INT PRIMARY KEY,
  salary INT,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Checks table after importing salaries csv
SELECT * FROM salaries;
----
