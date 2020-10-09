/*list all types of titles along with the number of associated titles*/
SELECT type, COUNT(*) AS title_count 
FROM titles 
GROUP BY type 
ORDER BY title_count ASC;
