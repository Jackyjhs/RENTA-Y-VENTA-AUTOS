CREATE TABLE Clientes (
    ID_Cliente INT NOT NULL IDENTITY PRIMARY KEY,
    DocumentoIdentificacion VARCHAR(20) UNIQUE, 
    nombreCompleto VARCHAR(100) NOT NULL,
    Telefono VARCHAR(15),
    Direccion VARCHAR(150),
    Email VARCHAR(100) 
);