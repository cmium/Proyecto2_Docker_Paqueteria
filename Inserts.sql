
--INSERTS
-----------
Select * from Cliente

-- Registros en la tabla Cliente
INSERT INTO Cliente (Cliente_ID, Nombre_Completo, Direccion, Telefono, correo_electronico)
VALUES
    (1, 'Juan Soprano Pérez', 'Zona 18, 12 Calle, Ciudad Guatemala', '1234-4567', 'juan@email.com'),
    (2, 'María Josefina López', '3ra Avenida, Ciudad Satelite', '4987-4654', 'maria@email.com'),
    (3, 'Carlos Yat Rodríguez', '15 Calle, Mixco', '5555-5555', 'carlos@email.com'),
    (4, 'Ana Maria Gutierrez Martínez', '12 Calle, Ciudad De las flores', '1111-2222', 'ana@email.com'),
    (5, 'Miguel Vargas', 'Zona 18', '7777-8877', 'miguel@email.com'),
	(6, 'Pedro Jose Vargas Garcia', 'Zona 17', '54890-8877', 'pedro@email.com');


-- Registros en la tabla Tipo_Servicio
INSERT INTO Tipo_Servicio (TipoServicio_ID, Descripcion, Costo_Servicio)
VALUES
    (1, 'Servicio Estandar', 15.00),
    (2, 'Servicio Premium', 20.00),
    (3, 'Servicio Express', 25.00),
    (4, 'Servicio COD', 35.00),
    (5, 'Servicio Agencia - Agencia', 30.00),
    (6, 'Servicio Internacional', 90.00);

	Select * from Tipo_Servicio


--Registros en la tabla Direccion
INSERT INTO Direccion (DireccionEntrega_ID, Direccion, Geolocalizacion)
VALUES
    (1, '14 Calle, Ciudad Guatemala', '123.456, -789.123'),
    (2, '15 Avenida 7-20, Ciudad Satelite', '987.654, -321.987'),
    (3, '13 Calle, Zona 18', '555.555, -555.555'),
    (4, '15 Avenida Zona 15, Los Olivos', '111.222, -333.111'),
    (5, '7 Avenida, Zona 18', '777.888, -999.777'),
	(6, 'Ciudad Guatemala, Zona 18', '123.456, -789.222');

		Select * from Direccion

-- Registros en la tabla Empleado
INSERT INTO Empleado (Empleado_ID, Nombre_Completo, Direccion, Telefono)
VALUES
    (1, 'Empleado 1', '5 Calle 35-67 Zona 24', '1111-1111'),
    (2, 'Empleado 2', '15 Calle 20-60 Zona 21', '2222-2222'),
    (3, 'Empleado 3', '12 Calle 15-74 Zona 13', '3333-3333'),
    (4, 'Empleado 4', '6 Calle 20-10 Zona 5', '4444-4444'),
    (5, 'Empleado 5', '2 Calle 2-14 Zona 14', '5555-5555');
	
	Select * from Empleado

-- Registros en la tabla Paquete
INSERT INTO Paquete (Paquete_ID, Descripcion, Peso, Alto, Ancho, Largo, CostoAproximado, Cliente_ID, TipoServicio_ID, FechaEstimadaEntrega, DireccionEntrega_ID, Ingresadapor, ID_Estado_Entrega)
VALUES
    (1, 'Paquete 1', 5.0, 10.0, 15.0, 20.0, 100.00, 1, 1, '2023-10-15', 1, 1, 6),
    (2, 'Paquete 2', 7.5, 12.0, 18.0, 24.0, 150.00, 2, 2, '2023-10-16', 2, 2,1), 
    (3, 'Paquete 3', 10.0, 15.0, 20.0, 30.0, 120.00, 3, 3,  '2023-10-17', 3, 3,4),
    (4, 'Paquete 4', 3.0, 8.0, 12.0, 15.0, 90.00, 4, 4,  '2023-10-18', 4, 4,2),
    (5, 'Paquete 5', 8.5, 14.0, 22.0, 28.0, 130.00, 5, 5,  '2023-10-19', 5, 5,3),
	(6, 'Paquete 6', 60.0, 15.0, 15.0, 20.0, 170.00, 5, 1, '2022-08-15', 1, 1,4),
    (7, 'Paquete 7', 7.5, 12.0, 18.0, 24.0, 150.00, 2, 2, '2023-10-16', 2, 2,5), 
    (8, 'Paquete 8', 10.0, 15.0, 20.0, 30.0, 120.00, 3, 3,  '2023-10-17', 3, 3,4),
    (9, 'Paquete 9', 30.0, 12.0, 15.0, 10.0, 110.00, 5, 1, '2022-08-23', 1, 1,6),
    (10, 'Paquete 10', 60.0, 15.0, 15.0, 20.0, 170.00, 5, 1, '2022-08-30', 1, 3,6),
	(11, 'Paquete 11', 10.0, 15.0, 20.0, 30.0, 130.00, 3, 1,  '2023-10-17', 3, 3,4),
    (12, 'Paquete 12', 3.0, 8.0, 12.0, 15.0, 93.00, 4, 3,  '2023-10-18', 5, 4,4),
    (13, 'Paquete 13', 8.5, 14.0, 22.0, 28.0, 125.00, 1, 5,  '2023-10-19', 6, 5,4),
	(14, 'Paquete 14', 10, 15.0, 10.0, 16.0, 140.00, 1, 3,  '2023-11-19', 1, 1,3),
	(15, 'Paquete 5', 5, 20.0, 25.0, 25.0, 145.00, 3, 4,  '2023-10-15', 2, 2,3);

	Select * from Paquete

	--Se agrega el campo de ID_Estado_Entrega a la tabla Paquete
	ALTER TABLE Paquete
	ADD ID_Estado_Entrega INT;

	-- Registros en la tabla Paquete_Estado
INSERT INTO Paquete_Estado (Paquete_Estado_ID, Descripcion)
VALUES

    (1, 'Recolecta'),
    (2, 'Recibido'),
    (3, 'En tránsito'),
    (4, 'Demorado'),
    (5, 'Entrega Cancelada'),
	(6, 'Entregado');

	Select * from Paquete_Estado



-- Registros en la tabla Detalle_Paquete_Seguimiento
INSERT INTO Detalle_Paquete_Seguimiento (PaqSeguimiento_ID, Paquete_ID, Empleado_ID, Fecha, Paquete_Estado_ID, Comentarios)
VALUES
    (1, 1, 1, '2023-10-15 08:00:00', 6, 'Entregado con éxito'),
    (2, 2, 2, '2023-10-16 09:30:00', 1, 'En proceso de recoleccion'),						
    (3, 3, 3, '2023-10-17 10:45:00', 4, 'Demora en ruta'),
    (4, 4, 4, '2023-10-18 11:15:00', 2, 'Mensajero ha recibido el paquete'),
    (5, 5, 5, '2023-10-19 12:30:00', 3, 'Paquete en transito'),
	(6, 6, 1, '2022-08-15 14:00:00', 4, 'Demora en ruta'), --
	(7, 7, 2, '2023-10-16 11:30:00', 5, 'Entrega cancelada por cliente'),
	(8, 8, 3, '2023-10-17 08:00:00', 4, 'Demora por cambios climaticos'),
    (9, 9, 4, '2022-08-23 13:10:00', 6, 'Entregado con éxito'), --
    (10, 10, 5, '2022-08-30 09:45:00', 6, 'Entregado con éxito'), --
    (11, 11, 1, '2023-10-17 13:15:00', 4, 'Demora'),
    (12, 12, 2, '2023-10-18 08:20:00', 4, 'Demora'),
	(13, 13, 3, '2023-10-19 15:17:00', 4, 'Demora'),
	(14, 14, 4, '2023-11-19 11:05:00', 3, 'Paquete en transito'),
	(15, 15, 5, '2023-10-15 11:40:00', 3, 'Paquete en transito');
	Select * from Detalle_Paquete_Seguimiento
