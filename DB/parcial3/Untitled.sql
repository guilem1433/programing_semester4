CREATE TABLE `paises` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `nombre` varchar(100),
  `region` varchar(100)
);

CREATE TABLE `usuarios` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `nombre_completo` varchar(150),
  `correo` varchar(150) UNIQUE,
  `contrasena` varchar(200),
  `pais_id` int,
  `rol` enum(cliente,vendedor),
  `fecha_creacion` datetime
);

CREATE TABLE `anunciantes` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `usuario_id` int,
  `nombre_tienda` varchar(150),
  `reputacion` decimal(3,2)
);

CREATE TABLE `clientes` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `usuario_id` int,
  `puntos_lealtad` int
);

CREATE TABLE `categorias` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `nombre` varchar(120),
  `descripcion` text
);

CREATE TABLE `productos` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `vendedor_id` int,
  `categoria_id` int,
  `nombre` varchar(180),
  `descripcion` text,
  `precio` decimal(10,2),
  `estado` enum(activo,inactivo)
);

CREATE TABLE `almacenes` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `pais_id` int,
  `nombre` varchar(150)
);

CREATE TABLE `inventario` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `producto_id` int,
  `almacen_id` int,
  `existencias` int
);

CREATE TABLE `pedidos` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `cliente_id` int,
  `fecha_pedido` datetime,
  `estado` enum(pendiente,enviado,entregado,cancelado),
  `direccion_envio` varchar(255)
);

CREATE TABLE `pagos` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `pedido_id` int,
  `monto` decimal(10,2),
  `metodo` enum(tarjeta_credito,paypal,cripto,transferencia_bancaria),
  `fecha_pago` datetime
);

CREATE TABLE `suscripciones` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `cliente_id` int,
  `tipo` enum(mensual,anual),
  `fecha_inicio` date,
  `fecha_fin` date
);

ALTER TABLE `usuarios` ADD FOREIGN KEY (`pais_id`) REFERENCES `paises` (`id`);

ALTER TABLE `anunciantes` ADD FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

ALTER TABLE `clientes` ADD FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

ALTER TABLE `productos` ADD FOREIGN KEY (`vendedor_id`) REFERENCES `anunciantes` (`id`);

ALTER TABLE `productos` ADD FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`);

ALTER TABLE `almacenes` ADD FOREIGN KEY (`pais_id`) REFERENCES `paises` (`id`);

ALTER TABLE `inventario` ADD FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`);

ALTER TABLE `inventario` ADD FOREIGN KEY (`almacen_id`) REFERENCES `almacenes` (`id`);

ALTER TABLE `pedidos` ADD FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`);

ALTER TABLE `pagos` ADD FOREIGN KEY (`pedido_id`) REFERENCES `pedidos` (`id`);

ALTER TABLE `suscripciones` ADD FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`);
