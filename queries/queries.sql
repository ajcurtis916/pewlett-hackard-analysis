--Filter for potential retirees
SELECT first_name, last_name FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31';

--Potential retiree count
SELECT COUNT(*)
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31';

--Filter BD 1952
SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1952-12-31';

--BD 1952 potential retiree count
SELECT COUNT(*)
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1952-12-31';

--Filter BD 1953
SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1953-01-01' AND '1953-12-31';

--BD 1953 potential retiree count
SELECT COUNT(*)
FROM employees
WHERE birth_date BETWEEN '1953-01-01' AND '1953-12-31';

--Filter BD 1954
SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1954-01-01' AND '1954-12-31';

--BD 1954 potential retiree count
SELECT COUNT(*)
FROM employees
WHERE birth_date BETWEEN '1954-01-01' AND '1954-12-31';

--Filter BD 1955
SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1955-01-01' AND '1955-12-31';

--BD 1955 potential retiree count
SELECT COUNT(*)
FROM employees
WHERE birth_date BETWEEN '1955-01-01' AND '1955-12-31';

-- Retirement eligibility
SELECT first_name, last_name
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- Number of employees retiring
SELECT COUNT(first_name)
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

--Create new table w/ filtered data for export
SELECT first_name,last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

SELECT * FROM retirement_info;

DROP TABLE retirement_info;
-- Create new table for retiring employees
SELECT emp_no, first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- Check the table
SELECT * FROM retirement_info;

-- Joining departments and dept_manager tables
SELECT departments.dept_name,
     dept_manager.emp_no,
     dept_manager.from_date,
     dept_manager.to_date
FROM departments
INNER JOIN dept_manager
ON departments.dept_no = dept_manager.dept_no;

SELECT * FROM retirement_info;

-- Joining retirement_info and dept_emp tables
SELECT retirement_info.emp_no,
    retirement_info.first_name,
	retirement_info.last_name,
    dept_emp.to_date
FROM retirement_info
LEFT JOIN dept_emp
ON retirement_info.emp_no=dept_emp.emp_no;

SELECT * FROM retirement_info;

--Use aliases and write query into retiement_info table
SELECT ri.emp_no,
	ri.first_name,
	ri.last_name,
	de.to_date
FROM retirement_info AS ri
LEFT JOIN dept_emp AS de
ON ri.emp_no=de.emp_no;

DROP TABLE current_emp;
--Only a query up until this point
SELECT ri.emp_no,
	ri.first_name,
	ri.last_name,
	de.to_date
--Does not change data in tables until this line of code
--Puts query into new table
INTO current_emp
FROM retirement_info as ri
LEFT JOIN dept_emp as de
ON ri.emp_no = de.emp_no
--Filters for only current employees
WHERE de.to_date = ('9999-01-01');

SELECT * FROM current_emp;
SELECT COUNT (*)
FROM current_emp;

--Employee count by department number
SELECT COUNT(ce.emp_no),de.dept_no
FROM current_emp AS ce
LEFT JOIN dept_emp AS de
ON ce.emp_no=de.emp_no
GROUP BY de.dept_no
ORDER BY de.dept_no;

--Create new table for query for export
SELECT COUNT(ce.emp_no),de.dept_no
INTO dept_retirees
FROM current_emp AS ce
LEFT JOIN dept_emp AS de
ON ce.emp_no=de.emp_no
GROUP BY de.dept_no
ORDER BY de.dept_no;

SELECT * FROM dept_retirees;

SELECT * FROM salaries
ORDER BY to_date DESC;

--Joining on multiple columns for requested employee info
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	e.gender,
	s.salary,
	de.to_date
INTO emp_info
FROM employees AS e
INNER JOIN salaries AS s
ON (e.emp_no=s.emp_no)
INNER JOIN dept_emp AS de
ON(e.emp_no=de.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (e.hire_date BETWEEN '1985-01-01' AND '1988-12-31')
AND (de.to_date = '9999-01-01');

SELECT * FROM current_emp;
-- List of managers per department
SELECT  d.dept_no,
        d.dept_name,
        dm.emp_no,
        ce.last_name,
        ce.first_name,
        dm.from_date,
        dm.to_date
INTO manager_info
FROM departments AS d
INNER JOIN dept_manager AS dm
ON (d.dept_no = dm.dept_no)
INNER JOIN current_emp AS ce
ON (dm.emp_no = ce.emp_no);

SELECT * FROM current_emp;

--Join for retirees list by department
SELECT  ce.emp_no,
        ce.first_name,
        ce.last_name,
        d.dept_name
INTO dept_info
FROM current_emp AS ce
INNER JOIN dept_emp AS de
ON (ce.emp_no = de.emp_no)
INNER JOIN departments AS d
ON (de.dept_no = d.dept_no);

SELECT * FROM current_emp;
--Join for sales team info
SELECT ce.emp_no,
	ce.first_name,
	ce.last_name,
	d.dept_name
INTO sales_info
FROM current_emp as ce
INNER JOIN dept_emp as de
ON (ce.emp_no=de.emp_no)
INNER JOIN departments as d
ON (d.dept_no=de.dept_no)
WHERE (d.dept_name='Sales');

SELECT * FROM current_emp;
--Join for sales and development team info
SELECT ce.emp_no,
	ce.first_name,
	ce.last_name,
	d.dept_name
INTO sales_development_info
FROM current_emp as ce
INNER JOIN dept_emp as de
ON (ce.emp_no=de.emp_no)
INNER JOIN departments as d
ON (d.dept_no=de.dept_no)
WHERE d.dept_name IN ('Sales','Development');