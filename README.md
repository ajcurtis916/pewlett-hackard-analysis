
# Pewlett Hackard Analysis

## *Preparation for job role fullfillment due to upcoming "Silver Tsunami"*

### Project Overview: Determine number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program.
---
</br>

## Results
We were tasked with retrieving the number of potential retirees, the 

vacant positions.

as part of a "Silver Tsunami" at Pewlett Hackard.

During our preliminary analysis we created a table to break down the number of potential retirees by department

Mentorship Program eligibility was defined by Pewlett Hackard as 

Highlights from our analysis:

- 
- 72,458 individuals will potentially retire in the next few years.
  - Majority of the potential retirees hold titles as "Senior Engineer" (25,916) and "Senior Staff" (24,926).
  - This is followed by "Engineer" (9,285), "Staff" (7,636), "Technique Leader" (3,603) and "Assistant Engineer" (1,090).
  - There are only two (2) "Manager" titles that may need to be filled.
- Only 36,619 potential retirees were returned during an analysis of retirees by department.
  - Development Department returned the most potential retirees (9,281).
  - The Production Development (8,174) and Sales Departments (5,860) both also returned substantially high numbers. 
  - Customer Service (2,597), Research (2,413), Quality Management (2,234), Marketing (2,199), Human Resources (1,953), and Finance (1,908) Departments followed.
- 1,549 employees were found eligible for the Mentorship Program.
  - No Managers were found eligible.
</br>

Titles to Fill     |   Current Employees by Title   |   Retirees by Department 
:-------------------------:|:-------------------------:|:-------------------------:
<img src="https://github.com/ajcurtis916/pewlett-hackard-analysis/blob/main/data/xnum_retiring_titles.png" width="250"/>|<img src="https://github.com/ajcurtis916/pewlett-hackard-analysis/blob/main/data/xcurrent_titles.png" width="300"/>|<img src="https://github.com/ajcurtis916/pewlett-hackard-analysis/blob/main/data/xretirees_by_department.png" width="300"/>
</br>
<img align="center" src="https://github.com/ajcurtis916/pewlett-hackard-analysis/blob/main/data/xno_managers_mentorship_eligibility.png" width="600"/>
</br>
  

## Resources
**Data Sources**
- Original Data: departments.csv, dept_emp.csv, dept_manager.csv, employees.csv, salaries.csv, titles.csv (located in "data" folder, "OG_data")
- Project Data: mentorship_eligibility.csv, retirement_titles.csv, retiring_titles.csv, unique_titles.csv (located in "data" folder)
- Additional Data: additional files produced during our analysis can be located in "data" folder, "groundwork_data)

**Software**
- PostgreSQL 11.13, compiled by Visual C++ build 1914, 64-bit
- pgAdmin 4

## Summary
Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."
How many roles will need to be filled as the "silver tsunami" begins to make an impact?
Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
