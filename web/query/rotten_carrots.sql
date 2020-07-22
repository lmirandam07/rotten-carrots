-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.3.7-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para rotten_carrots
CREATE DATABASE IF NOT EXISTS `rotten_carrots` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `rotten_carrots`;

-- Volcando estructura para tabla rotten_carrots.comentario
CREATE TABLE IF NOT EXISTS `comentario` (
  `num_comentario` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `id_spoiler` int(11) NOT NULL,
  `cuerpo_comentario` varchar(80) NOT NULL,
  `carrots_comentario` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`num_comentario`,`id_spoiler`),
  KEY `fk_comentario` (`id_usuario`),
  CONSTRAINT `fk_comentario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla rotten_carrots.comentario: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `comentario` DISABLE KEYS */;
/*!40000 ALTER TABLE `comentario` ENABLE KEYS */;

-- Volcando estructura para tabla rotten_carrots.contacto
CREATE TABLE IF NOT EXISTS `contacto` (
  `id_consulta` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `asunto` varchar(50) NOT NULL,
  `consulta` varchar(500) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_consulta`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla rotten_carrots.contacto: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `contacto` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacto` ENABLE KEYS */;

-- Volcando estructura para tabla rotten_carrots.genero
CREATE TABLE IF NOT EXISTS `genero` (
  `id_genero` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_genero` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_genero`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla rotten_carrots.genero: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;

-- Volcando estructura para tabla rotten_carrots.pelicula
CREATE TABLE IF NOT EXISTS `pelicula` (
  `id_pelicula` int(11) NOT NULL AUTO_INCREMENT,
  `id_genero` int(11) NOT NULL DEFAULT 0,
  `nombre_peli` varchar(80) NOT NULL DEFAULT '0',
  `descripcion_peli` varchar(500) NOT NULL DEFAULT '0',
  `foto_pelicula` varchar(500) NOT NULL DEFAULT '0',
  `ano_pelicula` int(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_pelicula`),
  KEY `fk_genero` (`id_genero`),
  CONSTRAINT `fk_genero` FOREIGN KEY (`id_genero`) REFERENCES `genero` (`id_genero`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla rotten_carrots.pelicula: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `pelicula` DISABLE KEYS */;
/*!40000 ALTER TABLE `pelicula` ENABLE KEYS */;

-- Volcando estructura para tabla rotten_carrots.spoiler
CREATE TABLE IF NOT EXISTS `spoiler` (
  `id_spoiler` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL DEFAULT 0,
  `id_pelicula` int(11) NOT NULL DEFAULT 0,
  `titulo_spoiler` varchar(80) NOT NULL DEFAULT '0',
  `descripcion_spoiler` varchar(500) NOT NULL DEFAULT '0',
  `foto_spoiler` varchar(500) NOT NULL DEFAULT '0',
  `rating` int(11) NOT NULL DEFAULT 0,
  `comentarios` int(11) NOT NULL DEFAULT 0,
  `carrots` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_spoiler`),
  KEY `fk_usario` (`id_usuario`),
  KEY `fk_pelicula` (`id_pelicula`),
  CONSTRAINT `fk_pelicula` FOREIGN KEY (`id_pelicula`) REFERENCES `pelicula` (`id_pelicula`),
  CONSTRAINT `fk_usario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla rotten_carrots.spoiler: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `spoiler` DISABLE KEYS */;
/*!40000 ALTER TABLE `spoiler` ENABLE KEYS */;

-- Volcando estructura para tabla rotten_carrots.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar(50) NOT NULL DEFAULT '0',
  `email` varchar(80) NOT NULL DEFAULT '0',
  `contrasena` varchar(30) NOT NULL DEFAULT '0',
  `perfil_usuario` varchar(500) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla rotten_carrots.usuario: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
