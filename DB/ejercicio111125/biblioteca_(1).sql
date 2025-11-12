-- sql
-- Recreate schema and tables with the column names your file expects, then load data
CREATE DATABASE IF NOT EXISTS biblioteca
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_general_ci;
USE biblioteca;

SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS `prestamos`, `libros`, `socios`, `autor`, `editorial`, `genero`, `paises`;
SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE `paises` (
  `Codigo` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) NOT NULL,
  `Continente` varchar(30) NOT NULL,
  `Lengua` varchar(30) NOT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `autor` (
  `Codigo` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(40) NOT NULL,
  `Fecha_Nac` date NOT NULL,
  `Nacionalidad` int DEFAULT NULL,
  PRIMARY KEY (`Codigo`),
  CONSTRAINT `autor_ibfk_1` FOREIGN KEY (`Nacionalidad`) REFERENCES `paises` (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `editorial` (
  `Codigo` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Dirección` varchar(100) DEFAULT NULL,
  `Contacto` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `genero` (
  `Codigo` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(40) NOT NULL,
  `Tematica` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `socios` (
  `Codigo` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Dirección` varchar(80) DEFAULT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `Fecha_Nacimiento` date DEFAULT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `libros` (
  `Codigo` int NOT NULL AUTO_INCREMENT,
  `Titulo` varchar(100) NOT NULL,
  `Autor` int DEFAULT NULL,
  `Año` int DEFAULT NULL,
  `Canti_Pag` int DEFAULT NULL,
  `Portada` varchar(100) DEFAULT NULL,
  `Editorial` int DEFAULT NULL,
  `Genero` int DEFAULT NULL,
  PRIMARY KEY (`Codigo`),
  KEY `Autor_idx` (`Autor`),
  KEY `Editorial_idx` (`Editorial`),
  KEY `Genero_idx` (`Genero`),
  CONSTRAINT `libros_ibfk_1` FOREIGN KEY (`Autor`) REFERENCES `autor` (`Codigo`),
  CONSTRAINT `libros_ibfk_2` FOREIGN KEY (`Editorial`) REFERENCES `editorial` (`Codigo`),
  CONSTRAINT `libros_ibfk_3` FOREIGN KEY (`Genero`) REFERENCES `genero` (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `prestamos` (
  `Codigo` int NOT NULL AUTO_INCREMENT,
  `Libro` int DEFAULT NULL,
  `Socio` int DEFAULT NULL,
  `Fecha_Entrega` date DEFAULT NULL,
  `Fecha_Salida` date DEFAULT NULL,
  PRIMARY KEY (`Codigo`),
  KEY `Libro_idx` (`Libro`),
  KEY `Socio_idx` (`Socio`),
  CONSTRAINT `prestamos_ibfk_1` FOREIGN KEY (`Libro`) REFERENCES `libros` (`Codigo`),
  CONSTRAINT `prestamos_ibfk_2` FOREIGN KEY (`Socio`) REFERENCES `socios` (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `paises` (`Codigo`, `Nombre`, `Continente`, `Lengua`) VALUES
(1, 'Colombia', 'América del Sur', 'Español'),
(2, 'México', 'América del Norte', 'Español'),
(3, 'España', 'Europa', 'Español'),
(4, 'Estados Unidos', 'América del Norte', 'Inglés'),
(5, 'Argentina', 'América del Sur', 'Español'),
(6, 'Brasil', 'América del Sur', 'Portugués'),
(7, 'Francia', 'Europa', 'Francés'),
(8, 'Italia', 'Europa', 'Italiano');

INSERT INTO `autor` (`Codigo`, `Nombre`, `Fecha_Nac`, `Nacionalidad`) VALUES
(1, 'Gabriel García Márquez', '1927-03-06', 1),
(2, 'Jorge Luis Borges', '1899-08-24', 5),
(3, 'Isabel Allende', '1942-08-02', 1),
(4, 'Paulo Coelho', '1947-08-24', 6),
(5, 'Stephen King', '1947-09-21', 4),
(6, 'Umberto Eco', '1932-01-05', 8);

INSERT INTO `editorial` (`Codigo`, `Nombre`, `Dirección`, `Contacto`) VALUES
(1, 'Planeta', 'Calle 45 #10-20', 'info@planeta.com'),
(2, 'Alfaguara', 'Carrera 12 #34-56', 'contacto@alfaguara.com'),
(3, 'Penguin Random House', 'Av. Las Letras 90', 'info@penguin.com');

INSERT INTO `genero` (`Codigo`, `Nombre`, `Tematica`) VALUES
(1, 'Realismo mágico', 'Narrativa latinoamericana'),
(2, 'Fantasía', 'Mundo imaginario'),
(3, 'Terror', 'Suspenso y miedo'),
(4, 'Filosofía', 'Reflexión y pensamiento'),
(5, 'Ciencia ficción', 'Futuro y tecnología');

INSERT INTO `socios` (`Codigo`, `Nombre`, `Dirección`, `Telefono`, `Fecha_Nacimiento`) VALUES
(1, 'Jaime Garzón', 'Carrera 15 Bis #7-80', '3104567890', '2007-07-12'),
(2, 'Andrés Pereira', 'Carrera 01 Bis #2-10', '3201564845', '2015-11-15'),
(3, 'Laura Gómez', 'Calle 10 #12-45', '3158746521', '2003-03-08'),
(4, 'Carlos Rodríguez', 'Avenida 6 #4-25', '3112987465', '1999-09-21'),
(5, 'Mariana López', 'Carrera 22 #14-66', '3226549871', '2001-12-01'),
(6, 'Ricardo Patiño', 'Calle 8 #5-32', '3004578963', '2005-04-17'),
(7, 'Daniela Ruiz', 'Transversal 9 #18-24', '3116789453', '1998-07-29'),
(8, 'Jorge Castillo', 'Carrera 4 #9-16', '3209457863', '2002-10-10'),
(9, 'Lucía Méndez', 'Calle 30 #12-11', '3106548795', '2004-05-18');

INSERT INTO `libros` (`Codigo`, `Titulo`, `Autor`, `Año`, `Canti_Pag`, `Portada`, `Editorial`, `Genero`) VALUES
(1, 'Cien años de soledad', 1, 1967, 471, 'cien_anos.jpg', 1, 1),
(2, 'El Aleph', 2, 1945, 157, 'aleph.jpg', 2, 4),
(3, 'El alquimista', 4, 1988, 208, 'alquimista.jpg', 1, 2),
(4, 'It', 5, 1986, 1138, 'it.jpg', 3, 3),
(5, 'El nombre de la rosa', 6, 1980, 512, 'rosa.jpg', 3, 4);

INSERT INTO `prestamos` (`Codigo`, `Libro`, `Socio`, `Fecha_Entrega`, `Fecha_Salida`) VALUES
(1, 1, 1, '2025-11-01', '2025-11-10'),
(2, 3, 4, '2025-10-15', '2025-10-25'),
(3, 5, 2, '2025-09-20', '2025-09-30'),
(4, 4, 6, '2025-11-05', '2025-11-12');
