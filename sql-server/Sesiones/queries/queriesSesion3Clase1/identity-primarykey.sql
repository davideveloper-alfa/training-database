USE Ventas
GO

CREATE TABLE PRUEBA
(
idprueba INT IDENTITY(1, 3),
contador INT,
otroid INT,
nombre VARCHAR(20)
)

INSERT INTO PRUEBA VALUES (1,10,'hola')
SELECT * FROM PRUEBA

CREATE TABLE OTRAPRUEBA
(
idotraprueba INT,
nombre VARCHAR(30),
idprueba INT 
)

INSERT INTO OTRAPRUEBA VALUES (1, 'OTRO1', 1)
INSERT INTO OTRAPRUEBA VALUES (2, 'OTRO2', 1)
INSERT INTO OTRAPRUEBA VALUES (3, 'OTRO3', 4)
INSERT INTO OTRAPRUEBA VALUES (4, 'OTRO4', 1)
INSERT INTO OTRAPRUEBA VALUES (5, 'OTRO5', 7)
INSERT INTO OTRAPRUEBA VALUES (6, 'OTRO6', 4)
INSERT INTO OTRAPRUEBA VALUES (7, 'OTRO7', 7)
INSERT INTO OTRAPRUEBA VALUES (8, 'OTRO8', 8)

SELECT * FROM OTRAPRUEBA O
INNER JOIN PRUEBA P ON P.idprueba = O.idprueba

SELECT * FROM PRUEBA WHERE idprueba = 4

DELETE PRUEBA WHERE idprueba = 4

SELECT * FROM OTRAPRUEBA O
INNER JOIN PRUEBA P ON P.idprueba = O.idprueba

SELECT * FROM OTRAPRUEBA

CREATE TABLE TERCERA
(
idtercera INT PRIMARY KEY,
campoid INT IDENTITY,
nombre VARCHAR(40)
)

INSERT INTO TERCERA VALUES (1,'TERCERA1')
INSERT INTO TERCERA VALUES (4,'TERCERA2')
INSERT INTO TERCERA VALUES (5,'TERCERA3')
INSERT INTO TERCERA VALUES (-3,'TERCERA4')
INSERT INTO TERCERA VALUES (0,'TERCERA5')

SELECT * FROM TERCERA
ORDER BY campoid

