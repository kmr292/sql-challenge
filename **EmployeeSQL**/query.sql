--1.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
FROM salaries
INNER JOIN employees ON
employees.emp_no=salaries.emp_no;

--2. 
SELECT emp_no, first_name, last_name, hire_date FROM employees
WHERE EXTRACT(YEAR FROM hire_date)= '1986';

--3. 
SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name, dept_manager.from_date, dept_manager.to_date FROM employees
INNER JOIN dept_manager ON
employees.emp_no=dept_manager.emp_no
INNER JOIN departments ON
dept_manager.dept_no=departments.dept_no;

--4. 
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name FROM employees
INNER JOIN dept_emp ON
employees.emp_no=dept_emp.emp_no
INNER JOIN departments ON
dept_emp.dept_no=departments.dept_no;

--5. 
SELECT emp_no, first_name, last_name FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--6. 
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name FROM employees
INNER JOIN dept_emp ON
employees.emp_no=dept_emp.emp_no
INNER JOIN departments ON
dept_emp.dept_no=departments.dept_no
WHERE dept_name = 'Sales';

--7. 
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name FROM employees
INNER JOIN dept_emp ON
employees.emp_no=dept_emp.emp_no
INNER JOIN departments ON
dept_emp.dept_no=departments.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

--8. 
SELECT last_name, COUNT(last_name) AS "Frequency Count" FROM employees
GROUP BY last_name
ORDER BY "Frequency Count" DESC;