--Easy-Level Tasks
--1
SELECT TOP 5 *
FROM Employees;
--2
SELECT DISTINCT Category
FROM Products;
--3
SELECT *
FROM Products
WHERE Narx > 100
--4
SELECT * FROM Customers
WHERE Ism LIKE 'A%'
--5
SELECT * FROM Products
ORDER BY Price ASC
--6
SELECT * FROM employees
WHERE Salary >= 60000 AND Departament = 'HR'
--7
SELECT ISNULL(Email, 'noemail@example.com') AS Email, *
FROM Employees
--8
SELECT * FROM Products
WHERE Price BETWEEN 50 AND 100
--9
SELECT DISTINCT Category, ProductName
FROM Products
--10
SELECT DISTINCT Category, ProductName
FROM Products
ORDER BY ProductName DESC
--Medium-Level Tasks
--11
SELECT TOP 10 *
FROM Products
ORDER BY Price DESC
--12
SELECT FirstName, LastName,
COALESCE(FirstName, LastName) AS Name 
FROM Employees
--13
SELECT Category, Price
FROM Products
--14
SELECT * FROM Employees
WHERE Age BETWEEN 30 AND 40 AND Department= 'Marketing';
--15
SELECT *
FROM Employees
ORDER BY Salary DESC
OFFSET 10 ROWS FETCH NEXT 10 ROWS ONLY;
--16
SELECT *
FROM Products
WHERE Price <= 1000 AND Stok > 50
ORDER BY Stok ASC;
--17
SELECT *
FROM Products
WHERE ProductName LIKE '%e%';
--18
SELECT *
FROM Employees
WHERE Section IN ('HR', 'IT', 'Finance');
--19
SELECT *
FROM customers
ORDER BY Cityr ASC, PostalCode DESC
--Hard-Level Tasks
--20
SELECT TOP 5 *
FROM Orders
ORDER BY SalesAmount DESC
--21
SELECT CONCAT(FirstName, ' ', LastName) AS FullName
FROM Employees
--22
SELECT DISTINCT Category, ProductName, Price
FROM Category
WHERE Price > 50;
--23
SELECT *
FROM Products
WHERE Price >= (SELECT AVG(Price) * 0.9 FROM Products)
--24
SELECT *
FROM Employees
WHERE Age < 30
  AND Category IN ('HR', 'IT');
  --25
  SELECT *
FROM Customers
WHERE Email LIKE '%@gmail.com';
--26
SELECT *
FROM Employees
WHERE Salary > ALL (SELECT Salary FROM Employees WHERE Category = 'Trade');
--27
SELECT *
FROM Orders
WHERE Date BETWEEN DATEADD(DAY, -180, GETDATE()) AND GETDATE();
