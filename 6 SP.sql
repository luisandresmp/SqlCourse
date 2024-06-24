-- Crear un Procedimiento Almacenado
CREATE PROCEDURE AddEmployee
    @FirstName NVARCHAR(50),
    @LastName NVARCHAR(50),
    @BirthDate DATE,
    @Position NVARCHAR(50),
    @Salary DECIMAL(10, 2)
AS
BEGIN
    INSERT INTO Employees (FirstName, LastName, BirthDate, Position, Salary)
    VALUES (@FirstName, @LastName, @BirthDate, @Position, @Salary);
END;

-- Para ejecutar el procedimiento almacenado:
EXEC AddEmployee 'Alice', 'Brown', '1992-03-15', 'Analyst', 62000.00;