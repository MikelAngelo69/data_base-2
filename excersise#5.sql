USE `modaventas`;
DROP FUNCTION IF EXISTS `obtener_descuento`;

DELIMITER $$
USE `modaventas`$$
CREATE FUNCTION `obtener_descuento` (precio INT)
RETURNS DECIMAL(10,2)
BEGIN
RETURN precio * 0.15;
END$$

DELIMITER ;

USE `modaventas`;
DROP FUNCTION IF EXISTS `dias_transcurridos`;

DELIMITER $$
USE `modaventas`$$
CREATE FUNCTION `dias_transcurridos` (fecha_inicio DATE, fecha_fin DATE)
RETURNS INT
BEGIN
RETURN DATEDIFF(fecha_fin, fecha_inicio);
END$$

DELIMITER ;

USE `modaventas`;
DROP FUNCTION IF EXISTS `hay_stock`;

DELIMITER $$
USE `modaventas`$$
CREATE FUNCTION `hay_stock` (id_vestido INT)
RETURNS INTEGER
BEGIN
DECLARE unidades INT;

    SELECT inventario INTO unidades
    FROM vestido
    WHERE id_vestido = id_vestido;

    RETURN unidades > 0;
END$$

DELIMITER ;

USE `modaventas`;
DROP FUNCTION IF EXISTS `cliente_top`;

DELIMITER $$
USE `modaventas`$$
CREATE FUNCTION cliente_top()
RETURNS VARCHAR(25)
DETERMINISTIC
BEGIN
   DECLARE mejor_cliente VARCHAR(25);

   SELECT c.nombre
   INTO mejor_cliente
   FROM cliente c
   JOIN compras cp ON c.id_cliente = cp.id_cliente
   GROUP BY c.id_cliente
   ORDER BY COUNT(*) DESC
   LIMIT 1;

   RETURN mejor_cliente;
END$$

DELIMITER ;
