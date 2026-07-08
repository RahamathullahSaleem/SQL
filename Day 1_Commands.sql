/* Scenario 1
You have joined an IT company as a Database Developer. The HR team wants to maintain employee information. 
Create an Employee table and insert the given records. Later, HR asks you to display all employee details. 
Question : Display all employee records. */
Create database Developer; use developer;
create table employee (
EMPID int, EmpName varchar(50), Department varchar(30), salary int);
insert into employee(EmpID, EmpName, Department, Salary) values (101, "John", "IT", 45000), (102, "Mary", "HR", 35000),
(103, "David", "Finance", 55000), (104, "Sam", "IT", 40000), (105, "priya", "HR", 38000);
-- Answer : 
Select * from Employee;

/* Scenario 2
A college wants to maintain student details. Create a Student table and insert the following records. 
Later, the college decides to add an Email column.
Question : Modify the Student table by adding a new column called Email. */
Create database College_Students; use College_Students;
Create Table Students (StudentID int, StudentName varchar(50), Course Varchar(30));
Insert into Students (StudentID, StudentName, Course) values (1, "Rahul", "SQL"), (2, "Priya", "Python"),
(3, "Arun", "Power BI"), (4, "Sneha", "Java"), (5, "Karthik", "SQL");
-- Answer : 
Alter Table Students add Email varchar(20);

/* Scenario 3 
An online shopping company stores product information. Create a Product table and insert the following records. 
Later, the manager wants to increase the price of Product ID 103. 
Question : Update the price of Product ID 103 to 1500. */
Create database Product_Information; Use product_Information;
Create table Product(ProductID int, ProductName varchar(50), Price Int);
Insert into Product (ProductID, ProductName, Price) values (101, "Laptop", 60000), (102, "Mouse", 800), (103, "Keyboard", 1200),
(104, "Monitor", 15000), (105, "Printer", 9000);
-- Answer : 
update Product set Price = 1500 where productID = 103;

/* Scenario 4
A hospital stores patient details. Create a Patient table and insert the following records. 
Later, Patient ID 2 requests that their record be removed from the system. 
Question : Delete Patient ID 2 from the table. */
Create database Patient_details; use patient_details;
Create table patient (PatientID int, PatientName varchar (50), Disease varchar (50));
Insert Into patient (PatientID, PatientName, Disease) Values (1, "Ramesh", "Fever"), (2, "Suresh", "Cold"), (3, "Anitha", "Diabetes"),
(4, "Meena", "Asthma"), (5, "Kumar", "Typhoid");
-- Answer : 
delete from Patient where ID = 2;

/* Scenario 5
A school created a temporary table for annual event registration. After the event, 
the school wants to remove all records but keep the table for next year. 
Question : Remove all records from the table without deleting the table structure. */
create database annual_event_registration; use annual_event_registration;
Create Table Records (StudentID int, StudentName varchar(50), EventName Varchar(50));
Insert into Records (StudentID, StudentName, EventName) values (1, "Rahul", "Dance"), (2, "Priya", "Singing"), (4, "Arun", "Drawing"),
(4, "Sneha", "Quiz"), (5, "Karthik", "Drama");
-- Answer : 
truncate table records;

/* Scenario 6
The company wants to rename its existing Employee table to Staff. 
Questions : Rename the Employee table to Staff. */
Create database Company; Use company;
Create Table Employee ( EMPID int, EmpName varchar(50), Department varchar(30), salary int);
insert into employee(EmpID, EmpName, Department, Salary) values (101, "John", "IT", 45000), (102, "Mary", "HR", 35000),
(103, "David", "Finance", 55000), (104, "Sam", "IT", 40000), (105, "priya", "HR", 38000);
-- Answer : 
rename table Employee to Staff;

 /* Scenario 7
 A bank manager updates a customer's account balance. The manager wants the changes to be permanently saved in the database. 
Question : Update Account No. 1002's balance to 35000 and permanently save the changes. */
Create Database customer_account_balance; use customer_account_balance;
Create Table Account_s (AccountNo Int, CustomerName varchar(50), Balance int);
Insert into Account_s(AccountNo, CustomerName, Balance) Values (1001, "John", 50000), (1002, "Mary", 30000),
(1003, "David", 70000), (1004, "Sam", 45000), (1005, "priya", 60000);
-- Asnwer : 
update Account_s set Balance = 35000 where AccountNo = 1002;
Commit;

/* Scenario 8
A librarian accidentally deletes one book record. 
Before committing the transaction, they realize the mistake and want to restore the deleted 
record. 
Question : Delete Book ID 3 and restore it before committing the transaction.*/
Create database Book_records; use Book_records;
Create table Book(BookID int, Bookname varchar (50), Author Varchar(50));
insert into Book (BookID, Bookname, Author) Values (1, "SQL Basics", "James"), (2, "Python Guide", "Robert"), (3,"Java Programming","John"),
(4, "Power BI ", "David");
-- Answer : 
delete from Book Where ID = 3;
Rollback;

/*Scenario 9
A new employee named Student1 has joined the reporting team. 
The manager wants the employee to view employee details but should not modify any records. 
Questions : Give Student1 permission to view the Employee table only. */
Create database Company_Security; use Company_Security;
create table employee (
EMPID int, EmpName varchar(50), Department varchar(30), salary int);
insert into employee(EmpID, EmpName, Department, Salary) values (101, "John", "IT", 45000), (102, "Mary", "HR", 35000),
(103, "David", "Finance", 55000), (104, "Sam", "IT", 40000), (105, "priya", "HR", 38000);
-- Answer : 
GRANT SELECT ON Employee TO Student1;

/*Scenario 10 
A junior developer accidentally creates a table called CustomerDetails2026. 
The company decides to delete the entire table because it is no longer required. 
Question : Delete the entire table permanently from the database.  */
Create database E_Commerce; use E_Commerce;
Create Table Customerdetails2026(CustomerID int, CustomerName Varchar (10), City varchar(10));
Insert into Customerdetails2026(CustomerID, CustomerName, City) Values (1, "John", "Chennai"), (2, "Mary", "Salem"),
(3, "David", "Trichy"), (4, "Sam", "Cbe"), (5, "priya", "bangalore");
-- Asnwer : 
Drop table Customerdetails2026;



 

