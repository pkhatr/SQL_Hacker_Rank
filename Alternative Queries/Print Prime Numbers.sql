-- DONE IN MSSQL
DECLARE @UPPER INT = 3
DECLARE @RES VARCHAR(1000) = '2'

WHILE (@UPPER < = 1000)
    BEGIN
        DECLARE @N INT = 2
        WHILE (@N < @UPPER)
            BEGIN
                IF @UPPER % @N = 0
                    BREAK;
                SET @N = @N + 1
                IF @N = @UPPER
                    SET @RES = CONCAT(@RES, '&', @UPPER)
            END
        SET @UPPER = @UPPER + 1
    END
PRINT @RES;
