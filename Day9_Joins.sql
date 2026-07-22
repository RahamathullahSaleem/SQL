/* Scenario 1
The HR department wants to generate a report showing employee details along with their department names. 
Question : Display the Employee ID, Employee Name, Department Name, and Salary for employees who are assigned to a valid department. 
Sort the report by Salary in descending order. */
Create Database Employee_Reports; use Employee_Reports;
Create Table Employee (Emp_ID INT PRIMARY KEY, Emp_Name VARCHAR(30), Department_ID INT, Salary DECIMAL(10,2) ); 
INSERT INTO Employee VALUES (101,'John',1,45000), (102,'Alice',2,55000), (103,'David',3,60000), (104,'Ravi',4,50000), 
(105,'Meena',2,40000), (106,'Karthik',5,65000);
CREATE TABLE Department ( Department_ID INT PRIMARY KEY, Department_Name VARCHAR(30) ); 
INSERT INTO Department VALUES (1,'Sales'), (2,'HR'), (3,'Finance'), (4,'IT'), (6,'Marketing');
-- Answer : 
Select E.Empname,E.salary, D.DepartmentName from Employee E inner join department D on 
E.employeeint = D.departmentint order by E.salary desc;

/* Scenario 2
An online shopping company wants to identify customers who have registered on the website but have not placed any orders. 
Question : Display the Customer ID, Customer Name, City, and Order ID. 
Arrange the result in ascending order of Customer Name. */
Create database Customers_Orders; Use Customers_Orders;
Create table Customer(CustomerID Int primary key, CustomerName varchar(10),City varchar(10));
Insert into Customer values (1,"Steve", "Salem"), (2,"Theo","Chennai"),(3,"Alice","Trichy"),(4,"John","Coimbatore");
Create table orders (orderID int, CustomerID int,OrderDate date,orderamt int);
insert into Orders values (1,1,2024-06-06,24000),(2,2,2025-01-08,18000), (3,3,2026-09-11,7000);
-- Answer
Select C.customerID,C.CustomerName,C.City,O.orderID from Customer C left join orders O on 
C.CustomerID = O.customerID where orderID is null order by C.customername;

/* Scenario 3 
The management wants to identify departments that currently have no employees assigned. 
Question : Display the Department ID, Department Name, Employee ID, and Employee Name. 
Sort the result by Department Name. */
Create Database Employee_Reports; use Employee_Reports;
Create Table Employee (Emp_ID INT PRIMARY KEY, Emp_Name VARCHAR(30), Department_ID INT, Salary DECIMAL(10,2) ); 
INSERT INTO Employee VALUES (101,'John',1,45000), (102,'Alice',2,55000), (103,'David',3,60000), (104,'Ravi',4,50000), 
(105,'Meena',2,40000), (106,'Karthik',5,65000);
CREATE TABLE Department ( Department_ID INT PRIMARY KEY, Department_Name VARCHAR(30) ); 
INSERT INTO Department VALUES (1,'Sales'), (2,'HR'), (3,'Finance'), (4,'IT'), (6,'Marketing');
-- Answer : 
Select D.Department_ID, E.Emp_Name,E.Emp_ID from Employee E Right Join Department D on
E.departmentID = D.departmentID;

/* Scenario 4
An inventory management team wants to compare the Product Master table with the 
Warehouse Stock table. 
Generate a report containing: 
• Products available in both tables 
• Products available only in the Product Master 
• Products available only in the Warehouse Stock 
Display the Product ID, Product Name, Warehouse Quantity. Sort the report by Product ID. */
Create database Product_Inventory; Use Product_Inventory;
Create table Product_Master(ProductID int primary key, ProductName Varchar(10));
Insert into Product_Master Values (1,"Mouse"),(2,"Keyboard"),(3,"Moniter"), (4,"CPU"),(5,"harddisk");
Create table Warehouse_Stock(ProductID int,Quantity int);
Insert into Product_Master Values (1,5),(2,24),(3,8),(4,18),(5,2);
-- Answer
Select P.productID, P.ProductName,W.Quantity from Product_Master P left join Warehouse_Stock W on
P.productID = W.productID order by productID desc; -- • Products available only in the Product Master 
Select P.productID, P.ProductName,W.Quantity from Product_Master P Right join Warehouse_Stock W on
P.productID = W.productID order by productID desc; -- • Products available only in the Warehouse Stock
Select P.productID, P.ProductName,W.Quantity from Product_Master P left join Warehouse_Stock W on
P.productID = W.productID union all
Select P.productID, P.ProductName,W.Quantity from Product_Master P Right join Warehouse_Stock W on
P.productID = W.productID order by productID desc; -- Products available in both tables 

/* Scenario 5 
A company wants to generate an organization hierarchy report. 
Question : Display each Employee Name along with their Reporting Manager Name. Include employees even if they do not have a manager. 
Sort the report alphabetically by Employee Name. */
Create Database Employee_Reports; use Employee_Reports;
Create Table Employee (Emp_ID INT PRIMARY KEY, Emp_Name VARCHAR(30), Department_ID INT, ManagerID int ); 
INSERT INTO Employee VALUES (101,'John',1,201), (102,'Alice',2,202), (103,'David',3,203), (104,'Ravi',4,204), 
(105,'Meena',2,206), (106,'Karthik',5,206);
-- Answer
select E.emp_name  from employee E Left join manager M on E.emp_ID = M. managerID
order by emp_name;