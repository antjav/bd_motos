/*==============================================================*/
/* Datos: EMPRESA                                               */
/*==============================================================*/
INSERT INTO EMPRESA values(1, 'Marquitos S.A.', 'Barrio Jocay',      'Manta', 'marq@hotmail.com',   '0945637283');
INSERT INTO EMPRESA values(2, 'Alis C.A.',      'Av. 24 y Calle 17', 'Manta', 'alis@gmail.com',     '0956989782');
INSERT INTO EMPRESA values(3, 'Miner S.A.',     'Barrio 8 de Enero', 'Manta', 'contacto@miner.com', '0912341628');

/*==============================================================*/
/* Datos: REVISIÓN                                              */
/*==============================================================*/
INSERT INTO REVISION values(1, 'EXCELENTE', '2021-05-11', 'SIEMPRE');
INSERT INTO REVISION values(2, 'DAÑADO',    '2021-01-01', 'CASI NUNCA');
INSERT INTO REVISION values(3, 'EXCELENTE', '2021-07-13', 'SIEMPRE');
INSERT INTO REVISION values(4, 'DAÑADO',    '2021-02-28', 'NUNCA');
INSERT INTO REVISION values(5, 'EXCELENTE', '2021-06-06', 'SIEMPRE');

/*==============================================================*/
/* Datos: CLIENTE                                               */
/*==============================================================*/
INSERT INTO CLIENTE values(1, '0512639678', 'Marlon Luis',       'Zambrano López', 'mlzambrano@gmail.com', '1985-12-25', '0993209428');
INSERT INTO CLIENTE values(2, '1304789561', 'Anthony Javier',    'Torres Sánchez', 'ajtorres@gmail.com',   '1998-06-13', '0997895852');
INSERT INTO CLIENTE values(3, '0145781032', 'Bryan Elian',       'Alcivar Pilay',  'bealcivar@gmail.com',  '2000-05-05', '0980741236');
INSERT INTO CLIENTE values(4, '1353145698', 'Romina Alisson',    'Cedeño Álava',   'racedeno@gmail.com',   '1975-10-07', '0912369874');
INSERT INTO CLIENTE values(5, '1306369170', 'Daniela Valentina', 'Zapata García',  'dvzapata@gmail.com',   '2001-12-08', '0997895852');

/*==============================================================*/
/* Datos: EMPLEADO                                              */
/*==============================================================*/
INSERT INTO EMPLEADO values(1, 1, '1312310012', 'Fabian Francisco',  'Piguave Cálderon', 'ffpiguave@gmail.com', 'Barrio Umiña',      '0963222105', 'MOTORIZADO');
INSERT INTO EMPLEADO values(2, 1, '0514785465', 'Luis Antonio',      'Franco López',     'lafranco@gmail.com',  'Los Esteros',       '0922244455', 'MOTORIZADO');
INSERT INTO EMPLEADO values(3, 1, '1310055447', 'Angie Gabriela',    'Tubay Zamora',     'agtubay@gmail.com',   'Av. 18 y Calle 14', '0963222178', 'ADMINISTRATIVO');
INSERT INTO EMPLEADO values(4, 1, '1312310055', 'Edisson Celestino', 'Chilán Vera',      'ecchilan@gmail.com',  'Barrio Jocay',      '0963222002', 'MOTORIZADO');

/*==============================================================*/
/* Datos: MOTOCICLETA                                           */
/*==============================================================*/
INSERT INTO MOTOCICLETA values(1, 4, 'XYZ-4515', '150', '2019-05-14', 'Rojo',   'NO');
INSERT INTO MOTOCICLETA values(2, 3, 'JKL-7894', '100', '2020-07-24', 'Azul',   'NO');
INSERT INTO MOTOCICLETA values(3, 2, 'QWE-9874', '125', '2018-12-08', 'Blanca', 'SI');
INSERT INTO MOTOCICLETA values(4, 1, 'MNB-4515', '120', '2021-01-05', 'Negra',  'SI');

/*==============================================================*/
/* Datos: LICENCIA                                              */
/*==============================================================*/
INSERT INTO LICENCIA values(1, 4, 1, '2019-11-05', '2024-11-05', 'ACTIVA',   'B');
INSERT INTO LICENCIA values(2, 3, 2, '2016-09-22', '2021-09-22', 'INACTIVA', 'A');
INSERT INTO LICENCIA values(3, 2, 3, '2021-05-15', '2026-05-15', 'ACTIVA',   'C');
INSERT INTO LICENCIA values(4, 1, 4, '2020-08-17', '2024-08-17', 'ACTIVA',   'B');

/*==============================================================*/
/* Datos: SOLICITUD                                              */
/*==============================================================*/
INSERT INTO SOLICITUD values(1, 1, 4, 'Llamada telefónica',       '2022-01-05');
INSERT INTO SOLICITUD values(2, 1, 3, 'Mensaje vía WhatsApp',     '2022-01-07');
INSERT INTO SOLICITUD values(3, 2, 2, 'Correo de la institución', '2022-01-08');
INSERT INTO SOLICITUD values(4, 2, 1, 'Llamada telefónica',       '2022-01-12');

/*==============================================================*/
/* Datos: ENTREGA                                               */
/*==============================================================*/
INSERT INTO ENTREGA values(1, 4, 'Servicio de encomiendas',           8, '2022-01-05', 2, 2, 12, 20, 0);
INSERT INTO ENTREGA values(2, 3, 'Servicio de entrega de comida',    12, '2022-01-07', 3, 3, 12, 20, 0);
INSERT INTO ENTREGA values(3, 2, 'Servicio de entrega de productos', 10, '2022-01-08', 1, 1, 12, 15, 0);
INSERT INTO ENTREGA values(4, 1, 'Servicio de encomiendas',           5, '2022-01-12', 4, 2, 12, 10, 0);

/*==============================================================*/
/* Datos: SECTOR                                                */
/*==============================================================*/
INSERT INTO SECTOR values(1, 4, 'Tarqui',      'Manta', '130804');
INSERT INTO SECTOR values(2, 3, 'Los Esteros', 'Manta', '130612');
INSERT INTO SECTOR values(3, 2, 'Eloy Alfaro', 'Manta', '130208');
INSERT INTO SECTOR values(4, 1, 'La Aurora',   'Manta', '130028');

/*==============================================================*/
/* Datos: LUGAR                                                 */
/*==============================================================*/
INSERT INTO LUGAR values(1, 1, 'Callejón 28',       'Normal');
INSERT INTO LUGAR values(2, 4, 'Barrio Cuba',       'Peligroso');
INSERT INTO LUGAR values(3, 3, 'Barrio Miraflores', 'Tranquilo');
INSERT INTO LUGAR values(4, 2, 'Las Margaritas',    'Normal');