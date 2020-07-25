-- Precargar peliculas a la tabla peliculas
INSERT INTO pelicula(genero, nombre_peli, descripcion_peli, foto_pelicula, ano_pelicula) VALUES 
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
 
INSERT INTO pelicula (genero, nombre_peli, descripcion_peli, foto_pelicula, ano_pelicula) VALUES 
 ('Ficcion', 'Interstelar','Gracias a un descubrimiento, un grupo de científicos y exploradores, encabezados por Cooper, se embarcan en un viaje espacial para encontrar un lugar con las condiciones necesarias para reemplazar a la Tierra y comenzar una nueva vida allí',
 'https://comoacaba.com/wp-content/uploads/2019/03/7C0oiPn46OvaMxET9iq1f5BsyMS.jpg', '2014');
 
INSERT INTO pelicula (genero, nombre_peli, descripcion_peli, foto_pelicula, ano_pelicula) VALUES 
 ('Ficcion', 'Avengers Infinity War','Los superhéroes se alían para vencer al poderoso Thanos, el peor enemigo al que se han enfrentado. Si Thanos logra reunir las seis gemas del infinito: poder, tiempo, alma, realidad, mente y espacio, nadie podrá detenerlo.',
 'https://s3-us-west-2.amazonaws.com/s3.laprensa.com.ni-bq/wp-content/uploads/2018/04/27105745/Hawkeye-Infinity-War-Poster.jpg', '2018');
 
INSERT INTO pelicula (genero, nombre_peli, descripcion_peli, foto_pelicula, ano_pelicula) VALUES 
 ('Animada', 'Shrek 3','Cuando el Rey Harold enferma, Shrek y la Princesa Fiona descubren que tendrán que dirigir la Tierra Muy Muy Lejana a menos que puedan encontrar al Príncipe Artie, el verdadero heredero, y llevarlo a casa. Desafortunadamente, no tiene interés en ser rey; no obstante, Shrek, Burro y el Gato con Botas planean recuperarlo. Mientras tanto, la Princesa Fiona le pide ayuda a sus compañeras heroínas para alejar del trono al Príncipe Encantador.',
 'https://pics.filmaffinity.com/Shrek_Tercero_Shrek_3-240122743-mmed.jpg', '2007');
 
INSERT INTO pelicula (genero, nombre_peli, descripcion_peli, foto_pelicula, ano_pelicula) VALUES 
 ('Terror', 'Siniestro','Ellison Oswald, escritor de historias criminales, está en una mala racha; no ha tenido un éxito en más de 10 años y está desesperado. Cuando descubre una película que muestra las muertes de una familia, él promete resolver el misterio.',
 'https://http2.mlstatic.com/siniestro-sinister-scott-derrickson-pelicula-dvd-D_NQ_NP_604593-MLM30607433727_052019-F.jpg', '2012');
 
INSERT INTO pelicula (genero, nombre_peli, descripcion_peli, foto_pelicula, ano_pelicula) VALUES 
 ('Comedia', 'Superbad', 'Seth y Evan, dos estudiantes inadaptados de preparatoria, tienen grandes esperanzas en su fiesta de graduación: los jóvenes se sienten retados por la sociedad y planean divertirse a lo grande y conseguir chicas hermosas para finalmente poder integrarse con sus compañeros.',
 'https://pics.filmaffinity.com/Supersalidos-743461969-large.jpg', '2007');
 
INSERT INTO pelicula (genero, nombre_peli, descripcion_peli, foto_pelicula, ano_pelicula) VALUES 
 ('Romance', 'Hitch', 'Un cortés hombre se enamora de una sagaz columnista mientras ayuda a un tímido contador a cortejar a una bella heredera.',
 'https://pics.filmaffinity.com/Hitch_especialista_en_ligues-523911199-large.jpg', '2005');
 
-- Precargar usuarios en la tabla usuarios

INSERT INTO usuario (nombre_usuario, email, contrasena, perfil_usuario) VALUES
('kirsten_01', 'kcomentarioirsten2101@hotmail.com', '"lionel"', 'https://e00-elmundo.uecdn.es/assets/multimedia/imagenes/2019/06/03/15595671589054.jpg'),
('javiersingh15','javiersingh@gmail.com','12qwas','https://cdn.shopify.com/s/files/1/2997/2714/products/14457_1_240x.jpg?v=1594675433'),
('leo_choco','lionelh@gmail.com','asqwzx', 'https://i.insider.com/5914ce0ee559f11b008b495b?width=1068&format=jpeg'),
('jose_sieiro','josesieiro@gmail.com', 'tyghbn21','https://hungarytoday.hu/wp-content/uploads/2020/06/Hide-the-Pain-Harold-prof..jpg'),
('lmiranda','lu@gmail.com', '12345','https://preview.redd.it/fnw38uag2ym41.png?auto=webp&s=3741d9a13589fca100d9e0a57879428f16781a99'),
('alexh10','lalex@gmail.com', '1014','https://media.metrolatam.com/2020/03/06/gokudragonballsu-7bc4d77b44379fed9612578f4fa3cb5d-1200x800.jpg');
-- Precargar spoilers en la tabla spoiler

INSERT INTO spoiler (id_usuario, id_pelicula, titulo_spoiler, descripcion_spoiler, carrots) VALUES
('1', '2', 'El discurso de Rosie en la boda de Alex', 'Prácticamente confesó que Alex era el amor de su vida ahí merengues, en frente de todos, el día que este men se estaba casando... con Bethany Williams.','155'),
('1', '3', 'Andy consigue el trabajo que queria', 'Alfinal de la pelicula Miranda la recomiendad y asi obtiene el trabajo','200'),
('3','2', 'Rosie y Alex terminan juntos', 'La verdad no hay mucho que comentar al respecto, es como dice el titulo','671'),
('5','8', 'Toda la familia muere', 'Bien creepy como se tasajean a toda la familia :(','123'),
('4','6', 'Se muere Spiderman', 'El man dq no me quiero ir Sr Stark','301');
-- Precargar comentario 

-- Devuelve las 4 peliculas con mas zanahorias
SELECT foto_pelicula, nombre_peli, SUM(carrots) AS total_carrots 
FROM pelicula p, spoiler sp 
WHERE p.id_pelicula = sp.id_pelicula 
GROUP BY nombre_peli
ORDER BY SUM(carrots) 
DESC LIMIT 4;



