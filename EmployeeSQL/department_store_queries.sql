--1
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON
salaries.emp_no= employees.emp_no;
--2
SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE hire_date like '__/__/1986'
--3
SELECT
  departments.dept_name,
  dept_manager.dept_no, dept_manager.emp_no, 
  employees.last_name, employees.first_name
FROM
  departments
  INNER JOIN dept_manager
    ON departments.dept_no = dept_manager.dept_no 
  INNER JOIN employees
    ON dept_manager.emp_no = employees.emp_no
--4
SELECT   dept_emp.dept_no,  dept_emp.emp_no, employees.last_name, 
employees.first_name, departments.dept_name
FROM employees
INNER JOIN dept_emp ON
employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON 
dept_emp.dept_no = departments.dept_no;
--5
SELECT employees.first_name, employees.last_name, employees.sex
FROM employees
WHERE first_name = 'Hercules' and last_name like 'B%'
--6
SELECT   dept_emp.emp_no, employees.last_name, 
employees.first_name
FROM employees
INNER JOIN dept_emp ON
employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON 
dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales'
;
--7
SELECT   dept_emp.emp_no, employees.last_name, 
employees.first_name, departments.dept_name
FROM employees
INNER JOIN dept_emp ON
employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON 
dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales' or departments.dept_name = 'Development'
;
--8
SELECT last_name, COUNT(last_name)
AS "Frequency Count of Employee Last Names" 
FROM employees GROUP BY last_name
ORDER BY "Frequency Count of Employee Last Names" DESC;
