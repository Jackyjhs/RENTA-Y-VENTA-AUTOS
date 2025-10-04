CREATE TABLE Sucursales (
    ID_Sucursal INT NOT NULL IDENTITY PRIMARY KEY, 
    Nombre VARCHAR(100) NOT NULL,
    Direccion VARCHAR(255) NOT NULL,
    Telefono VARCHAR(15),
    Email VARCHAR(100)
);