-- Insertar Datos (INSERT)
INSERT INTO dbo.Employees (FirstName, LastName, BirthDate, Position, Salary)
VALUES ('John', 'Doe', '1985-01-15', 'Developer', 60000.00);

INSERT INTO dbo.Employees (FirstName, LastName, BirthDate, Position, Salary)
VALUES ('Jane', 'Smith', '1990-07-23', 'Designer', 55000.00);

INSERT INTO dbo.Employees (FirstName, LastName, BirthDate, Position, Salary)
VALUES ('Emily', 'Johnson', '1982-12-02', 'Manager', 75000.00);

-- Seleccionar Datos (SELECT)
SELECT * FROM dbo.Employees;

-- Actualizar Datos (UPDATE)
UPDATE dbo.Employees
SET Salary = 65000.00
WHERE EmployeeID = 1;

-- Eliminar Datos (DELETE)
DELETE FROM dbo.Employees
WHERE EmployeeID = 2;