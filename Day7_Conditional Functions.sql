/* Scenario 1
Question : A training institute wants to generate a student result report. 
Students who score 50 or above should be displayed as "Pass", and students scoring below 50 should be displayed as "Fail". 
Write a SQL query to generate the report. */
Create database Student_Result; use Student_Result;
Create table Student(StudentID int, Studentname Varchar(8), Course Varchar(10), Mark Int);
Insert into student (studentID, StudentName, Course, Mark) Values (201, "Ravi", "CS", 82), (202, "Ram", "BA Eng", 43),
(203, "Theo", "Bsc. Maths", 33), (204, "Joe", "B.com",27), (205, "Steve", "BCA",66);
-- Answer : 
Select StudentID,StudentName, If (Mark <= 50, "Pass", "Fail") as student_result_report from student;

/* Scenario 2
Question : The HR department wants to identify employees eligible for a yearly bonus. 
Employees with a salary of ₹60,000 or more should be displayed as "Bonus Eligible"; all others should be displayed as "Not Eligible". 
Write the SQL query. */
Create database Employee_Bonus; Use Employee_Bonus;
Create Table Employee (EmpID int, EmpName Varchar (10), Department varchar (10), Salary decimal(8,2));
Insert into employee (EmpID, EmpName, Department, Salary) Values (1, "Hari", "HR", 20000.68), (2, "Rupan", "Developer", 93000.79),
(3, "Kee", "Support", 81000.81), (4,"Ram", "Biller",45500.77), (5, "Hari", "Testing", 61700.51);
-- Asnwer :
select Empname, salary, Case  when Salary >= 60000 then Eligible Else not eligible end from employee;

/* Scenario 3
An online shopping company wants to classify customers based on their total purchase amount. 
Question : Customers meeting the company's purchase criteria should be displayed as "Premium Customer", otherwise display "Regular Customer". 
Write the SQL query.*/
Create database Customer_Premium_Status; use Customer_Premium_Status;
Create table Customer (CustomerID int, CustomerName varchar(8), City Varchar(8), Purchase_Amount Decimal(7,2));
Insert into Customer (CustomerID, CustomerName,City,Purchase_Amount)
Values (1,"Ravi", "Chennai", 20000.63), (2,"Joe","Banaglore",14300.21),(3,"Steve", "Salem",49300.89),(4,"Theo","Trichy",38900.16),
(5, "Shruthi","Coimbatore",72499.09);
-- Answer
Select CustomerID, Customername, Case when Purchase_Amount > 20000 then "Premium Customer" Else "Regular Customer"end from the Customer;

/* Scenario 4 
An inventory management system wants to display the stock status of every product. 
Question : Products satisfying the company's stock condition should display "In Stock", otherwise display "Out of Stock".
Write the SQL query. */
Create database Product_Report ; use Product_Report;
Create Table Product(ProductID INt, productName varchar (10), Category varchar(10), Stock_Quantity int);
Insert into Product(ProductID, ProductName, Category, Stoock_Quantity) Values (1, "Bottle", "Silver", 10),
(2,"Cup","Plastic",14), (3,"Plate", "Copper",8),(4,"spoon","Glass",18), (5, "Bowl", "Ceramic", 4);
-- Answer : 
Select ProductName, case when Stock_Quantity > 10 then "Out of Stock" Else "In Stock" end from Product;

/* Scenario 5 
The HR department wants to classify employee performance into multiple levels based on their performance score. 
Generate the report according to the company's performance policy. 
Write the SQL query. */
Create database Employee_Performance; Use Employee_Performance;
Create Table Employee (EmpID int, EmpName Varchar (10), Department varchar (10), performance_Score int);
Insert into employee (EmpID, EmpName, Department, Salary) Values (1, "Hari", "HR", 31), (2, "Rupan", "Developer", 91),
(3, "Kee", "Support", 62), (4,"Ram", "Biller",46), (5, "Hari", "Testing", 60);
-- Asnwer :
Select employeename, case 
when performance_Score >= 90 then "3th level" when performance_Score >= 60 then "2th Level"
when performance_Score >= 35 then "1st level" else "poor performance" end from employee; 

/* Scenario 6
A university wants to classify students into different scholarship categories based on their semester marks. 
Question : Generate the scholarship report according to the university's scholarship rules. 
Write the SQL query. */
Create database Student_Result; use Student_Result;
Create table Student(StudentID int, Studentname Varchar(8), Course Varchar(10), Mark Int);
Insert into student (studentID, StudentName, Course, Mark) Values (201, "Ravi", "CS", 82), (202, "Ram", "BA Eng", 43),
(203, "Theo", "Bsc. Maths", 33), (204, "Joe", "B.com",27), (205, "Steve", "BCA",66);
-- Answer : 
Select StudentName, case 
when Mark >= 80 then "scholarship 5000" when Mark >= 60 then "scholarship 3500"
when Mark >= 35 then "scholarship 1500" else "Not eligible for scholarship" end from Student; 

/* Scenario 7 
A bank wants to classify loan applications into different approval categories based on the applicant's monthly income. 
Generate the loan approval report according to the bank's business policy. 
Write the SQL query. */
Create database Approval_Status; use Approval_Status;
Create Table Loan_Application (Application_ID int, CustomerName Varchar (10), Monthly_Income decimal(7,2), Loan_Amount decimal(8,2));
Insert into Loan_Application (Application_ID,CustomerName,Monthly_Income,Loan_Amount)
Values (1,"Steve",68000.23,800000.39),(2,"Theo",20000.01,200000.32),(3,"Jhon",38000.65,500000.61),(4,"Arya",14000.20,250000.74),
(5,"George",26500.95,473000.00);
-- Answer : 
Select CustomerName, case when Monthly_Income < 25000 then "Eligible 200000"
When Monthly_Income < 40000 then "Eligible 500000" When Monthly_Income < 60000 then "Eligible 800000" end from Loan_Application;

/*Scenario 8
An e-commerce company wants to classify products into different discount categories based on their selling price. 
Question : Generate the discount category report according to the company's pricing policy. 
Write the SQL query. */
Create database Product_Discount; use Product_Discount;
Create Table Product(ProductID INt, productName varchar (10), Category varchar(10), Price int);
Insert into Product(ProductID, ProductName, Category, Stoock_Quantity) Values (1, "Bottle", "Silver", 250),
(2,"Cup","Plastic",80), (3,"Plate", "Copper",535),(4,"spoon","Glass",400), (5, "Bowl", "Ceramic", 650);
-- Answer : 
select ProductID,productname,case when price >500 then "Discount 50%" when price > 200 then "Discount 20%"
Else "no Discount" end from product;

/* Scenario 9 
A hospital wants to categorize patients based on their health score into different treatment priority levels. 
Question : Generate the patient priority report according to the hospital's treatment policy. 
Write the SQL query. */
Create database patient_reports; use patient_reports;
Create table patient (PatientID int, PatientName Varchar(10),Age Int,HealthScore int);
Insert into patient (patientID,PatientName,Age,Healthscore) Values (1,"steve",24,78),(2,"Theo",43,56),
(3,"John",61,44),(4,"Joe",61,78),(5,"George",18,94);
-- Answer
Select patientname, If(Healthscore > 50, "High priority","Normal") from Patient;

/* Scenario 10
Scenario 
The Finance department wants to classify employees into different salary bands based on their monthly salary. 
Question : Generate the salary band report according to the company's salary classification policy. 
Write the SQL query. */
Create database Employee_Salary_Band; Use Employee_Salary_Band;
Create Table Employee (EmpID int, EmpName Varchar (10), Department varchar (10), Salary decimal(8,2));
Insert into employee (EmpID, EmpName, Department, Salary) Values (1, "Hari", "HR", 20000.68), (2, "Rupan", "Developer", 93000.79),
(3, "Kee", "Support", 81000.81), (4,"Ram", "Biller",45500.77), (5, "Hari", "Testing", 61700.51);
-- Asnwer :
 Select Empname, Case when Salary < 70000 then "Maximum" when Salary < 40000 then "Midpoint" else "Minimun"












