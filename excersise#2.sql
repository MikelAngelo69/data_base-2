USE `disfraces`;
DROP procedure IF EXISTS `insert_disfraz`;

DELIMITER $$
USE `disfraces`$$
CREATE PROCEDURE `insert_disfraz` (
IN id int,
IN nom varchar (25),
IN color varchar (25),
IN talla varchar (25),
IN valor int
)
BEGIN
INSERT INTO disfraz (id_disfraz, nom, color, talla, valor)
VALUES (id, nom, color, talla,valor);

END$$

DELIMITER ;

USE `disfraces`;
DROP procedure IF EXISTS `insert_roles`;

DELIMITER $$
USE `disfraces`$$
CREATE PROCEDURE `insert_roles` (
IN nom_rol varchar (25)
)
BEGIN
INSERT INTO roles (nom_rol)
VALUE (nom_rol);
END$$

DELIMITER ;

USE `disfraces`;
DROP procedure IF EXISTS `insert_usuario`;

DELIMITER $$
USE `disfraces`$$
CREATE PROCEDURE `insert_usuario` (
IN id_usuario int,
IN nom varchar (25),
IN ape varchar (25),
IN tel int 
)
BEGIN 
INSERT INTO usuario (id_usuario, nom. ape, tel)
VALUES (id_usuario, nom, ape, tel);
END$$

DELIMITER ;


USE `disfraces`;
DROP procedure IF EXISTS `insert_prest`;

DELIMITER $$
USE `disfraces`$$
CREATE PROCEDURE `insert_prest` (
IN id_pres int,
IN fecha_pres double,
IN fecha_dev double

)
BEGIN
INSERT INTO prestamos (id_press, fecha_pres, fecha_dev)
VALUES (id_pres, fecha_pres, fecha_dev);
END$$

DELIMITER ;


USE `disfraces`;
DROP procedure IF EXISTS `insert_factura`;

DELIMITER $$
USE `disfraces`$$
CREATE PROCEDURE `insert_factura` (
IN id_factura int,
IN valor int
)
BEGIN
INSERT INTO factura (id_factura, valor)
VALUES (id<_factura, valor);

END$$

DELIMITER ;

