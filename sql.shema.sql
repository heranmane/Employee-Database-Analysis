DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;
--create departments tables 
CREATE TABLE departments (
	dept_no VARCHAR NOT NULL,
	dept_name VARCHAR NOT NULL,
	CONSTRAINT "pk_departments" PRIMARY KEY 
	("dept_no")
);
SELECT * FROM departments;

--create dept_emp tables 
CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR (100)
);
SELECT * FROM dept_emp;

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
	hire_date date,
	CONSTRAINT "pk_employees" PRIMARY KEY ("emp_no")
);
select * from employees

CREATE TABLE salaries (
	emp_no INT,
	salary INT
);
select * from salaries;


CREATE TABLE titles (
	title_id varchar(100),
	title varchar(100)
);
select * from titles;

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dep_no" FOREIGN KEY("dep_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");
