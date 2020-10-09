/*list all distinct genres and the number of titles associated with them*/

WITH RECURSIVE split(genre, rest) AS (
  SELECT '', genres || ',' 
  FROM titles 
  WHERE genres IS NOT null 
   UNION ALL
  SELECT substr(rest, 0, instr(rest, ',')),
         substr(rest, instr(rest, ',')+1)
    FROM split
   WHERE rest != ''
)

SELECT genre, count(*) as cnt
  FROM split 
 WHERE genre != ''
 GROUP BY genre
 ORDER BY cnt DESC;
