-- Crear una Vista
CREATE VIEW dbo.HighSalaryEmployees AS
SELECT EmployeeID, FirstName, LastName, Position, Salary
FROM dbo.Employees
WHERE Salary > 60000.00;

-- Puedes utilizar la vista como si fuera una tabla:
SELECT * FROM dbo.HighSalaryEmployees;