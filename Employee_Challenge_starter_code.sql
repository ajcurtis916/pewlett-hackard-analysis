-- Use Dictinct with Orderby to remove duplicate rows
SELECT
emp.emp_no,
emp.last_name,
emp.first_name,
ti.title,
ti.from_date,
ti.to_date
INTO retirement_titles
FROM employees AS emp
INNER JOIN titles AS ti
ON (emp.emp_no=ti.emp_no)
WHERE emp.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY emp.emp_no;

SELECT * FROM retirement_titles;
	