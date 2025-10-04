CREATE TABLE Rentas (
    ID_Renta INT NOT NULL IDENTITY PRIMARY KEY,
    FK_PlacaCarro VARCHAR(10) NOT NULL,
    FK_ClienteID INT NOT NULL,
    FK_UsuarioID INT NOT NULL, 
    Fecha_Inicio DATE NOT NULL,
    Fecha_Fin_RegresaCarro DATE NOT NULL,
    Total_Dias INT NOT NULL,
    Costo_Renta_Total DECIMAL(10,2) NOT NULL,
    Anticipo DECIMAL(10,2), 
    Monto_Depreciacion DECIMAL(10,2), 
    Estado_Renta VARCHAR(20) NOT NULL, 
    FOREIGN KEY (FK_PlacaCarro) REFERENCES Carros(Placa),
    FOREIGN KEY (FK_ClienteID) REFERENCES Clientes(ID_Cliente),
    FOREIGN KEY (FK_UsuarioID) REFERENCES Usuarios(ID_Usuario)
);