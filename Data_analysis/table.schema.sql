CREATE TABLE titles (
    title_id varchar(10) PRIMARY KEY,
    title varchar(30) NOT NULL
);
CREATE TABLE departments (
    dept_no varchar(10) PRIMARY KEY,
    dept_name varchar(30) NOT NULL
);
CREATE TABLE employees (
    emp_no int PRIMARY KEY,
    emp_title_id varchar(10) REFERENCES titles(title_id),
    birth_date date,
    first_name varchar(30) NOT NULL,
    last_name varchar(30) NOT NULL,
    sex char (1) NOT NULL,
    hire_date date
);
CREATE TABLE salaries (
    emp_no int PRIMARY KEY REFERENCES employees(emp_no),
    salary int
);
CREATE TABLE dept_emp (
    emp_no int REFERENCES employees(emp_no),
    dept_no varchar(10) REFERENCES departments(dept_no),
    PRIMARY KEY (emp_no, dept_no)
);
CREATE TABLE dept_manager (
    dept_no varchar(10) REFERENCES departments(dept_no),
    emp_no int REFERENCES employees(emp_no),
    PRIMARY KEY (dept_no, emp_no)
);