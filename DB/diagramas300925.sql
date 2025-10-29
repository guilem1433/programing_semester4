CREATE TABLE `usuario` (
  `id_usuario` int PRIMARY KEY,
  `nombre` varchar(255),
  `email` varchar(255),
  `contraseña` varchar(255),
  `plan` varchar(255)
);

CREATE TABLE `suscripcion` (
  `id_plan` int PRIMARY KEY,
  `varchar` nombre,
  `precio` int,
  `can_dispos` varchar(255),
  `calidad_vid` varchar(255),
  `plan` varchar(255)
);

CREATE TABLE `contenido` (
  `titulo` varchar(255),
  `tipo` varchar(255),
  `genero` varchar(255),
  `año` int,
  `duracion` int,
  `clasificacion` varchar(255)
);

CREATE TABLE `historial` (
  `id_usuario_h` int UNIQUE,
  `id_contenido_h` int UNIQUE,
  `id_dispositivo_h` int UNIQUE
);

CREATE TABLE `dispositivos` (
  `id_dispositivos` int PRIMARY KEY,
  `tipo_dispos` varchar(255)
);

ALTER TABLE `suscripcion` ADD FOREIGN KEY (`plan`) REFERENCES `usuario` (`id_usuario`);

ALTER TABLE `suscripcion` ADD FOREIGN KEY (`can_dispos`) REFERENCES `dispositivos` (`tipo_dispos`);

ALTER TABLE `contenido` ADD FOREIGN KEY (`tipo`) REFERENCES `usuario` (`id_usuario`);

ALTER TABLE `contenido` ADD FOREIGN KEY (`titulo`) REFERENCES `historial` (`id_usuario_h`);
