/*list top 10 dubbed titles with the number of dubs*/

WITH dubs AS (
SELECT title_id, COUNT(*) AS nums 
FROM akas 
GROUP BY title_id 
ORDER BY nums DESC,title_id 
LIMIT 10
)

SELECT titles.primary_title, dubs.nums
FROM dubs
JOIN titles
ON titles.title_id == dubs.title_id
 ORDER BY dubs.nums DESC;

