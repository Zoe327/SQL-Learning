/*which decades saw the most number of titles getting premiered*/

SELECT CAST(premiered/10*10 AS TEXT)||'s' AS decade, COUNT(*) AS total
FROM titles
WHERE premiered is not null 
GROUP BY decade
ORDER BY total DESC;

