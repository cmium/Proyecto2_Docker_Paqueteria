--QueryCreacion Base de Datos

-- Tabla Cliente
CREATE TABLE Cliente (
    Cliente_ID INT PRIMARY KEY,
    Nombre_Completo VARCHAR(255),
    Direccion VARCHAR(255),
    Telefono VARCHAR(15),
    correo_electronico VARCHAR(255)
);

-- Tabla Tipo_Servicio
CREATE TABLE Tipo_Servicio (
    TipoServicio_ID INT PRIMARY KEY,
    Descripcion VARCHAR(255),
    Costo_Servicio DECIMAL(10, 2)
);

-- Tabla Direccion
CREATE TABLE Direccion (
    DireccionEntrega_ID INT PRIMARY KEY,
    Direccion VARCHAR(255),
    Geolocalizacion VARCHAR(255)
);

-- Tabla Paquete
CREATE TABLE Paquete (
    Paquete_ID INT PRIMARY KEY,
    Descripcion VARCHAR(255),
    Peso DECIMAL(10, 2),
    Alto DECIMAL(10, 2),
    Ancho DECIMAL(10, 2),
    Largo DECIMAL(10, 2),
    CostoAproximado DECIMAL(10, 2),
    Cliente_ID INT,
    TipoServicio_ID INT,
    FechaEstimadaEntrega DATE,
    DireccionEntrega_ID INT,
    Ingresadapor INT
);

-- Tabla Detalle_Paquete_Seguimiento
CREATE TABLE Detalle_Paquete_Seguimiento (
    PaqSeguimiento_ID INT PRIMARY KEY,
    Paquete_ID INT,
    Empleado_ID INT,
    Fecha DATETIME,
    Paquete_Estado_ID INT,
    Comentarios TEXT
);

-- Tabla Empleado
CREATE TABLE Empleado (
    Empleado_ID INT PRIMARY KEY,
    Nombre_Completo VARCHAR(255),
    Direccion VARCHAR(255),
    Telefono VARCHAR(15)
);

-- Tabla Paquete_Estado
CREATE TABLE Paquete_Estado (
    Paquete_Estado_ID INT PRIMARY KEY,
    Descripcion VARCHAR(255)
);

-- FK
ALTER TABLE Paquete ADD FOREIGN KEY (Cliente_ID) REFERENCES Cliente(Cliente_ID);
ALTER TABLE Paquete ADD FOREIGN KEY (TipoServicio_ID) REFERENCES Tipo_Servicio(TipoServicio_ID);
ALTER TABLE Paquete ADD FOREIGN KEY (DireccionEntrega_ID) REFERENCES Direccion(DireccionEntrega_ID);
ALTER TABLE Paquete ADD FOREIGN KEY (Ingresadapor) REFERENCES Empleado(Empleado_ID);
ALTER TABLE Detalle_Paquete_Seguimiento ADD FOREIGN KEY (Paquete_ID) REFERENCES Paquete(Paquete_ID);
ALTER TABLE Detalle_Paquete_Seguimiento ADD FOREIGN KEY (Empleado_ID) REFERENCES Empleado(Empleado_ID);
ALTER TABLE Detalle_Paquete_Seguimiento ADD FOREIGN KEY (Paquete_Estado_ID) REFERENCES Paquete_Estado(Paquete_Estado_ID);

