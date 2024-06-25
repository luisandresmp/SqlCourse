-- Crear Tabla (CREATE)
CREATE TABLE dbo.Employees (
    EmployeeID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    BirthDate DATE,
    Position NVARCHAR(50),
    Salary DECIMAL(10, 2)
);

-- Agregar una Columna (ADD COLUMN)
ALTER TABLE dbo.Employees
ADD Email NVARCHAR(100);

-- Eliminar una Columna (DROP COLUMN)
ALTER TABLE dbo.Employees
DROP COLUMN Email;

-- Modificar el Tipo de Datos de una Columna (ALTER COLUMN)
ALTER TABLE dbo.Employees
ALTER COLUMN Salary DECIMAL(12, 2);

-- Vaciar Tabla (TRUNCATE)
TRUNCATE TABLE dbo.Employees;

-- Eliminar Tabla (DROP)
DROP TABLE dbo.Employees;