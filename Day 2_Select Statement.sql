/* Scenario 1
Question : The result should display all five employee records along with EmpID, EmpName, Department, 
Salary, and City. */
Create Database Employee_Directory_Report; use Employee_Directory_Report;
Create table Employee (EMPID int, Empname Varchar(5), Department varchar(8), Salary Int, City varchar(10));
Insert into Employee (EmpID, EmpName, Department, Salary, City) values (101,"John","IT",50000,"Chennai"), (102,"Mary","HR",35000,"Salem"),
(103,"David","Finance", 60000,"Trichy"),(104,"Sam","IT",45000,"Chennai"),(105,"Priya","HR",40000,"Banagalore");
-- Answer : 
Select * from Employee

/* Scenario 2
Question : The result should display five rows containing only the EmpName and Salary columns for all employees. */
Create Database Finance_Salary_Report; use Finance_Salary_Report;
Create table Employee (EMPID int, Empname Varchar(5), Department varchar(8), Salary Int, City varchar(10));
Insert into Employee (EmpID, EmpName, Department, Salary, City) values (101,"John","IT",50000,"Chennai"), (102,"Mary","HR",35000,"Salem"),
(103,"David","Finance", 60000,"Trichy"),(104,"Sam","IT",45000,"Chennai"),(105,"Priya","HR",40000,"Banagalore");
-- Answer : 
select EmpName, Salary from Employee;

/* Scenario 3
Question : The result should display only three department names: IT, HR, and Finance, with no duplicate values. */
Create Database  Department_List; use Department_List;
Create table Employee (EMPID int, Empname Varchar(5), Department varchar(8), Salary Int, City varchar(10));
Insert into Employee (EmpID, EmpName, Department, Salary, City) values (101,"John","IT",50000,"Chennai"), (102,"Mary","HR",35000,"Salem"),
(103,"David","Finance", 60000,"Trichy"),(104,"Sam","IT",45000,"Chennai"),(105,"Priya","HR",40000,"Banagalore");
-- Answer
Select distinct Department from Employee;

/* Scenario 4
Question : The result should display four unique city names: Chennai, Bangalore, Hyderabad, and Madurai. */
Create Database  Employee_Cities; use Employee_Cities;
Create table Employee (EMPID int, Empname Varchar(5), Department varchar(8), Salary Int, City varchar(10));
Insert into Employee (EmpID, EmpName, Department, Salary, City) values (101,"John","IT",50000,"Chennai"), (102,"Mary","HR",35000,"Salem"),
(103,"David","Finance", 60000,"Trichy"),(104,"Sam","IT",45000,"Chennai"),(105,"Priya","HR",40000,"Banagalore");
-- Answer
select distinct city from employee;

/* Scenario 5
Questions : The result should display only the first three employee records from the Employee table as a preview.*/
Create Database  Employee_Cities; use Employee_Cities;
Create table Employee (EMPID int, Empname Varchar(5), Department varchar(8), Salary Int, City varchar(10));
Insert into Employee (EmpID, EmpName, Department, Salary, City) values (101,"John","IT",50000,"Chennai"), (102,"Mary","HR",35000,"Salem"),
(103,"David","Finance", 60000,"Trichy"),(104,"Sam","IT",45000,"Chennai"),(105,"Priya","HR",40000,"Banagalore");
-- Answer
Select * from Employee Limit 3;
