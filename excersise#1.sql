USE VentasVestidos;

CREATE TABLE cliente (
id_cliente int primary key,
nombre varchar(25),
apellido varchar(25),
telefono int,
rolid int,
compraid int);

CREATE TABLE roles (
id_rol int primary key auto_increment,
nombre_rol varchar(25));

CREATE TABLE compras (
id_compra int primary key auto_increment,
fecha_compra double,
fecha_entrega double);

CREATE TABLE ticket (
id_ticket int primary key auto_increment,
total int);

CREATE TABLE vestido (
id_vestido int primary key,
nombre varchar(25),
color varchar(25),
talla varchar(25),
precio int);

CREATE TABLE vestido_compras (
vestidoid int,
compraid int);

CREATE TABLE ticket_compras (
ticketid int,
compraid int);

CREATE TABLE historial_telefonos (
id_historial INT AUTO_INCREMENT PRIMARY KEY,
id_cliente INT,
telefono_anterior INT,
telefono_nuevo INT,
fecha_cambio DATETIME
);

CREATE TABLE log_cliente_insert (
id_log INT AUTO_INCREMENT PRIMARY KEY,
id_cliente INT,
nombre VARCHAR(25),
apellido VARCHAR(25),
fecha_insert DATETIME
);

CREATE TABLE log_cliente_delete (
id_log INT AUTO_INCREMENT PRIMARY KEY,
id_cliente INT,
nombre VARCHAR(25),
apellido VARCHAR(25),
fecha_delete DATETIME
);

CREATE TABLE log_ticket_altas (
id_log INT AUTO_INCREMENT PRIMARY KEY,
id_ticket INT,
total INT,
fecha DATETIME
);

ALTER TABLE cliente
ADD CONSTRAINT fk_cliente_roles 
FOREIGN KEY (rolid) REFERENCES roles (id_rol);

ALTER TABLE cliente
ADD CONSTRAINT fk_cliente_compras 
FOREIGN KEY (compraid) REFERENCES compras (id_compra);

ALTER TABLE vestido_compras
ADD CONSTRAINT fk_vestido_compras 
FOREIGN KEY (vestidoid) REFERENCES vestido_compras (compraid);

ALTER TABLE ticket_compras
ADD CONSTRAINT fk_ticket_compras 
FOREIGN KEY (ticketid) REFERENCES ticket_compras (compraid);
