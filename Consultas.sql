-----
-- Consultas

-- #1
--Mostrar el total de paquetes que tiene estado: "En Transito"

-- Solo muestra el total de paquetes en transito
SELECT COUNT(*) AS TotalPaquetesEnTransito
FROM Paquete
WHERE ID_Estado_Entrega = 3;

-- Lista los paquetes en transito 
SELECT p.*
FROM Paquete AS p
WHERE p.ID_Estado_Entrega = 3 -- ID del estado "En Tránsito";


-- #2
-- Mostrar los paquetes del cliente "Miguel Vargas" que tienen estado "entregado" en el mes de Agosto del 2022, con tipo de servicio Estandar.

SELECT p.*
FROM Paquete AS p
INNER JOIN Cliente AS c ON p.Cliente_ID = c.Cliente_ID
WHERE c.Nombre_Completo = 'Miguel Vargas'
  AND p.ID_Estado_Entrega = 6 -- ID del estado "Entregado"
  AND p.TipoServicio_ID = 1 -- ID del servicio "Estandar"
  AND YEAR(p.FechaEstimadaEntrega) = 2022
  AND MONTH(p.FechaEstimadaEntrega) = 8;



-- #3 
-- Mostrar el conteo de paquetes que tengan el estado "Demorado" que tengan por dirección la zona 18

-- Solo muestra el total de paquetes en Demora
SELECT COUNT(*) AS Total_Paquetes_Demorados_Zona_18
FROM Paquete AS p
INNER JOIN Direccion AS d ON p.DireccionEntrega_ID = d.DireccionEntrega_ID
WHERE p.ID_Estado_Entrega = 4
  AND d.Direccion LIKE '%Zona 18%';

-- Lista los paquetes demorados
SELECT p.Paquete_ID, p.Descripcion, p.FechaEstimadaEntrega, ps.Fecha AS FechaSeguimiento, ps.Comentarios
FROM Paquete AS p
INNER JOIN Direccion AS d ON p.DireccionEntrega_ID = d.DireccionEntrega_ID
INNER JOIN Detalle_Paquete_Seguimiento AS ps ON p.Paquete_ID = ps.Paquete_ID
WHERE p.ID_Estado_Entrega = 4
  AND d.Direccion LIKE '%Zona 18%';



-- Borrado de los datos de un cliente en la tabla Cliente
DELETE FROM Paquete
WHERE Cliente_ID = 3;

DELETE FROM Cliente
WHERE Cliente_ID = 3; 
Select * From Cliente


UPDATE Cliente
SET Nombre_Completo = '',
    Direccion = '',
    Telefono = '',
    correo_electronico = ''
WHERE Cliente_ID = 3;
Select * From Cliente


-- Actualizar el numero de telefono de un empleado
UPDATE Empleado
SET Telefono = '2411-1800'
WHERE Empleado_ID = 1;

Select * From Empleado
