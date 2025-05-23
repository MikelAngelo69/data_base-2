DELIMITER $$

CREATE TRIGGER trigger_cambio_telefono
BEFORE UPDATE ON usuario
FOR EACH ROW
BEGIN
  IF OLD.tel != NEW.tel THEN
    INSERT INTO historial_telefonos (id_usuario, telefono_anterior, telefono_nuevo, fecha_cambio)
    VALUES (OLD.id_usuario, OLD.tel, NEW.tel, NOW());
  END IF;
END$$

DELIMITER ;

--2
DELIMITER $$

CREATE TRIGGER validar_fechas_prestamo
BEFORE INSERT ON prestamos
FOR EACH ROW
BEGIN
  IF NEW.fecha_dev < NEW.fecha_pres THEN
    SIGNAL SQLSTATE '45000' 
    SET MESSAGE_TEXT = 'La fecha de devolución no puede ser anterior a la fecha de préstamo.';
  END IF;
END$$

DELIMITER ;

--3
DELIMITER $$

CREATE TRIGGER auditoria_factura
AFTER INSERT ON factura
FOR EACH ROW
BEGIN
  SELECT CONCAT('Se insertó la factura con ID: ', NEW.id_factura, ' y valor: ', NEW.valor) AS mensaje;
END$$

DELIMITER ;

--4
DELIMITER $$

CREATE TRIGGER asignar_rol_cliente
BEFORE INSERT ON usuario
FOR EACH ROW
BEGIN
  IF NEW.Rolesid_rol IS NULL THEN
    SET NEW.Rolesid_rol = 1;
  END IF;
END$$

DELIMITER ;

--5
DELIMITER $$

CREATE TRIGGER validar_telefono
BEFORE INSERT ON usuario
FOR EACH ROW
BEGIN
  IF CHAR_LENGTH(NEW.tel) != 8 THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'El número de teléfono debe tener exactamente 8 dígitos.';
  END IF;
END$$

DELIMITER ;
