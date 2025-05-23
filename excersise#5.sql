USE `disfraces`;
DROP function IF EXISTS `calcular_descuento`;

DELIMITER $$
USE `disfraces`$$
CREATE FUNCTION `calcular_descuento` (valor INT)
RETURNS DECIMAL (10,2)
BEGIN
RETURN valor * 0.10;
END$$

DELIMITER ;


USE `disfraces`;
DROP function IF EXISTS `dias_prestamo`;

DELIMITER $$
USE `disfraces`$$
CREATE FUNCTION `dias_prestamo` (fecha_pres DATE, fecha_dev DATE)
RETURNS INT
BEGIN
RETURN  DATEDIFF(fecha_dev, fecha_pres);
END$$

DELIMITER ;


USE `disfraces`;
DROP function IF EXISTS `disponibilidad`;

DELIMITER $$
USE `disfraces`$$
CREATE FUNCTION `disponibilidad` (id_disfraz INT)
RETURNS INTEGER
BEGIN

DECLARE v_stock INT;

    SELECT stock INTO v_stock
    FROM Disfraces
    WHERE id_disfraz = p_id_disfraz;

    RETURN v_stock > 0;
END$$

DELIMITER ;


USE `disfraces`;
DROP function IF EXISTS `usuario_mas_compro`;

DELIMITER $$
USE `disfraces`$$
CREATE FUNCTION usuario_mas_compro()
RETURNS VARCHAR(25)
DETERMINISTIC
BEGIN
   DECLARE nombre VARCHAR(25);

   SELECT u.nom
   INTO nombre
   FROM usuario u
   JOIN prestamos p ON u.id_usuario = p.id_usuario
   GROUP BY u.id_usuario
   ORDER BY COUNT(*) DESC
   LIMIT 1;

   RETURN nombre;
END$$

DELIMITER ;
