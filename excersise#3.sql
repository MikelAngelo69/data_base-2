
CALL insert_roles("cliente");
CALL insert_roles("empleado");


CALL insert_disfraz(1, "HADA", "VERDE", "S", 5000);
CALL insert_disfraz(2, "VACA", "BLANCO", "M", 70000);
CALL insert_disfraz(3, "BATMAN", "NEGRO", "L", 80000);
CALL insert_disfraz(4, "PIRATA", "CAFE", "XL", 90000);
CALL insert_disfraz(5, "POLICIA", "AZUL", "S", 50000);
CALL insert_disfraz(6, "SPIDERMAN", "ROJO", "L", 70000);


CALL insert_prest('2025-03-14', '2025-03-20');
CALL insert_prest('2025-04-15', '2025-04-21');
CALL insert_prest('2025-05-12', '2025-05-19');


CALL insert_factura(1010, 5000);
CALL insert_factura(1011, 70000);
CALL insert_factura(1012, 80000);


CALL insert_usuario(123366187, "luisa", "ramos", "71748522");
CALL insert_usuario(1109382414, "laura", "ortiz", "71584736");
CALL insert_usuario(1129537508, "jilian", "hernandez", "71485231");


INSERT INTO disfraz_prestamos VALUES (1, 1), (2, 1), (3, 2);
INSERT INTO factura_prestamos VALUES (1010, 1), (1011, 2), (1012, 3);
