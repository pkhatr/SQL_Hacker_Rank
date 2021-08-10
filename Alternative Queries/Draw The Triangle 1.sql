-- Done Using MSSQL
DECLARE @N INT
SET @N = 20

WHILE (@N > 0)
    BEGIN
        SELECT REPLICATE('* ', @N)
        SET @N = @N - 1
    END
