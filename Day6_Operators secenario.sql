/* Scenario 1
Question : A company is planning to provide a fixed salary increment of ₹5,000 to every employee. The HR 
department wants to generate a report showing both the current salary and the revised salary after the increment. 
Write a SQL query to generate the report. */

Create database Employee_Salary; Use Employee_Salary;
Create Table Employee (EmpID int, EmpName Varchar (10), Department varchar (10), Salary decimal(8,2), Age Int);
Insert into employee (EmpID, EmpName, Department, Salary, Age) Values (1, "Hari", "HR", 20000.68, 24), (2, "Rupan", "Developer", 93000.79,26),
(3, "Kee", "Support", 81000.81, 37 ), (4,"Ram", "Biller",45500.77, 21), (5, "Hari", "Testing", 61700.51,45);
-- Asnwer :
Select Empname, Department, Salary + 5000 from Employee Salary;

/* Scenario 2
Question : The HR department wants to identify employees who belong to the Sales department and 
whose salary is greater than ₹45,000. 
Generate a report containing only employees who satisfy both conditions. */
Create database Employee_Eligibility; Use Employee_Eligibility;
Create Table Employee (EmpID int, EmpName Varchar (10), Department varchar (10), Salary decimal(8,2), Age Int);
Insert into employee (EmpID, EmpName, Department, Salary, Age) Values (1, "Hari", "HR", 20000.68, 24), (2, "Rupan", "Developer", 93000.79,26),
(3, "Kee", "Support", 81000.81, 37 ), (4,"Ram", "Biller",45500.77, 21), (5, "Hari", "Testing", 61700.51,45);
-- Asnwer :
Select * from employee where salary < 45000 or department = "Biller";

/* Scenario 3
Question : The management wants to retrieve employees who are working in either the HR department or the IT department. 
Generate a report displaying all matching employees. */
Create database Department_wise; Use Department_wise;
Create Table Employee (EmpID int, EmpName Varchar (10), Department varchar (10), Salary decimal(8,2), Age Int);
Insert into employee (EmpID, EmpName, Department, Salary, Age) Values (1, "Hari", "HR", 20000.68, 24), (2, "Rupan", "Developer", 93000.79,26),
(3, "Kee", "Support", 81000.81, 37 ), (4,"Ram", "Biller",45500.77, 21), (5, "Hari", "Testing", 61700.51,45);
-- Asnwer :
Select * from employee where department = "HR" or department = "Biller";

/* Scenario 4
Question : The recruitment team wants to identify employees whose names start with the letter 'A' and 
employees whose names end with the letter 'n'. 
Write the required SQL queries to generate both reports. */
Create Table Employee (EmpID int, EmpName Varchar (10), Department varchar (10), Salary decimal(8,2), Age Int);
Insert into employee (EmpID, EmpName, Department, Salary, Age) Values (1, "Hari", "HR", 20000.68, 24), (2, "Rupan", "Developer", 93000.79,26),
(3, "Kee", "Support", 81000.81, 37 ), (4,"Ram", "Biller",45500.77, 21), (5, "Hari", "Testing", 61700.51,45);
-- Asnwer :
Select * from employee where Empname Like "A%N";

/* Scenario 5
Question : A company has migrated employee records from another system. During migration, some 
employees were assigned a department, while others were left without one. 
Generate the following reports: 
• Employees whose department information is missing. 
• Employees whose department information is available. */
Create Table Employee (EmpID int, EmpName Varchar (10), Department varchar (10), Salary decimal(8,2), Age Int);
Insert into employee (EmpID, EmpName, Department, Salary, Age) Values (1, "Hari", "HR", 20000.68, 24), (2, "Rupan", "Developer", 93000.79,26),
(3, "Kee", "Support", 81000.81, 37 ), (4,"Ram", "Biller",45500.77, 21), (5, "Hari", "Testing", 61700.51,45);
-- Asnwer :
Select * from employee where department is null; -- Employees whose department information is missing.
Select * from employee where department is not null; -- Employees whose department information is available.














