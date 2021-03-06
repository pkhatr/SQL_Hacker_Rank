SET @N := 0;
SELECT COUNT(*) FROM STATION INTO @CNT;
WITH CTE AS
    (SELECT @N := @N + 1 AS ROW_NUM, LAT_N
    FROM STATION
    ORDER BY LAT_N)

SELECT ROUND(AVG(LAT_N), 4)
FROM CTE
WHERE
    CASE
        WHEN @CNT % 2 = 0 THEN ROW_NUM IN (@CNT / 2, @CNT / 2 + 1)
        ELSE ROW_NUM = CEIL(@CNT/2)
    END;
