-- Funciones de Agregación
-- Contar Filas (COUNT)

SELECT COUNT(*) AS TotalEmployees
FROM Employees;

-- Sumar Valores (SUM)
SELECT SUM(Salary) AS TotalSalaries
FROM Employees;

-- Calcular Promedio (AVG)
SELECT AVG(Salary) AS AverageSalary
FROM Employees;

-- Valor Máximo (MAX)
SELECT MAX(Salary) AS HighestSalary
FROM Employees;

-- Valor Mínimo (MIN)
SELECT MIN(Salary) AS LowestSalary
FROM Employees;

SELECT 
	COUNT(*) AS TotalEmployees
	, SUM(Salary) AS TotalSalaries
	, AVG(Salary) AS AverageSalary
	, MAX(Salary) AS HighestSalary
	, MIN(Salary) AS LowestSalary
FROM Employees

-- GROUP BY
-- Agrupar por una Columna

SELECT Position, COUNT(*) AS NumberOfEmployees
FROM Employees
GROUP BY Position;

-- Agrupar y Agregar
SELECT Position, AVG(Salary) AS AverageSalary
FROM Employees
GROUP BY Position;

-- HAVING
-- Usar HAVING con GROUP BY

SELECT Position, AVG(Salary) AS AverageSalary
FROM Employees
GROUP BY Position
HAVING AVG(Salary) > 60000.00;

-- ORDER BY
-- Ordenar Resultados en Orden Ascendente
SELECT * FROM Employees
ORDER BY LastName ASC;

-- Ordenar Resultados en Orden Descendente
SELECT * FROM Employees
ORDER BY Salary DESC;

-- Combinación de GROUP BY, HAVING y ORDER BY
-- Agrupar, Filtrar y Ordenar

SELECT 
	Position, COUNT(*) AS NumberOfEmployees, 
	AVG(Salary) AS AverageSalary -- Promedio del sueldo
	
FROM Employees
WHERE 1=1

--RECOMENDACION:
--AND Position IN ('Manager', 'Developer')

--NO ES RECOMENDABLE:
--AND Position='Manager'
--AND Position='Developer'

GROUP BY Position
HAVING COUNT(*) > 0
ORDER BY AverageSalary DESC;

-- Ejemplo Completo
SELECT Position, COUNT(*) AS NumberOfEmployees, SUM(Salary) AS TotalSalary, AVG(Salary) AS AverageSalary, MAX(Salary) AS HighestSalary, MIN(Salary) AS LowestSalary
FROM Employees
GROUP BY Position
HAVING AVG(Salary) > 50000.00
ORDER BY TotalSalary DESC;