USE [BDVeterinaria]
GO
/****** Object:  StoredProcedure [dbo].[USP_Especie_CRUD]    Script Date: 18/09/2020 22:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[USP_Especie_CRUD]
(
@Operacion CHAR(1), 
@EspecieId INT = NULL, 
@Descripcion VARCHAR(50) = NULL
)
AS
BEGIN
	IF(@Operacion = 'C')
	BEGIN
		INSERT INTO Especie(Descripcion) VALUES (@Descripcion)
	END
	IF(@Operacion = 'R')
	BEGIN
		SELECT ESP.EspecieId, ESP.Descripcion
		FROM Especie ESP 
	END
	IF(@Operacion = 'U')
	BEGIN
		UPDATE Especie SET Descripcion = @Descripcion
		WHERE EspecieId = @EspecieId
	END
	IF(@Operacion = 'D')
	BEGIN
		DELETE Especie 
		WHERE EspecieId = @EspecieId
	END
	IF(@Operacion = 'F')
	BEGIN
		SELECT ESP.EspecieId, ESP.Descripcion
		FROM Especie ESP 
		WHERE EspecieId = @EspecieId
	END

END