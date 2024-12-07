-- Data Analysis Queries
-- Queston 1
SELECT emp.emp_no as employee_number, emp.last_name, emp.first_name, emp.sex, sal.salary
FROM employees as emp
LEFT JOIN salaries as sal
ON emp.emp_no = sal.emp_no
ORDER BY emp.emp_no;

-- Queston 2
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- Queston 3
SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM departments d 
JOIN dept_manager dm ON (d.dept_no = dm.dept_no)
JOIN employees e ON (dm.emp_no = e.emp_no);

-- Queston 4
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de ON (e.emp_no = de.emp_no)
JOIN departments d ON (de.dept_no = d.dept_no);

-- Queston 5
SELECT first_name, last_name, sex
FROM employees 
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- Queston 6
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e 
JOIN dept_emp de ON (e.emp_no = de.emp_no)
JOIN departments d ON (de.dept_no = d.dept_no)
WHERE d.dept_name = 'Sales';

-- Queston 7
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e 
JOIN dept_emp de ON (e.emp_no = de.emp_no)
JOIN departments d ON (de.dept_no = d.dept_no)
WHERE d.dept_name = 'Sales' 
OR d.dept_name = 'Development';

-- Queston 8
SELECT count(last_name) as frequency, last_name
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;


