SELECT * FROM movies WHERE year=1995;
SELECT COUNT(*) FROM movies JOIN roles ON movies.id=roles.movie_id JOIN actors ON roles.actor_id=actors.id WHERE movies.name="Lost in Translation" 
SELECT actors.first_name, actors.last_name FROM movies JOIN roles ON movies.id=roles.movie_id JOIN actors ON roles.actor_id=actors.id WHERE movies.name="Lost in Translation"; 
SELECT directors.first_name, directors.last_name FROM movies JOIN movies_directors ON movies.id=movies_directors.movie_id JOIN directors ON directors.id=movies_directors.director_id WHERE movies.name="Fight Club" 
SELECT COUNT(*) FROM directors JOIN movies_directors ON directors.id=movies_directors.director_id WHERE directors.first_name="Clint" AND directors.last_name="Eastwood" 
SELECT a.first_name, a.last_name FROM actors a JOIN roles r ON a.id=r.actor_id JOIN movies m ON r.movie_id=m.id JOIN movies_directors m_d ON m.id=m_d.movie_id JOIN directors d ON m_d.director_id=d.id WHERE d.first_name="Christopher" AND d.last_name="Nolan"
