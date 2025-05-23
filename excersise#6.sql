DELIMITER $$

-- 1
CREATE TRIGGER trigger_cambio_contacto
BEFORE UPDATE ON cliente
FOR EACH ROW
BEGIN
  IF OLD.telefono != NEW.telefono THEN
    INSERT INTO historial_contactos (id_cliente, telefono_anterior, telefono_nuevo, fecha_actualizacion)
    VALUES (OLD.id_cliente, OLD.telefono, NEW.telefono, NOW());
  END IF;
END$$

DELIMITER ;

-- 2
DELIMITER $$

CREATE TRIGGER validar_fechas_compra
BEFORE INSERT ON compras
FOR EACH ROW
BEGIN
  IF NEW.fecha_entrega < NEW.fecha_compra THEN
    SIGNAL SQLSTATE '45000' 
    SET MESSAGE_TEXT = 'La fecha de entrega no puede ser anterior a la fecha de compra.';
  END IF;
END$$

DELIMITER ;

-- 3
DELIMITER $$

CREATE TRIGGER registrar_factura_nueva
AFTER INSERT ON factura
FOR EACH ROW
BEGIN
  SELECT CONCAT('Factura registrada: ID=', NEW.id_factura, ', Total=', NEW.valor) AS mensaje;
END$$

DELIMITER ;

-- 4
DELIMITER $$

CREATE TRIGGER asignar_rol_defecto
BEFORE INSERT ON cliente
FOR EACH ROW
BEGIN
  IF NEW.id_rol IS NULL THEN
    SET NEW.id_rol = 1;
  END IF;
END$$

DELIMITER ;

-- 5
DELIMITER $$

CREATE TRIGGER validar_numero_telefono
BEFORE INSERT ON cliente
FOR EACH ROW
BEGIN
  IF CHAR_LENGTH(NEW.telefono) != 8 THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'El número de teléfono debe contener exactamente 8 dígitos.';
  END IF;
END$$

DELIMITER ;
