CREATE TRIGGER TG_Empleado
ON Empleado
FOR INSERT
AS
PRINT 'Inserci�n en la Tabla'

SELECT @Nombre = ins.Nombre FROM INSERTED emp;
