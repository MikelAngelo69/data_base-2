USE `ventasvestidos`;
DROP procedure IF EXISTS `insert_vestido`;

DELIMITER $$
USE `ventasvestidos`$$
CREATE PROCEDURE `insert_vestido` (
IN id int,
IN nombre varchar(25),
IN color varchar(25),
IN talla varchar(25),
IN precio int
)
BEGIN
INSERT INTO vestido (id_vestido, nombre, color, talla, precio)
VALUES (id, nombre, color, talla, precio);
END$$

DELIMITER ;

USE `ventasvestidos`;
DROP procedure IF EXISTS `insert_rol`;

DELIMITER $$
USE `ventasvestidos`$$
CREATE PROCEDURE `insert_rol` (
IN nombre_rol varchar(25)
)
BEGIN
INSERT INTO roles (nombre_rol)
VALUE (nombre_rol);
END$$

DELIMITER ;

USE `ventasvestidos`;
DROP procedure IF EXISTS `insert_cliente`;

DELIMITER $$
USE `ventasvestidos`$$
CREATE PROCEDURE `insert_cliente` (
IN id_cliente int,
IN nombre varchar(25),
IN apellido varchar(25),
IN telefono int 
)
BEGIN 
INSERT INTO cliente (id_cliente, nombre, apellido, telefono)
VALUES (id_cliente, nombre, apellido, telefono);
END$$

DELIMITER ;

USE `ventasvestidos`;
DROP procedure IF EXISTS `insert_compra`;

DELIMITER $$
USE `ventasvestidos`$$
CREATE PROCEDURE `insert_compra` (
IN id_compra int,
IN fecha_compra double,
IN fecha_entrega double
)
BEGIN
INSERT INTO compras (id_compra, fecha_compra, fecha_entrega)
VALUES (id_compra, fecha_compra, fecha_entrega);
END$$

DELIMITER ;

USE `ventasvestidos`;
DROP procedure IF EXISTS `insert_ticket`;

DELIMITER $$
USE `ventasvestidos`$$
CREATE PROCEDURE `insert_ticket` (
IN id_ticket int,
IN total int
)
BEGIN
INSERT INTO ticket (id_ticket, total)
VALUES (id_ticket, total);
END$$

DELIMITER ;
