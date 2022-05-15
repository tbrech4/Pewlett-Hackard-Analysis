

-- START OF DELIVERABLE ONE

-- Creating Retirement_titles table
Select 
e.emp_no,
e.first_name,
e.last_name,
rt.title,
rt.from_date,
rt.to_date
INTO retirement_titles
FROM employees as e
LEFT JOIN titles as rt
ON e.emp_no = rt.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')

-- Creating unique_titles table from retirement_titles table
SELECT DISTINCT ON (emp_no)
emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
WHERE to_date  = '9999-01-01'
ORDER BY emp_no, to_date DESC;


--Creating retiring_titles table
SELECT
count(title),
title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count(title) DESC; 

-- START OF DELIVERABLE TWO

-- Employees eligible for mentorship program

SELECT DISTINCT ON (e.emp_no)
e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
ti.title
INTO mentorship_eligibility
FROM employees as e
LEFT JOIN dept_emp as de
ON e.emp_no = de.emp_no
LEFT JOIN titles as ti
ON e.emp_no = ti.emp_no
WHERE (ti.to_date = '9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;