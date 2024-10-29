-- Employee details:
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries s ON e.emp_no = s.emp_no;

-- First name, last name, and hire date for employees hired in 1986:
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- Manager of each departmen and details: 
SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM dept_manager dm
JOIN departments d ON dm.dept_no = d.dept_no
JOIN employees e ON dm.emp_no = e.emp_no;

-- Department number for each employee with details:
SELECT d.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
JOIN departments d ON de.dept_no = d.dept_no
JOIN employees e ON de.emp_no = e.emp_no;

-- Details of each employee with first_name "Hercules" and last name
-- begining with letter "B":
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- Each employee in the Sales department with details:
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
JOIN departments d ON de.dept_no = d.dept_no
JOIN employees e ON de.emp_no = e.emp_no
WHERE d.dept_name = 'Sales';

-- Employees in the Sales and Development departments and details:
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
JOIN departments d ON de.dept_no = d.dept_no
JOIN employees e ON de.emp_no = e.emp_no
WHERE d.dept_name IN ('Sales', 'Development');

-- Frequency from highest to lowest of all last_names:
SELECT last_name, COUNT(*) as frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;