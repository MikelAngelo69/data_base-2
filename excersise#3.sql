CALL insert_rol("comprador");
CALL insert_rol("asesor");

CALL insert_vestido(10, "URBANO", "BEIGE", "XS", 98000);
CALL insert_vestido(11, "GLAMOUR", "MORADO", "M", 165000);
CALL insert_vestido(12, "NOCHE ELEGANTE", "NEGRO", "L", 210000);
CALL insert_vestido(13, "PRIMAVERA", "VERDE MENTA", "S", 112000);
CALL insert_vestido(14, "TROPICAL", "CORAL", "M", 145000);
CALL insert_vestido(15, "COCTEL", "AZUL REY", "L", 158000);

CALL insert_compra(201, '2025-06-02', '2025-06-05');
CALL insert_compra(202, '2025-06-08', '2025-06-10');
CALL insert_compra(203, '2025-06-15', '2025-06-18');

CALL insert_ticket(3001, 98000);
CALL insert_ticket(3002, 165000);
CALL insert_ticket(3003, 210000);

CALL insert_cliente(1029384756, "valentina", "pineda", 3184567890);
CALL insert_cliente(1093847562, "daniela", "quintero", 3176543210);
CALL insert_cliente(1009283746, "mariana", "castro", 3198765432);

INSERT INTO vestido_compras VALUES (10, 201), (11, 201), (12, 202);
INSERT INTO ticket_compras VALUES (3001, 201), (3002, 202), (3003, 203);
