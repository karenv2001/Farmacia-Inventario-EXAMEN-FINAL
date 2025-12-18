
CREATE DATABASE IF NOT EXISTS farmacia_db;
USE farmacia_db;

CREATE TABLE proveedores (
    ProveedorId INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100)
);

CREATE TABLE medicamentos (
    MedicamentoId INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100),
    Precio DECIMAL(10,2),
    Stock INT,
    ProveedorId INT,
    FOREIGN KEY (ProveedorId) REFERENCES proveedores(ProveedorId)
);

CREATE TABLE ventas (
    VentaId INT AUTO_INCREMENT PRIMARY KEY,
    Fecha DATETIME
);

CREATE TABLE detallesventa (
    DetalleVentaId INT AUTO_INCREMENT PRIMARY KEY,
    VentaId INT,
    MedicamentoId INT,
    Cantidad INT,
    FOREIGN KEY (VentaId) REFERENCES ventas(VentaId),
    FOREIGN KEY (MedicamentoId) REFERENCES medicamentos(MedicamentoId)
);
