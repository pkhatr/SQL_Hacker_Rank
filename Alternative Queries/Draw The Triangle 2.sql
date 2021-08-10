-- DONE IN MSSQL
DECLARE @N INT = 1

WHILE (@N <21)
    BEGIN
        SELECT REPLICATE('* ', @N)
        SET @N = @N + 1
    END 
