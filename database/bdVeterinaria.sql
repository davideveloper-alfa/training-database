USE [master]
GO
/****** Object:  Database [BDVeterinaria]    Script Date: 19/09/2020 00:23:13 ******/
CREATE DATABASE [BDVeterinaria]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BDVeterinaria', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\BDVeterinaria.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BDVeterinaria_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\BDVeterinaria_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BDVeterinaria] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BDVeterinaria].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BDVeterinaria] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BDVeterinaria] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BDVeterinaria] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BDVeterinaria] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BDVeterinaria] SET ARITHABORT OFF 
GO
ALTER DATABASE [BDVeterinaria] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BDVeterinaria] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BDVeterinaria] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BDVeterinaria] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BDVeterinaria] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BDVeterinaria] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BDVeterinaria] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BDVeterinaria] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BDVeterinaria] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BDVeterinaria] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BDVeterinaria] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BDVeterinaria] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BDVeterinaria] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BDVeterinaria] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BDVeterinaria] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BDVeterinaria] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BDVeterinaria] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BDVeterinaria] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BDVeterinaria] SET  MULTI_USER 
GO
ALTER DATABASE [BDVeterinaria] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BDVeterinaria] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BDVeterinaria] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BDVeterinaria] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [BDVeterinaria] SET DELAYED_DURABILITY = DISABLED 
GO
USE [BDVeterinaria]
GO
/****** Object:  Table [dbo].[Especie]    Script Date: 19/09/2020 00:23:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Especie](
	[EspecieId] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EspecieId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mascota]    Script Date: 19/09/2020 00:23:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mascota](
	[MascotaId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Edad] [int] NOT NULL,
	[EspecieId] [int] NOT NULL,
	[Estado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MascotaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Especie] ON 

INSERT [dbo].[Especie] ([EspecieId], [Descripcion]) VALUES (1, N'Perro')
INSERT [dbo].[Especie] ([EspecieId], [Descripcion]) VALUES (2, N'Gato')
INSERT [dbo].[Especie] ([EspecieId], [Descripcion]) VALUES (3, N'Ave')
SET IDENTITY_INSERT [dbo].[Especie] OFF
SET IDENTITY_INSERT [dbo].[Mascota] ON 

INSERT [dbo].[Mascota] ([MascotaId], [Nombre], [Edad], [EspecieId], [Estado]) VALUES (1, N'Firulais', 3, 2, 0)
INSERT [dbo].[Mascota] ([MascotaId], [Nombre], [Edad], [EspecieId], [Estado]) VALUES (2, N'Lasie', 4, 1, 1)
INSERT [dbo].[Mascota] ([MascotaId], [Nombre], [Edad], [EspecieId], [Estado]) VALUES (3, N'Nicolás', 2, 2, 1)
INSERT [dbo].[Mascota] ([MascotaId], [Nombre], [Edad], [EspecieId], [Estado]) VALUES (4, N'Chimuelo', 1, 3, 1)
INSERT [dbo].[Mascota] ([MascotaId], [Nombre], [Edad], [EspecieId], [Estado]) VALUES (5, N'Estrella', 2, 1, 0)
INSERT [dbo].[Mascota] ([MascotaId], [Nombre], [Edad], [EspecieId], [Estado]) VALUES (6, N'Estrella', 2, 2, 1)
INSERT [dbo].[Mascota] ([MascotaId], [Nombre], [Edad], [EspecieId], [Estado]) VALUES (7, N'Estrella', 2, 2, 0)
INSERT [dbo].[Mascota] ([MascotaId], [Nombre], [Edad], [EspecieId], [Estado]) VALUES (9, N'Pelusa', 5, 1, 1)
INSERT [dbo].[Mascota] ([MascotaId], [Nombre], [Edad], [EspecieId], [Estado]) VALUES (10, N'Enano', 3, 1, 1)
INSERT [dbo].[Mascota] ([MascotaId], [Nombre], [Edad], [EspecieId], [Estado]) VALUES (11, N'Lorenzo', 2, 3, 0)
SET IDENTITY_INSERT [dbo].[Mascota] OFF
/****** Object:  StoredProcedure [dbo].[USP_Especie_CRUD]    Script Date: 19/09/2020 00:23:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_Especie_CRUD]
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
GO
/****** Object:  StoredProcedure [dbo].[USP_Mascota_CRUD]    Script Date: 19/09/2020 00:23:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_Mascota_CRUD]
(
@Operacion CHAR(1), 
@MascotaId INT = NULL, 
@Nombre VARCHAR(50) = NULL, 
@Edad INT = NULL, 
@EspecieId INT = NULL
)
AS
BEGIN
	IF(@Operacion = 'C')
	BEGIN
		INSERT INTO Mascota (Nombre,Edad,EspecieId,Estado) VALUES (@Nombre,@Edad,@EspecieId,1)
	END
	IF(@Operacion = 'R')
	BEGIN
		SELECT MAS.MascotaId, MAS.Nombre, MAS.Edad, MAS.EspecieId, ESP.EspecieId, ESP.Descripcion
		FROM Mascota MAS
		INNER JOIN Especie ESP ON MAS.EspecieId = ESP.EspecieId
		WHERE Estado = 1
	END
	IF(@Operacion = 'U')
	BEGIN
		UPDATE Mascota SET Nombre = @Nombre, Edad = @Edad, EspecieId = @EspecieId, Estado = 1
		WHERE MascotaId = @MascotaId
	END
	IF(@Operacion = 'D')
	BEGIN
		UPDATE Mascota SET Estado = 0
		WHERE MascotaId = @MascotaId
	END
	IF(@Operacion = 'F')
	BEGIN
		SELECT MAS.MascotaId, MAS.Nombre, MAS.Edad, MAS.EspecieId, ESP.EspecieId, ESP.Descripcion
		FROM Mascota MAS
		INNER JOIN Especie ESP ON MAS.EspecieId = ESP.EspecieId
		WHERE MascotaId = @MascotaId
	END

END
GO
USE [master]
GO
ALTER DATABASE [BDVeterinaria] SET  READ_WRITE 
GO
