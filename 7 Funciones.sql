-- Crear una Función Escalar
CREATE FUNCTION CalculateBonus (@Salary DECIMAL(10, 2))
RETURNS DECIMAL(10, 2)
AS
BEGIN
    DECLARE @Bonus DECIMAL(10, 2);
    SET @Bonus = @Salary * 0.10;
    RETURN @Bonus;
END;

-- Para utilizar la función:
SELECT FirstName, LastName, Salary, dbo.CalculateBonus(Salary) AS Bonus
FROM Employees;