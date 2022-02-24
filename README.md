
# Pewlett Hackard Analysis

## *Preparation for job role fullfillment due to upcoming "Silver Tsunami"*

### Project Overview: Determine number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program.
---
</br>

## Results
Based on employment records given to us by Pewlett Hackard, we pinpointed the company's number of current employees and potential retirees, the number of employees for any given title or department in sum and for potential retirees, and created a comprehensive list of employees deemed eligible for a potential "Mentorship Program."  The intention of the analysis was to get ahead of the potentially damaging effects of the impending "Silver Tsunami" at Pewlett Hackard.  Our analysis provides the necessary information for Pewlett Hackard to begin planning for hiring, training, and future disbursement of retirement benefits.  

The Mentorship Program aims to aleviate the burden of hiring and training on such a massive scale.  Employees deemed eligible for the Mentorship Program would be mentored by potential retirees to fill their roles, in a part-time capacity.  Hewlett Packard could then focus its hiring efforts on filling lower level positions, and allow for a smoother transition.  Mentorship Program eligibility was defined by Pewlett Hackard as current employees who were born between January 1, 1965 and December 31, 1965.

Highlights from our analysis:

- There are 240,124 current employees at Pewlett Hackard.
  - Majority of the current employees hold titles as "Senior Engineer" (85,939) and "Senior Staff" (82,024).
  - Followed by "Engineer" (30,983), "Staff" (25,526), "Technique Leader" (12,055) and "Assistant Engineer" (3,588).
  - There are only nine (9) "Manager" titles.
- 72,458 individuals will potentially retire in the next few years (30% of the workforce). 
  - Majority of the potential retirees hold titles as "Senior Engineer" (25,916) and "Senior Staff" (24,926).
  - Followed by "Engineer" (9,285), "Staff" (7,636), "Technique Leader" (3,603) and "Assistant Engineer" (1,090).
  - There are only two (2) "Manager" titles that need to be filled.
- Only 36,619 potential retirees were returned during an analysis of retirees by department.
  - Development Department returned the most potential retirees (9,281).
  - The Production Development (8,174) and Sales Departments (5,860) both also returned substantially high numbers. 
  - Customer Service (2,597), Research (2,413), Quality Management (2,234), Marketing (2,199), Human Resources (1,953), and Finance (1,908) Departments followed.
- 1,549 employees were found eligible for the Mentorship Program.
  - No Managers were found eligible.
</br>

Current Employees by Title  |   Titles to Fill   |   Retirees by Department |  Eligibility Search for Managers
:-------------------------:|:-------------------------:|:-------------------------:|:-------------------------:
<img src="https://github.com/ajcurtis916/pewlett-hackard-analysis/blob/main/data/xcurrent_titles.png" width="200"/>|<img src="https://github.com/ajcurtis916/pewlett-hackard-analysis/blob/main/data/xnum_retiring_titles.png" width="200"/>|<img src="https://github.com/ajcurtis916/pewlett-hackard-analysis/blob/main/data/xretirees_by_department.png" width="200"/>|<img src="https://github.com/ajcurtis916/pewlett-hackard-analysis/blob/main/data/xno_managers_mentorship_eligibility.png" width="400"/>
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
Our analysis returned 72,458 individuals slated to retire in the next few years, as part of the impending "Silver Tsunami."  This would be a massive exodus, compromising a loss of 30% of Pewlett Hackard's current workforce.  The roles that bare the heaviest weight on the companies role fulfillment duties are of the Senior Level.    

Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

There are nine departments which all hold the same titles across the board.  
