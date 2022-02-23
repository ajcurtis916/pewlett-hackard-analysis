DROP TABLE retirement_titles;
SELECT * FROM employees;
SELECT * FROM current_emp;

--Inner join for potential retirees by title
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_titles
FROM employees AS e
INNER JOIN titles AS t
ON (e.emp_no=t.emp_no)
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY e.emp_no;

SELECT * FROM retirement_titles;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no)
	rt.emp_no,
	rt.first_name,
	rt.last_name,
	rt.title
INTO unique_titles
FROM retirement_titles AS rt
WHERE (rt.to_date='9999-01-01')
ORDER BY rt.emp_no, rt.to_date DESC;

SELECT * FROM unique_titles;
--Retrieve # of retirees by most recent job title
SELECT COUNT(ut.emp_no)
FROM unique_titles AS ut;

--Retrieve # of retirees before applying unique to check work
SELECT COUNT(rt.emp_no)
FROM retirement_titles as rt;

SELECT * FROM unique_titles;
--Create retiring titles table
SELECT COUNT(ut.title),
	ut.title
INTO retiring_titles
FROM unique_titles AS ut
GROUP BY ut.title
ORDER BY COUNT DESC;

SELECT * FROM retiring_titles;
--Count of retirees
SELECT SUM(count)
FROM retiring_titles;

--Create Mentorship Eligibility table
SELECT DISTINCT ON (e.emp_no)
	e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO mentorship_eligibility
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no=de.emp_no)
INNER JOIN titles AS t
ON (e.emp_no=t.emp_no)
WHERE (de.to_date='9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;

SELECT * FROM mentorship_eligibility;
--Retrieve # of retirees by most recent job title
SELECT COUNT(me.emp_no)
FROM mentorship_eligibility AS me;

--Checking for retirees by department
SELECT * FROM dept_retirees
ORDER BY (count) DESC;
SELECT SUM(dr.count)
FROM dept_retirees AS dr;

SELECT * FROM departments;
--Check difference between unique_titles and retiring_titles
SELECT COUNT(ut.title), ut.title
FROM unique_titles AS ut
GROUP BY ut.title;

--Find all current employees's unique titles
SELECT DISTINCT ON (e.emp_no)	
	e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.to_date
INTO all_current_titles
FROM employees AS e
INNER JOIN titles AS t
ON (e.emp_no=t.emp_no)
WHERE t.to_date=('9999-01-01')
ORDER BY e.emp_no;

--Count titles per department current employees
SELECT COUNT(act.title), act.title
FROM all_current_titles AS act
GROUP BY act.title
ORDER BY (count) DESC;

--Check version for Resources
SELECT version();