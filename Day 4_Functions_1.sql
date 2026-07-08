/* Scenario 1
Question : A company stores employee names in different formats such as lowercase, uppercase, and mixed 
case. The HR department wants a report where all employee names are displayed in uppercase.  
Write a SQL query to generate the required report. */
create database Company; Use Company;
Create Table Employee (EMP_ID int, Emp_Name varchar(15), Department Varchar (8), Salary Decimal (8,2));
Insert into Employee (EmpID, EmpName, Department, Salary) values (101,"John","IT",50000.00,"Chennai"), (102,"Mary","HR",35000.00,"Salem"),
(103,"David","Finance", 60000.00,"Trichy"),(104,"Sam","IT",45000.00,"Chennai"),(105,"Priya","HR",40000.00,"Banagalore");
-- Answer : 
Select Emp_ID, upper(Emp_Name), Department, Salary from Employee;

/* Scenario 2
An online shopping company stores product prices with decimal values. 
Question : The finance team wants to generate a report showing: 
• Original Price  • Rounded Price  • Ceiling Price  • Floor Price 
Write a SQL query to generate the report. */
create database Product_Price; Use Product_Price;
Create Table Product (Product_ID int, Product_Name varchar(15), Price Decimal (8,2));
Insert into Product (Product_ID, Product_Name, Price) values (101,"Mobile",50000.62), (102,"Keyboard",35000.35),
(103,"Laptop", 60000.21),(104,"Ipad",45000.83),(105,"TV",40000.09);
-- Answer : 
Select price from product; -- Original Price
Select round(Price) from product; -- Rounded Price
Select Ceil(Price) from product; -- Ceiling Price
Select floor(Price) from product; -- Floor Price

/* Scenario 3
The HR department wants to analyze employee joining details. 
Generate a report displaying: 
• Employee Name  • Joining Date  • Joining Year  • Joining Month  • Joining Day 
Write a SQL query to produce the report.*/
create database Employee_Reports; Use Employee_Reports;
Create Table Employee (EMP_ID int, Emp_Name varchar(15), Department Varchar (8), Joining_Date Date);
Insert into Employee (EmpID, Emp_Name, Department, Joining_Date) values (101,"John","IT",2024-07-01), (102,"Mary","HR", 2022-03-12),
(103,"David","Finance", 2025-01-01),(104,"Sam","IT",2023-01-18),(105,"Priya","HR",2026-06-01);
-- Answer : 
Select Emp_name from Employee; -- Employee Name
Select date (Joining_Date) from Employee; -- Joining Date
Select year(Joining_Date) from Employee; -- Joining Year
Select Month(Joining_Date) from Employee; -- Joining Month
Select Day(Joining_Date) from Employee; -- Joining Day

/* Scenario 4
A customer database contains NULL values in mobile numbers and email addresses. 
Question : The customer support team wants a report where NULL values are replaced with appropriate
display values without modifying the original data. 
Write a SQL query to generate the report. */
create database Customer_Information; use Customer_Information;
Create Table Customer (CustomerID int, CustomerName varchar(10), MobileNo Int, Email varchar(25));
Insert into Customer (CustomerID, CustomerName, MobileNo, Email) values (1,"John",987654321,2024-07-01, "John@gmail.com"), (2,"Mary",8765432109, 2022-03-12),
(3,"David",097643356),(4,"Sam",988687565, "Sam@gmail.com"),(5,"Priya",565875879);
-- Answer : 
Select Email, ifnull(Email, "Unknown") from Customer;

/* Scenario 5














