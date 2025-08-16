--Basic-Level Tasks (10)
--1
CREATE TABLE Employees (EmpID INT, Name VARCHAR(50), Salary DECIMAL(10,2));
select * from Employees
--2
INSERT INTO Employees (EmpID, Name, Salary) VALUES (1, 'Ali', 5000.00);

INSERT INTO Employees (EmpID, Name, Salary) VALUES (2, 'Dilnoza', 6000.00);
select * from Employees
INSERT INTO Employees (EmpID, Name, Salary) VALUES (3, 'Javlon', 5500.00), (4, 'Malika', 6500.00);
select * from Employees
--3
UPDATE Employees SET Salary = 7000
WHERE EmpID = 1
select * from Employees
--4
DELETE FROM Employees
WHERE EmpID = 2
select * from Employees
--5
DELETE – ma’lumotlarni satrma-satr o‘chiradi, shart qo‘yish mumkin (WHERE). Jadvalning tuzilishi saqlanib qoladi
TRUNCATE – jadvaldagi barcha yozuvlarni birdaniga o‘chiradi, lekin tuzilishi qoladi (tezroq ishlaydi)
DROP – jadvalni butunlay o‘chiradi (hamma ma’lumot va strukturasi bilan)
--6
ALTER TABLE Employees ALTER COLUMN Name VARCHAR(100)
select * from Employees
--7
ALTER TABLE Employees ADD Department VARCHAR(50)
select * from Employees
--8
ALTER TABLE Employees ALTER COLUMN Salary FLOAT
--9
CREATE TABLE Departments (DepartmentID INT PRIMARY KEY, DepartmentName VARCHAR(50));
select * from Departments
--10
TRUNCATE TABLE Employees;
--Intermediate-Level Tasks (6)
--11
INSERT INTO Departments (DepartmentID, DepartmentName)
SELECT 1, 'HR' UNION ALL
SELECT 2, 'Finance' UNION ALL
SELECT 3, 'IT' UNION ALL
SELECT 4, 'Marketing' UNION ALL
SELECT 5, 'Sales';
select * from Departments
--12
UPDATE Employees
SET Department = 'Management'
WHERE Salary > 5000;
select * from Employees
--13
TRUNCATE TABLE Employees;
--14
ALTER TABLE Employees DROP COLUMN Department;
--15
EXEC sp_rename 'Employees', 'StaffMembers'
select * from StaffMembers
--16
DROP TABLE Departments;
--Advanced-Level Tasks (9)
--17
CREATE TABLE Products (ProductID INT PRIMARY KEY, ProductName VARCHAR(100), Category VARCHAR(50), Price DECIMAL(10,2), Description VARCHAR(255));
select * from Products
--18
ALTER TABLE Products ADD CONSTRAINT CHK_Price CHECK (Price > 0);
select * from Products
--19
ALTER TABLE Products ADD StockQuantity INT DEFAULT 50;
--20
EXEC sp_rename 'Products.Category', 'ProductCategory', 'COLUMN';
select * from Products
--21
INSERT INTO Products (ProductID, ProductName, ProductCategory, Price, Description)
VALUES (1, 'Laptop', 'Electronics', 1200.50, 'Gaming laptop');
INSERT INTO Products (ProductID, ProductName, ProductCategory, Price, Description)
VALUES (2, 'Phone', 'Electronics', 800.00, 'Smartphone 5G');
INSERT INTO Products (ProductID, ProductName, ProductCategory, Price, Description)
VALUES (3, 'Desk', 'Furniture', 250.75, 'Wooden office desk');
INSERT INTO Products (ProductID, ProductName, ProductCategory, Price, Description)
VALUES (4, 'Chair', 'Furniture', 120.00, 'Ergonomic chair');
INSERT INTO Products (ProductID, ProductName, ProductCategory, Price, Description)
VALUES (5, 'Headphones', 'Accessories', 90.00, 'Wireless headphones');
--22
SELECT * INTO Products_Backup FROM Products;
select * from Products_Backup
--23
EXEC sp_rename 'Products', 'Inventory';
select * from Inventory
--24
ALTER TABLE Inventory ALTER COLUMN Price FLOAT
select * from Inventory
--25
ALTER TABLE Inventory ADD ProductCode INT IDENTITY(1000,5);
