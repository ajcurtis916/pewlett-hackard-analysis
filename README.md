
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
Our analysis returned 72,458 individuals slated to retire in the next few years, as part of the impending "Silver Tsunami."  This will be a massive exodus, compromising a loss of 30% of Pewlett Hackard's current workforce.  The roles that bare the heaviest weight on the company's role fulfillment duties are all of Senior Level: Senior Developers and Senior Staff.  This makes sense, as these roles also hold that majority of current roles for all employees, across all departments.  Current Senior level employees account for 70% of all staff, and Senior level potential retirees account for 70% of all potential retirees.  There are nine (9) departments in total, all of which hold the same titles across the board.

When we took a look at potential retirees by department, we oddly got a different number.  The Development Department returned the most upcoming title vacancies (9,281), followed by the Production Development (8,174) and Sales Departments (5,860).  The Customer Service, Research, Quality Management, Marketing, Human Resources, and Finance Departments ranged between the mid 2,000s and high 1,000s, a difference of only 700 employees between the highest and lowest number of titles to by filled per department in this lower bracket.  However, the sum of all potential retirees by department was only 36,619, a difference of 35,619 from the number returned in the analysis of retirees by title.  Nearly half as many potential retirees.  One would assume Pewlett Hackard did not hide multiple departments from us when presenting the employment records. Would have to further investigate to determine the vastly different projections. 

Only 1,549 employees were found eligible for the Mentorship Program.  No current Managers were found eligible, though any Senior level employee could likely fill these positions.  Eligibility was based on Pewlett Hackard's standard of employees born between January 1, 1965 and December 31, 1965.  Pewlett Hackard should consider expanding it's eligibility requirements to include younger employees to fulfill the titles.  Birthdates may not be the best rubric in general, are at least not the only rubric, as there are likely many experienced and qualified younger employees.  Pewlett Hackard could also consider assigning each retiree as Mentor to 2-3 employees, which would greatly increase the amount of roles that could be filled as part of the program.  If each Mentor was assigned an employee for each day of the week, given the current eligibility requirements, this could grow the capacity for mentorship to cover 7,745 employees.  However, still grossly underfulfills the the current need of 36,619 to 72,458.  Massive external hiring will still be necessary.  
