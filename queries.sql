
-- 1-List the following details of each employee: employee number, last name, first name, sex, and salary.
select employees.emp_no, employees.last_name,employees.first_name,employees.sex,salaries.salary from employees
left join salaries on employees.emp_no = salaries.emp_no;

--2-List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date 
FROM employees 
WHERE hire_date >= '1986-01-01' and
      hire_date < '1987-01-01';
	  
--3-List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.
SELECT departments.dept_no,departments.dept_name,employees.emp_no,employees.last_name,employees.first_name from dept_manager 
left join departments on departments.dept_no=dept_manager.dep_no
left join employees on employees.emp_no=dept_manager.emp_no;

--4-List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
select employees.emp_no,employees.last_name,employees.first_name,departments.dept_name from employees
left join dept_emp on dept_emp.emp_no = employees.emp_no
left join departments on departments.dept_no = dept_emp.dept_no;

 --5-List all employees whose first name is "Hercules" and last names begin with "B."
select * from employees where first_name='Hercules' AND  last_name like 'B%';

--6-List all employees in the Sales department, including their employee number, last name, first name, and department name.
select employees.emp_no,employees.last_name,employees.first_name,departments.dept_name from employees
left join dept_emp on employees.emp_no=dept_emp.emp_no
left join departments on departments.dept_no = dept_emp.dept_no
where dept_name='Sales';

--7-List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
select employees.emp_no,employees.last_name,employees.first_name,departments.dept_name from employees
left join dept_emp on employees.emp_no=dept_emp.emp_no
left join departments on departments.dept_no = dept_emp.dept_no
where dept_name='Development' or dept_name='Sales';

--8--In descending order, 
--list the frequency count of employee last names, i.e., how many  share each last name.
SELECT last_name,
COUNT(last_name) AS "last_name_count"
FROM employees
GROUP BY last_name
ORDER BYemployees
COUNT(last_name) DESC;


