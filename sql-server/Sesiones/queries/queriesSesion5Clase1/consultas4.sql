ALTER PROCEDURE CLIENTE_LISTAR
(@Nombre VARCHAR(50))
AS
BEGIN
	SELECT Nombre FROM EMPLEADO WHERE NOMBRE LIKE '%' + @Nombre + '%'
END

ALTER PROCEDURE EMPLEADO_INSERT
(@NOMBRE VARCHAR(50), @DEPID INT)
AS
BEGIN
	INSERT INTO EMPLEADO VALUES (@NOMBRE, @DEPID)
	SELECT * FROM EMPLEADO
END

--EXEC CLIENTE_LISTAR 'o'
EXEC EMPLEADO_INSERT 'Miguel', '33'
