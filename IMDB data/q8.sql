/*total number of actors/actresses who appeared in any title with MARK Hamill born in 1951*/

WITH hamill_movies AS (
SELECT title_id 
FROM crew 
WHERE person_id == (SELECT person_id FROM people WHERE name == 'Mark Hamill' and born == '1951')
)


SELECT COUNT(DISTINCT(crew.person_id)) 
FROM crew
WHERE (crew.category == 'actor' OR crew.category == 'actress') AND title_id in hamill_movies;

