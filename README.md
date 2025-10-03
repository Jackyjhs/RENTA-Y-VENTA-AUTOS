# RENTA-Y-VENTA-AUTOS
Creación de un sistema para el Registro de Renta  y venta de autos, donde se debe de Llevar control de venta y renta carros, sucursales, anticipo, depreciación, roles de usuario, factura, 

CREATE TABLE Administrador (
	ID_Paciente int not null identity primary key,
	genero char(1) not null,
	DocumentoIdentificacion varchar(100),
	nombreCompleto varchar(100) not null,
	Fecha_Nacimiento date not null,
	Direccion varchar(100)not null,
	Telefono varchar(9) not null,
);

CREATE TABLE Vendedor (
	ID_Paciente int not null identity primary key,
	genero char(1) not null,
	DocumentoIdentificacion varchar(100),
	nombreCompleto varchar(100) not null,
	Fecha_Nacimiento date not null,
	Direccion varchar(100)not null,
	Telefono varchar(9) not null,
);

CREATE TABLE Cliente (
	ID_Paciente int not null identity primary key,
	genero char(1) not null,
	DocumentoIdentificacion varchar(100),
	nombreCompleto varchar(100) not null,
	Fecha_Nacimiento date not null,
	Direccion varchar(100)not null,
	Telefono varchar(9) not null,
);

CREATE TABLE Usuarios (
    usuario_id INT PRIMARY KEY,
    nombre_usuario VARCHAR(50) NOT NULL ,
    contrasena_hash VARCHAR(100) NOT NULL, 
    email VARCHAR(100) ,
    fecha_creacion DATE
);

CREATE TABLE Usuario_Roles (
    usuario_id INT,
    rol_id INT,
    PRIMARY KEY (usuario_id, rol_id),
    FOREIGN KEY (usuario_id) REFERENCES Usuarios(usuario_id),
    FOREIGN KEY (rol_id) REFERENCES Roles(rol_id)
	);
