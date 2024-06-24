-- Operadores de Comparación

-- Igualdad (=)
SELECT * FROM dbo.Employees
WHERE Position = 'Developer';

-- Desigualdad (<> o !=)
SELECT * FROM dbo.Employees
WHERE Position <> 'Manager';

-- Mayor que (>)
SELECT * FROM dbo.Employees
WHERE Salary > 60000.00;

-- Menor que (<)
SELECT * FROM dbo.Employees
WHERE BirthDate < '1990-01-01';

-- Mayor o igual que (>=)
SELECT * FROM dbo.Employees
WHERE Salary >= 60000.00;

-- Menor o igual que (<=)
SELECT * FROM dbo.Employees
WHERE BirthDate <= '1985-01-15';

-- Entre (BETWEEN)
SELECT * FROM dbo.Employees
WHERE Salary BETWEEN 50000.00 AND 70000.00;

-- En lista (IN)
SELECT * FROM dbo.Employees
WHERE Position IN ('Developer', 'Designer');

-- No en lista (NOT IN)
SELECT * FROM dbo.Employees
WHERE Position NOT IN ('Developer', 'Designer');


-- Operadores Lógicos

-- Y (AND)
SELECT * FROM dbo.Employees
WHERE Position = 'Developer' AND Salary > 50000.00;

-- O (OR)
SELECT * FROM dbo.Employees
WHERE Position = 'Developer' OR Position = 'Designer';

-- No (NOT)
SELECT * FROM dbo.Employees
WHERE NOT Position = 'Manager';

-- Combinación de AND, OR, y NOT
SELECT * FROM dbo.Employees
WHERE (Position = 'Developer' OR Position = 'Designer') AND Salary > 50000.00 AND NOT BirthDate < '1985-01-01';

-- Un ejemplo más completo que combina varios operadores:

SELECT * FROM dbo.Employees
WHERE (Position IN ('Developer', 'Designer') AND Salary BETWEEN 50000.00 AND 70000.00)
OR (Position = 'Manager' AND Salary > 70000.00)
AND BirthDate >= '1980-01-01'
AND NOT FirstName = 'John';