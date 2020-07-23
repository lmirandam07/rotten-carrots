INSERT INTO usuario (nombre_usuario, email, contrasena, perfil_usuario) VALUES
('kirsten_01', 'kirsten2101@hotmail.com', '12345', 'https://e00-elmundo.uecdn.es/assets/multimedia/imagenes/2019/06/03/15595671589054.jpg'),
('javiersingh15','javiersingh@gmail.com','12qwas','https://cdn.shopify.com/s/files/1/2997/2714/products/14457_1_240x.jpg?v=1594675433'),
('leo_choco','lionelh@gmail.com','asqwzx', 'https://i.insider.com/5914ce0ee559f11b008b495b?width=1068&format=jpeg'),
('jose_sieiro','josesieiro@gmail.com', 'tyghbn21','https://hungarytoday.hu/wp-content/uploads/2020/06/Hide-the-Pain-Harold-prof..jpg');

INSERT INTO spoiler (id_usuario, id_pelicula, titulo_spoiler, descripcion_spoiler) VALUES
('1', '2', 'El discurso de Rosie en la boda de Alex', 'Prácticamente confesó que Alex era el amor de su vida ahí merengues, en frente de todos, el día que este men se estaba casando... con Bethany Williams.'),
('1', '3', 'Andy consigue el trabajo que queria', 'Alfinal de la pelicula Miranda la recomiendad y asi obtiene el trabajo'),
('2','2', 'Rosie y Alex terminan juntos', 'La verdad no hay mucho que comentar al respecto, es como dice el titulo');

INSERT INTO comentario (id_usuario, id_spoiler, cuerpo_comentario) VALUES 
('3', '1', 'Esa es la parte mas triste de la pelicula, aunque ya alfinal terminan juntos');
