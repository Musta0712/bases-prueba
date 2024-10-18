DROP DATABASE IF EXISTS tipo_datos;
CREATE DATABASE tipo_datos;
Use tipo_datos;

CREATE TABLE TipoDatos (
  flotante FLOAT(5,2),
  decimales DECIMAL(7,3),
  codigo CHAR(4),
  texto TEXT,
  dia DATE,
  momento DATETIME NULL,
  hora TIME,
  color ENUM('Rojo', 'Verde', 'Azul')
);

INSERT INTO TipoDatos VALUES
(25.5, 4.5, '521', 'adrian', '2003-09-27', '2003-09-27 14:05:53', '14:05:53', 'Verde');
