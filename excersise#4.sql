CREATE VIEW vista_vestidos AS 
SELECT nombre, tono
FROM vestido;

CREATE VIEW vista_roles_disponibles AS
SELECT id_rol, nombre_rol
FROM roles;

CREATE VIEW vista_clientes AS
SELECT id_cliente, nombre, apellido, telefono, rol_id
FROM cliente;

CREATE VIEW vista_fechas_compra AS
SELECT fecha_compra
FROM compras;

CREATE VIEW vista_valores_ticket AS
SELECT total  
FROM ticket;
