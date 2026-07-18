/* 	Scenario 1
The HR department wants to identify departments where the average employee salary is greater than the company's salary benchmark is ₹60,000. 
Quetion : Display the Department and its Average Salary. 
Sort the result by Average Salary in descending order and display only the top 3 departments. */
Create database Salary_Analysis; Use Salary_Analysis;
Create Table Employee (EmpID int, EmpName Varchar (10), Department varchar (10), Salary decimal(8,2));
Insert into employee (EmpID, EmpName, Department, Salary) Values (1, "Hari", "HR", 20000.68), (2, "Rupan", "Developer", 93000.79),
(3, "Kee", "Support", 81000.81), (4,"Ram", "Biller",45500.77), (5, "Hari", "Testing", 61700.51);
-- Asnwer :
Select Empname, Department, avg(department) as average_Salary from employee order by average_Salary desc limit 3;

/* Scenario 2 
An e-commerce company wants to identify the top-selling products. 
Question : Display each Product Category along with the total quantity sold. 
Only display categories that have sold more than the company's minimum sales requirement 100 units. 
Sort the result from highest to lowest quantity sold and display only the top 5 categories. */
Create database Top_Performing_Products ; use Top_Performing_Products;
Create Table Product(ProductID INt, productName varchar (10), Category varchar(10), Stock_Quantity int);
Insert into Product(ProductID, ProductName, Category, Stoock_Quantity) Values (1, "Bottle", "Silver", 10),
(2,"Cup","Plastic",14), (3,"Plate", "Copper",8),(4,"spoon","Glass",18), (5, "Bowl", "Ceramic", 4);
-- Answer : 
Select Productname, min(Stock_Quantity) from product order by Stock_Quantity Limit 5;

/* Scenario 3 
A retail company wants to prepare a customer purchase report. 
Display only customers whose purchase amount satisfies the company's Purchase_Amount ≥ ₹25,000. 
Remove duplicate city names in the report and display the customers in ascending alphabetical order. */
Create database purchase_report; use purchase_report;
Create Table Customer (CustomerID int, CustomerName varchar(8), City varchar(10), Purchase_amount decimal (8,2)); 
Insert into Custmer(CustomerID,CustomerName, City,Purchase_amount ) values((201, "Ravi", "Salem", 26800.10), (202, "Ram", "Trichy", 18620.22),
(203, "Theo", "Chennai", 5211.91), (204, "Joe", "Coimbatore",48102.91), (205, "Steve", "Banaglore",72000.19));
-- Answer : 
select DISTINCT Customername, City FROM Customers where Purchase_Amount >= 25000 order by City ;

/* Scenario 4
A hospital wants to analyze the number of patients treated in each department. Display the Department Name and Total Patients. 
Question : Show only those departments that have treated more than the hospital's required More than 3 patients. 
Sort the result based on the total number of patients in descending order. */
Create database Hopital_patient_reports; use Hopital_patient_reports;
Create table patient (PatientID int, PatientName Varchar(10),Department varchar(10),TreatmentCost int);
Insert into patient (patientID,PatientName,Department,TreatmentCost) Values (1,"steve","Lab",18000),(2,"Theo","Pharmacy",38000),
(3,"John","Xray",26000),(4,"Joe","Registeration",74000),(5,"George","surgery&roomstay",54800);
-- Answer :
Select Patientname, department, Count(patientName) from patient group by department
Having Patientname > 3 order by patientName desc;

/* Scenario 5

A company wants to prepare a report of employees who satisfy both the company's age criteria 
and salary criteria Age ≥ 30 and Salary ≥ ₹60,000. 
Question : Display the employee details, arrange the report by Salary in descending order, and return only the top 5 employees. */
Create database Employee_Report; Use Employee_Report;
Create Table Employee (EmpID int, EmpName Varchar (10), Department varchar (10), Salary decimal(8,2), Age int);
Insert into employee (EmpID, EmpName, Department, Salary) Values (1, "Hari", "HR", 20000.68, 26), (2, "Rupan", "Developer", 93000.79, 37),
(3, "Kee", "Support", 81000.81, 31), (4,"Ram", "Biller",45500.77, 24), (5, "Hari", "Testing", 61700.51, 41);
-- Asnwer :
Select Empname from employee where age >= 30 and salary >= 60000 order by salary desc limit 5;