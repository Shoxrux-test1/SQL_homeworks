
--Easy-Level Tasks (10)
--1
BULK INSERT maqsadi: Katta hajmdagi ma’lumotlarni tashqi fayldan (CSV, TXT, Excel) jadvalga tez import qilish.
--2
Import qilinadigan fayl formatlari: CSV, TXT, Excel (XLS/XLSX), XML, JSON
--3
CREATE TABLE Products ( ProductID INT PRIMARY KEY, ProductName VARCHAR(50), Narx DECIMAL(10,2));
select * from Products
--4
INSERT INTO Products (ProductID, ProductName, Narx) 
VALUES (1, 'Laotop', 1200.50);
INSERT INTO Products (ProductID, ProductName, Narx)
values (2, 'Telefon', 800.00),
(3, 'Stol', 250.75);
select * from Products
--5
NULL: qiymat berilmagan bo‘lishi mumkin. NOTT NULL: qiymat majburiy kiritilishi kerak.
--6
UNIQUE cheklov qo‘shish
ALTER TABLE Products
ADD CONSTRAINT UQ_ProductName UNIQUE (ProductName);
--7
SQL so‘rovi maqsadi: Ma’lumotlarni kiritish, o‘chirish, yangilash va tanlash uchun ishlatiladi.
--8
ALTER TABLE Products
ADD CategoryID INT;
select * from Products
--9
CREATE TABLE Categories (CategoryID INT PRIMARY KEY, CategoryName VARCHAR(50) UNIQUE);
select * from Categories
--10
IDENTITY ustunining maqsadi: Avtomatik tartib raqam berish uchun ishlatiladi.
Medium-Level Tasks 
--11 
BULK INSERT Products
FROM 'C:\data\products.csv'
WITH (FIELDTERMINATOR = ',', ROWTERMINATOR = '\n', FIRSTROW = 2);
--12
ALTER TABLE Products
ADD CONSTRAINT FK_Category FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID);
select * from Products
--13
ASOSIY KALIT va UNIKAL KALIT farqi:
PRIMARY KEY: qaytarilmas va NULL bo‘lmaydi.
UNIQUE KEY: qaytarilmas, lekin 1 ta NULL bo‘lishi mumkin.
--14
ALTER TABLE Products
ADD CONSTRAINT CHK_Narx CHECK (Narx > 0);
select * from Products
--15
ALTER TABLE Products
ADD Birja INT NOT NULL DEFAULT 0;
select * from Products
--16
SELECT ISNULL(Narx, 0) AS NewPrice
FROM Products;
select * from Products
--17
FOREIGN KEY maqsadi: Jadval orasidagi bog‘liqlikni ta’minlaydi, ma’lumotlar yaxlitligini saqlaydi.
Hard-Level Tasks
--18
CREATE TABLE Customers (CustomersID INT PRIMARY KEY, Ism VARCHAR(50), Age INT CHECK (Age >= 18));
select * from Customers
--19
CREATE TABLE Identitye (ID INT IDENTITY(100,10) PRIMARY KEY, Nomi VARCHAR(50));
select * from Identitye
--20
CREATE TABLE OrderDetails ( OrderID INT, ProductID INT, Quantity INT, PRIMARY KEY (OrderID, ProductID));
select * from OrderDetails
--21
SELECT COALESCE(Narx, 0) AS NewPrice
FROM Products;
select * from Products
--22 
CREATE TABLE Customers (EmpID INT PRIMARY KEY, Email VARCHAR(100) UNIQUE);
--23
ALTER TABLE OrderDetails
ADD CONSTRAINT FK_Order FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
ON DELETE CASCADE
ON UPDATE CASCADE;
