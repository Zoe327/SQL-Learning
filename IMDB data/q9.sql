/*list the movies in alphabetical order which cast both Mark Hamill born in 1951 
and George Lucas IN 1944*/
WITH hamill_movies AS (
SELECT title_id 
FROM crew 
WHERE person_id == (SELECT person_id FROM people WHERE name == 'Mark Hamill' and born == '1951')
)


SELECT titles.primary_title
FROM crew
JOIN people 
ON crew.person_id == people.person_id AND people.name == 'George Lucas' AND people.born == '1944' AND crew.title_id IN hamill_movies
JOIN titles
ON crew.title_id == titles.title_id AND titles.type == 'movie'
ORDER BY titles.primary_title;

