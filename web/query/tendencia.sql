SELECT foto_pelicula, nombre_pelicula, SUM(carrots) AS total_carrots
FROM pelicula p, spoiler sp
WHERE p.id_pelicula = sp.id_pelicula
ORDER BY SUM(carrots) DESC
GROUP BY nombre_pelicula
LIMIT 4;