-- Precargar peliculas a la tabla peliculas
INSERT INTO pelicula (genero, nombre_peli, descripcion_peli, foto_pelicula, ano_pelicula) VALUES 
 ('Terror', 'El conjuro','El conjuro cuenta cómo una pareja de investigadores de fenómenos paranormales, Ed y Lorraine Warren (Patrick Wilson, Vera Farmiga), acude en ayuda de una familia aterrorizada por una presencia oscura en una granja alejada de todo.',
 'https://www.cartelera.com.uy/imagenes_espectaculos/moviedetail13/11157.jpg', '2013');
 
 INSERT INTO pelicula (genero, nombre_peli, descripcion_peli, foto_pelicula, ano_pelicula) VALUES 
 ('Romance', 'Love, Rosie','Rosie y Alex son mejores amigos hasta que la familia se muda a Estados Unidos. Ellos se juegan todo para conservar vivos su amor y amistad al paso de los años y las millas.',
 'https://images-na.ssl-images-amazon.com/images/I/81W3Vz2KMrL._SY445_.jpg', '2014');
 
 INSERT INTO pelicula (genero, nombre_peli, descripcion_peli, foto_pelicula, ano_pelicula) VALUES 
 ('Comedia', 'The Devil Wears Prada','Andy es una universitaria recién graduada con grandes sueños. Tras conseguir trabajo en la prestigiada revista Runway, se convierte en asistente de la diabólica editora Miranda Priestly. ',
 'https://upload.wikimedia.org/wikipedia/en/e/e7/The_Devil_Wears_Prada_main_onesheet.jpg', '2006');
 
 INSERT INTO pelicula (genero, nombre_peli, descripcion_peli, foto_pelicula, ano_pelicula) VALUES 
 ('Accion', 'Otro día para matar','John Wick, un exasesino a sueldo, se enfrenta al mafioso Viggo Tarazov, quien ofrece una recompensa a aquel que logre acabar con la vida de Wick.',
 'https://images.justwatch.com/poster/147599059/s592', '2015');
 
 
 
-- Precargar usuarios en la tabla usuarios

INSERT INTO usuario (nombre_usuario, email, contrasena, perfil_usuario) VALUES
('kirsten_01', 'kcomentarioirsten2101@hotmail.com', '12345', 'https://e00-elmundo.uecdn.es/assets/multimedia/imagenes/2019/06/03/15595671589054.jpg'),
('javiersingh15','javiersingh@gmail.com','12qwas','https://cdn.shopify.com/s/files/1/2997/2714/products/14457_1_240x.jpg?v=1594675433'),
('leo_choco','lionelh@gmail.com','asqwzx', 'https://i.insider.com/5914ce0ee559f11b008b495b?width=1068&format=jpeg'),
('jose_sieiro','josesieiro@gmail.com', 'tyghbn21','https://hungarytoday.hu/wp-content/uploads/2020/06/Hide-the-Pain-Harold-prof..jpg');


-- Precargar spoilers en la tabla spoiler

INSERT INTO spoiler (id_usuario, id_pelicula, titulo_spoiler, descripcion_spoiler, carrots) VALUES
('1', '2', 'El discurso de Rosie en la boda de Alex', 'Prácticamente confesó que Alex era el amor de su vida ahí merengues, en frente de todos, el día que este men se estaba casando... con Bethany Williams.','155'),
('1', '3', 'Andy consigue el trabajo que queria', 'Alfinal de la pelicula Miranda la recomiendad y asi obtiene el trabajo','20'),
('2','2', 'Rosie y Alex terminan juntos', 'La verdad no hay mucho que comentar al respecto, es como dice el titulo','50');

-- Precargar comentario 
INSERT INTO comentario (id_usuario, id_spoiler, cuerpo_comentario) VALUES 
('3', '1', 'Esa es la parte mas triste de la pelicula, aunque ya alfinal terminan juntos');


-- Devuelve las 4 peliculas con mas zanahorias
SELECT foto_pelicula, nombre_peli, SUM(carrots) AS total_carrots 
FROM pelicula p, spoiler sp 
WHERE p.id_pelicula = sp.id_pelicula 
GROUP BY nombre_peli
ORDER BY SUM(carrots) 
DESC LIMIT 4;

SELECT nombre_usuario, cuerpo_comentario, carrots_comentario, spoiler.id_spoiler, num_comentario FROM comentario, usuario, spoiler WHERE spoiler.id_spoiler = 3 AND comentario.id_usuario = usuario.id_usuario;

SELECT sp.titulo_spoiler, sp.descripcion_spoiler 
FROM spoiler sp, pelicula p 
WHERE sp.id_pelicula = p.id_pelicula 
AND p.nombre_peli = "El conjuro";



