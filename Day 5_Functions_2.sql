/* Scenario 1
Question : A company's HR department wants to know the total salary expense paid to all employees every month. 
Write a SQL query to generate the required report. */
Create Database Employee_Salary; use Employee_Salary;
Create table Employee (EMPID int, Empname Varchar(5), Department varchar(8), Salary decimal (8,2));
Insert into Employee (EmpID, EmpName, Department, Salary) values (101,"John","IT",50000.00), (102,"Mary","HR",35000.13),
(103,"David","Finance", 60000.53),(104,"Sam","IT",45000.86),(105,"Priya","HR",40000.18);
-- Answer : 
Select sum(Salary) from Employee;

/* Scenario 2
Question : A training institute wants to calculate the average marks scored by all students in the SQL course. 
Write a SQL query to display the average marks. */
Create database Std_Average_Mark; use Std_Average_Mark;
Create Table Students (StudentID int, StudentName varchar(50), Course Varchar(30), Marks int);
Insert into Students (StudentID, StudentName, Course, Marks) values (1, "Rahul", "SQL", 84), (2, "Priya", "Python", 35),
(3, "Arun", "Power BI", 60), (4, "Sneha", "Java", 99), (5, "Karthik", "SQL", 49);
-- Answer : 
Select avg(Marks) from Students;

/* Scenario 3
Question : An e-commerce company wants to identify the most expensive product and the least expensive product available in its inventory. 
Write a SQL query to generate the report. */
Create database Product_Information; Use product_Information;
Create table Product(ProductID int, ProductName varchar(50), Price Int);
Insert into Product (ProductID, ProductName, Price) values (101, "Laptop", 60000), (102, "Mouse", 800), (103, "Keyboard", 1200),
(104, "Monitor", 15000), (105, "Printer", 9000);
-- Answer : 
Select max(Price) from Product; -- most expensive product
Select Min(Price) from Product; -- least expensive product

/* Scenario 4 
Question : A banking application needs to know how many customers have registered in the system. 
Write a SQL query to display the total number of customer records. */
Create database Registration_Report; use Registration_Report;
Create Table CustomerCreate(CustomerID int, CustomerName Varchar (10), MobileNo varchar(13),City varchar(10));
Insert into Customer(CustomerID, CustomerName, MobileNo, City) Values (1, "John","6453453466", "Chennai"), (2, "Mary","3254663466", "Salem"),
(3, "David","9876543210", "Trichy"), (4, "Sam", "8920823673","Cbe"), (5, "priya", "79393920209","bangalore");
-- Asnwer : 
Select count(CustomerName) from Customers;

/* Scenario 5
Question : The management team wants a salary summary dashboard that displays the following information: 
• Total number of employees  • Total salary paid  • Average salary  • Highest salary  • Lowest salary 
Write a single SQL query to generate the dashboard. */
create database Company; Use Company;
Create Table Employee (EMP_ID int, Emp_Name varchar(15), Department Varchar (8), Salary Decimal (8,2));
Insert into Employee (EmpID, EmpName, Department, Salary) values (101,"John","IT",50000.00,"Chennai"), (102,"Mary","HR",35000.00,"Salem"),
(103,"David","Finance", 60000.00,"Trichy"),(104,"Sam","IT",45000.00,"Chennai"),(105,"Priya","HR",40000.00,"Banagalore");
-- Answer : 
Select count(EmpName) from Employee; -- Total number of employees
Select Sum(Salary) from Employee; -- Total salary paid
Select avg(Salary) from Employee; -- Average salary 
Select max(Salary) from Employee; -- Highest salary
Select min(Salary) from Employee; -- Lowest salary
