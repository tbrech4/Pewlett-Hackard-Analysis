# Pewlett-Hackard-Analysis

## Analysis Overview

The purpose of this analysis was to look at employee demographics to help determine if Pewlett Hackard (PH) needs to prepare for the upcoming retirements of many employees. PH previously only used excel spreadsheets to store all of their data. 

I helped them organize the spreadsheets into a linked database using SQL.

## Results

* Most of the employees that are eligbile for retirement soon are in Senior Engineer & Senior Staff positions - right around 70%. This means that there will likely be many important roles that will need to be staffed in the upcoming years.

! [count of employees retiring soon as % of total] (Resources/retiring_soon_%of_total.png)

* Most of the emplyoyees that are eligible to be mentors are also mostly Senior Engineers & Senior Staffs. This means that PH is at risk of losing employees that could help mentor the next generation of senior employees. They should perhaps expand mentorship eligibility or incentifize being a mentor so they don't run out of candidates.

! [pie chart] (Resources/fig1.png)

* About 30% of employees are eligible for retirement, and roughly 30% of each job title. The only title with a lower % is manager - coming it at 22%. I found these numbers by pivoting out the most recent titles of all employees that are still at the company.

* Only 1,090 Assistant Engineers are eligible for retirement. This means that there are likely many Assistant Engineers that will become Engineers or perhaps even Senior Engineers once others start to retire.

## Summary

### How many roles will need to be filled as the "silver tsunami" begins to make an impact?

72,458 roles will need to be filled across all departments. 

### Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees? This is likely because the mentorship table that was created only has employees with birth year of 1965. This doesn't make much sense, but it is what was required for the module.

There are only 1,549 employees in total that are qualfiied and retirement-ready. This is likely not enough to mentor the next generation of employees. 

### Additional Insights

* Lack of managers in database:

There are only two managers active in the database. This likely means that the database is missing some important information.

! [active managers] (Resources/active_managers.png)

* Popular Departments:

Development, Production, and Sales are the most popular departments at PH. The remaining departments aren't as large - it looks like these deparments are mostly support departments i.e. finance, human resources, etc.
