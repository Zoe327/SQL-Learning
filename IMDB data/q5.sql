/*list the decades and the percentage of titles which premiered in that decade*/
SELECT 
CAST(premiered/10*10 AS TEXT)||'s' AS decade,
ROUND(CAST(COUNT(*) AS REAL)/ (SELECT COUNT(*) FROM titles)*100, 4) AS percentage
FROM titles 
WHERE premiered is not null
GROUP BY decade
ORDER BY percentage DESC;

