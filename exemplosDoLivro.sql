
USE TSQL2012;

-- capitulo 1
SELECT country FROM HR.Employees;
SELECT DISTINCT country FROM HR.Employees;
SELECT empid, lastname, * FROM HR.Employees;
SELECT empid, lastname FROM HR.Employees ORDER BY empid;
SELECT empid, lastname FROM HR.Employees ORDER BY 1; -- coluna começa com 1
SELECT empid, firstname + ' ' + lastname AS fullname FROM HR.Employees ;
SELECT distinct custid, YEAR(orderdate) FROM Sales.Orders ORDER BY 1, 2;

-- usando clausula de agregação
SELECT country, YEAR(hiredate) AS yearHired, COUNT(*) AS numEmployees
FROM HR.Employees
WHERE hiredate >= '20030101'
GROUP BY country, YEAR(hiredate)
HAVING COUNT(*) > 1
ORDER BY country , yearhired DESC;

SELECT country, YEAR(hiredate) AS yearhired
FROM HR.Employees
WHERE YEAR(hiredate) >= 2003;


SELECT country, YEAR(hiredate) AS yearhired, COUNT(*) AS numemployees
FROM HR.Employees
WHERE hiredate >= '20030101'
GROUP BY country, YEAR(hiredate)
HAVING COUNT(*) > 1
ORDER BY country , yearhired DESC;

SELECT shipperid, SUM(freight) AS totalfreight
FROM Sales.Orders
WHERE freight > 20000.00
GROUP BY shipperid;


SELECT shipperid, SUM(freight) AS totalfreight
FROM Sales.Orders
GROUP BY shipperid
HAVING SUM(freight) > 1000.00;








