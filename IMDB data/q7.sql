/*IMDB top 250 moves along with weighted rating*/

WITH 
ar(C) AS (SELECT SUM(rating*votes)/SUM(votes) FROM ratings JOIN titles ON titles.title_id == ratings.title_id AND titles.type == 'movie'),

mv(m) AS (SELECT 25000.0)

SELECT primary_title,(votes/ (votes + m))*rating +  (m / (votes+m))*C AS weighted_rating
FROM ratings, ar, mv
JOIN titles
ON titles.title_id == ratings.title_id AND titles.type == 'movie'
ORDER BY weighted_rating DESC 
LIMIT 250;

