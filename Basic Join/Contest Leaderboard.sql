SELECT HID, HNAME, SUM(MS)
FROM (SELECT S.HACKER_ID AS HID, H.NAME AS HNAME, S.CHALLENGE_ID AS CID, MAX(S.SCORE) AS MS
FROM HACKERS H
INNER JOIN SUBMISSIONS S ON H.HACKER_ID = S.HACKER_ID
GROUP BY S.HACKER_ID, H.NAME, S.CHALLENGE_ID) A
GROUP BY HID, HNAME
HAVING SUM(MS) > 0
ORDER BY SUM(MS) DESC, HID ASC;
