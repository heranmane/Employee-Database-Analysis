--create departments tables 
CREATE TABLE departments (
	dept_no VARCHAR (100),
	dept_name VARCHAR (100)
);
--create dept_emp tables 
CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR (100)
);
--create dept_manager tables 
CREATE TABLE dept_manager (
	dep_no VARCHAR (100),
	emp_no INT
);

--create employees tables 
CREATE TABLE employees (
	emp_no int,
	emp_title_id varchar(100),
	birth_date date, 
	first_name varchar(100), 
	last_name varchar(100), 
	sex varchar(100), 
	hire_date date 
);
select * from employees

CREATE TABLE salaries (
	emp_no INT,
	salary INT
);

DROP TABLE titles
CREATE TABLE titles (
	title_id varchar(100),
	title varchar(100)
);

