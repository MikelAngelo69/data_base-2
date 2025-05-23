
USE Disfraces;

CREATE TABLE usuario (
id_usuario int primary key,
nom varchar (25),
ape varchar (25),
tel int,
Rolesid_rol int,
prestamosid_pres int);

CREATE TABLE roles (
id_rol int primary key auto_increment,
nom_rol varchar (25));

CREATE TABLE prestamos (
id_pres int primary key auto_increment,
fecha_pres double,
fecha_dev double);

CREATE TABLE factura (
id_factura int primary key auto_increment,
valor int);

CREATE TABLE disfraz (
id_disfraz int primary key,
nom varchar (25),
color varchar (25),
talla varchar (25),
valor int);

CREATE TABLE disfraz_prestamos (
disfrazid_disfraz int,
prestamosid_pres int);

CREATE TABLE factura_prestamos (
facturaid_factura int,
prestamosid_pres int);

CREATE TABLE historial_telefonos (
  id_historial INT AUTO_INCREMENT PRIMARY KEY,
  id_usuario INT,
  telefono_anterior INT,
  telefono_nuevo INT,
  fecha_cambio DATETIME
);

CREATE TABLE log_usuario_insert (
  id_log INT AUTO_INCREMENT PRIMARY KEY,
  id_usuario INT,
  nombre VARCHAR(25),
  apellido VARCHAR(25),
  fecha_insert DATETIME
);

CREATE TABLE log_usuario_delete (
  id_log INT AUTO_INCREMENT PRIMARY KEY,
  id_usuario INT,
  nombre VARCHAR(25),
  apellido VARCHAR(25),
  fecha_delete DATETIME
);

CREATE TABLE log_facturas_altas (
  id_log INT AUTO_INCREMENT PRIMARY KEY,
  id_factura INT,
  valor INT,
  fecha DATETIME
);



ALTER TABLE usuario
ADD CONSTRAINT Fk_usuario_roles 
FOREIGN KEY (Rolesid_rol) REFERENCES roles (id_rol);

ALTER TABLE usuario
ADD CONSTRAINT Fk_usuario_prestamos 
FOREIGN KEY (prestamosid_pres) REFERENCES prestamos (id_pres);

ALTER TABLE disfraz_prestamos
ADD CONSTRAINT Fk_disfraz_prestamos 
FOREIGN KEY (disfrazid_disfraz) REFERENCES disfraz_prestamos (prestamosid_pres);

ALTER TABLE factura_prestamos
ADD CONSTRAINT Fk_factura_prestamos 
FOREIGN KEY (facturaid_factura ) REFERENCES factura_prestamos (prestamosid_pres );



