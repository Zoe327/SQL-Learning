/* list the longest title of each type along with the runtime minuetes*/

SELECT type, primary_title, MAX(runtime_minutes)
FROM titles
GROUP BY type
ORDER BY type ASC, primary_title ASC;

