DROP DATABASE IF EXISTS libros;
CREATE DATABASE libros;
USE libros;

CREATE TABLE Autor (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR (50),
  dni VARCHAR (10) UNIQUE KEY
);

INSERT INTO Autor VALUES (1, 'Federico Valverde', '4759951A');
INSERT INTO Autor (nombre, dni) VALUES ('Adrian Mustatea', 'Y1733762J');
SELECT * FROM Autor;

CREATE TABLE Tienda (
  cif VARCHAR (10) PRIMARY KEY,
  ubicacion VARCHAR (255),
  web VARCHAR (255)
);

INSERT INTO Tienda VALUES ('K31572645' , 'Calle Villaveza(MADRID, 28021)', 'www.federicovalverde.es');

SELECT * FROM Tienda;

CREATE TABLE Libro (
  isbn VARCHAR (255) PRIMARY KEY,
  titulo VARCHAR (255),
  genero VARCHAR (255) DEFAULT'Fantasía',
  precio DOUBLE,
  fecha_publicacion DATE,
  CHECK (Fecha_publicacion > '2014-01-01'),
  CHECK (Precio < 50),
  id_autor INT,
  cif_tienda VARCHAR (10),
  FOREIGN KEY (id_autor) REFERENCES Autor(id),
  FOREIGN KEY (cif_tienda) REFERENCES Tienda(cif)

);

SELECT * FROM Libro;
