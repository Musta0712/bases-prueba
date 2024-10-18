DROP DATABASE IF EXISTS videojuegos;
CREATE DATABASE videojuegos;
USE videojuegos;

CREATE TABLE Desarrolladora (
  nombre VARCHAR(100) PRIMARY KEY
);

CREATE TABLE Juego (
  id INT PRIMARY KEY,
  nombre VARCHAR(50),
  fk_Desarrolladora VARCHAR(100),
  FOREIGN KEY (fk_Desarrolladora) REFERENCES Desarrolladora(nombre)
   ON DELETE CASCADE
);

CREATE TABLE Personajes (
  nombre VARCHAR(50) PRIMARY KEY,
  vida FLOAT,
  fk_Juego INT,
  FOREIGN KEY (fk_Juego) REFERENCES Juego(id)
   ON DELETE SET NULL
);

INSERT INTO Desarrolladora VALUES ('Buggy Soft');
INSERT INTO Juego VALUES
  (0, 'Las aventuras del capitán Salami', 'Buggy Soft'),
  (1, 'Las aventuras del capitán Salami - Vegan ed.', 'Buggy Soft');
INSERT INTO Personajes VALUES
  ('Cap. Salami',10.0, 0),
  ('Señor Cuchiller',10.0, 0),
  ('Cap. Seitán',10.0, 1),
  ('Señor Cucharilla',10.0, 1);

SELECT * FROM Desarrolladora;
SELECT * FROM Juego;
SELECT * FROM Personajes;

-- DELETE FROM Juego WHERE id=0;
DELETE FROM Desarrolladora WHERE nombre='Buggy Soft';
SELECT * FROM Juego;
SELECT * FROM Personajes;
