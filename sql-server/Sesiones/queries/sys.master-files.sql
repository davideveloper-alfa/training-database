USE master
GO

--SELECT * FROM sys.master_files
--WHERE name LIKE '%bd_ejemplo%'

SELECT * FROM sys.master_files
WHERE name LIKE 'Ventas%'

--Note que el campo size es la suma del tama�o del archivo principal y el de registro.
--Si no se especifica tama�o m�ximo, max-size es igual a -1
