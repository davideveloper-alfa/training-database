USE [master]
GO
/****** Object:  Database [BDVentaOnLine]    Script Date: 19/09/2020 00:53:38 ******/
CREATE DATABASE [BDVentaOnLine]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BDVentaOnLine', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER2019\MSSQL\DATA\BDVentaOnLine.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BDVentaOnLine_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER2019\MSSQL\DATA\BDVentaOnLine_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BDVentaOnLine] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BDVentaOnLine].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BDVentaOnLine] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BDVentaOnLine] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BDVentaOnLine] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BDVentaOnLine] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BDVentaOnLine] SET ARITHABORT OFF 
GO
ALTER DATABASE [BDVentaOnLine] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BDVentaOnLine] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BDVentaOnLine] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BDVentaOnLine] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BDVentaOnLine] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BDVentaOnLine] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BDVentaOnLine] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BDVentaOnLine] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BDVentaOnLine] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BDVentaOnLine] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BDVentaOnLine] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BDVentaOnLine] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BDVentaOnLine] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BDVentaOnLine] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BDVentaOnLine] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BDVentaOnLine] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BDVentaOnLine] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BDVentaOnLine] SET RECOVERY FULL 
GO
ALTER DATABASE [BDVentaOnLine] SET  MULTI_USER 
GO
ALTER DATABASE [BDVentaOnLine] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BDVentaOnLine] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BDVentaOnLine] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BDVentaOnLine] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BDVentaOnLine] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BDVentaOnLine', N'ON'
GO
ALTER DATABASE [BDVentaOnLine] SET QUERY_STORE = OFF
GO
USE [BDVentaOnLine]
GO
/****** Object:  Table [dbo].[Carrito]    Script Date: 19/09/2020 00:53:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carrito](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idUsuario] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catalogo]    Script Date: 19/09/2020 00:53:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalogo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[fechaInicio] [date] NULL,
	[fechaFin] [date] NULL,
	[urlImagen] [varchar](250) NOT NULL,
	[fechaCreacion] [date] NULL,
	[fechaModificacion] [date] NULL,
	[estado] [bit] NOT NULL,
 CONSTRAINT [PK_Catalogo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 19/09/2020 00:53:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[estado] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleOrden]    Script Date: 19/09/2020 00:53:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleOrden](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idOrden] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
	[precio] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Direccion]    Script Date: 19/09/2020 00:53:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Direccion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idUsuario] [int] NOT NULL,
	[distrito] [varchar](25) NOT NULL,
	[urbanizacion] [varchar](100) NULL,
	[calle] [varchar](100) NOT NULL,
	[exterior] [varchar](5) NULL,
	[interior] [varchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fabricante]    Script Date: 19/09/2020 00:53:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fabricante](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[ruc] [char](10) NOT NULL,
	[estado] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Imagen]    Script Date: 19/09/2020 00:53:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Imagen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[url] [varchar](250) NOT NULL,
	[fechaRegistro] [date] NULL,
 CONSTRAINT [PK_Imagen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedioPago]    Script Date: 19/09/2020 00:53:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedioPago](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Modulo]    Script Date: 19/09/2020 00:53:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modulo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](25) NOT NULL,
	[estado] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Operacion]    Script Date: 19/09/2020 00:53:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Operacion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](25) NOT NULL,
	[idModulo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orden]    Script Date: 19/09/2020 00:53:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orden](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idUsuario] [int] NOT NULL,
	[idMedioPago] [int] NOT NULL,
	[idDireccion] [int] NOT NULL,
	[total] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 19/09/2020 00:53:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[codigo] [char](5) NOT NULL,
	[descripcion] [varchar](250) NOT NULL,
	[precio] [decimal](10, 2) NOT NULL,
	[stock] [int] NULL,
	[idFabricante] [int] NOT NULL,
	[estado] [bit] NULL,
	[fechaRegistro] [date] NULL,
	[fechaModificacion] [date] NULL,
	[urlImagen] [varchar](2509) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto_Catalogo]    Script Date: 19/09/2020 00:53:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto_Catalogo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idProducto] [int] NOT NULL,
	[idCatalogo] [int] NOT NULL,
	[fechaCreacion] [date] NULL,
	[fechaModificacion] [date] NULL,
	[estado] [bit] NOT NULL,
 CONSTRAINT [PK_Producto_Catalogo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto_Categoria]    Script Date: 19/09/2020 00:53:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto_Categoria](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idProducto] [int] NOT NULL,
	[idCategoria] [int] NOT NULL,
	[fechaRegistro] [date] NULL,
	[fechaModificacion] [date] NULL,
	[estado] [bit] NOT NULL,
 CONSTRAINT [PK_Producto_Categoria] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto_Imagen]    Script Date: 19/09/2020 00:53:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto_Imagen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idProducto] [int] NOT NULL,
	[idImagen] [int] NOT NULL,
	[estado] [bit] NOT NULL,
 CONSTRAINT [PK_Producto_Imagen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rol]    Script Date: 19/09/2020 00:53:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](25) NOT NULL,
	[estado] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rol_Operacion]    Script Date: 19/09/2020 00:53:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol_Operacion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idRol] [int] NOT NULL,
	[idOperacion] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 19/09/2020 00:53:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[fechaRegistro] [date] NOT NULL,
	[idRol] [int] NOT NULL,
	[estado] [int] NOT NULL,
 CONSTRAINT [PK__Usuario__3213E83F5CB1EC00] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Catalogo] ON 

INSERT [dbo].[Catalogo] ([id], [nombre], [fechaInicio], [fechaFin], [urlImagen], [fechaCreacion], [fechaModificacion], [estado]) VALUES (1, N'Productos de Protección', CAST(N'2020-09-01' AS Date), NULL, N'img/catalogo/catalogo01', NULL, NULL, 1)
INSERT [dbo].[Catalogo] ([id], [nombre], [fechaInicio], [fechaFin], [urlImagen], [fechaCreacion], [fechaModificacion], [estado]) VALUES (3, N'Higiene', CAST(N'2020-09-01' AS Date), NULL, N'img/catalogo/catalogo02', NULL, NULL, 1)
INSERT [dbo].[Catalogo] ([id], [nombre], [fechaInicio], [fechaFin], [urlImagen], [fechaCreacion], [fechaModificacion], [estado]) VALUES (4, N'Desinfección', CAST(N'2020-09-01' AS Date), CAST(N'2020-12-31' AS Date), N'img/catalogo/catalogo03', NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Catalogo] OFF
GO
SET IDENTITY_INSERT [dbo].[Categoria] ON 

INSERT [dbo].[Categoria] ([id], [nombre], [estado]) VALUES (1, N'Mascarillas', 1)
INSERT [dbo].[Categoria] ([id], [nombre], [estado]) VALUES (2, N'Protector Facial', 1)
INSERT [dbo].[Categoria] ([id], [nombre], [estado]) VALUES (6, N'Alcohol', 1)
INSERT [dbo].[Categoria] ([id], [nombre], [estado]) VALUES (7, N'Gel', 1)
INSERT [dbo].[Categoria] ([id], [nombre], [estado]) VALUES (9, N'Rociadores', 1)
INSERT [dbo].[Categoria] ([id], [nombre], [estado]) VALUES (10, N'Atomizadores', 1)
INSERT [dbo].[Categoria] ([id], [nombre], [estado]) VALUES (11, N'Termómetros', 1)
INSERT [dbo].[Categoria] ([id], [nombre], [estado]) VALUES (12, N'Oxímetros', 1)
SET IDENTITY_INSERT [dbo].[Categoria] OFF
GO
SET IDENTITY_INSERT [dbo].[Fabricante] ON 

INSERT [dbo].[Fabricante] ([id], [nombre], [ruc], [estado]) VALUES (1, N'Contec', N'1023456043', 1)
INSERT [dbo].[Fabricante] ([id], [nombre], [ruc], [estado]) VALUES (2, N'Alinc', N'2345684392', 1)
SET IDENTITY_INSERT [dbo].[Fabricante] OFF
GO
SET IDENTITY_INSERT [dbo].[Imagen] ON 

INSERT [dbo].[Imagen] ([id], [nombre], [url], [fechaRegistro]) VALUES (1, N'mascarilla01', N'img/producto/mascarillas/mascarilla01', NULL)
INSERT [dbo].[Imagen] ([id], [nombre], [url], [fechaRegistro]) VALUES (3, N'mascarilla02', N'img/producto/mascarillas/mascarilla02', NULL)
INSERT [dbo].[Imagen] ([id], [nombre], [url], [fechaRegistro]) VALUES (4, N'mascarilla03', N'img/producto/mascarillas/mascarilla03', NULL)
SET IDENTITY_INSERT [dbo].[Imagen] OFF
GO
SET IDENTITY_INSERT [dbo].[MedioPago] ON 

INSERT [dbo].[MedioPago] ([id], [nombre]) VALUES (1, N'Tarjeta de Crédito')
INSERT [dbo].[MedioPago] ([id], [nombre]) VALUES (2, N'Efectivo')
SET IDENTITY_INSERT [dbo].[MedioPago] OFF
GO
SET IDENTITY_INSERT [dbo].[Modulo] ON 

INSERT [dbo].[Modulo] ([id], [nombre], [estado]) VALUES (1, N'Mantenimiento Catálogo', 1)
INSERT [dbo].[Modulo] ([id], [nombre], [estado]) VALUES (2, N'Mantenimiento Producto', 1)
INSERT [dbo].[Modulo] ([id], [nombre], [estado]) VALUES (3, N'Mantenimiento Cliente', 1)
INSERT [dbo].[Modulo] ([id], [nombre], [estado]) VALUES (4, N'Home', 1)
SET IDENTITY_INSERT [dbo].[Modulo] OFF
GO
SET IDENTITY_INSERT [dbo].[Operacion] ON 

INSERT [dbo].[Operacion] ([id], [nombre], [idModulo]) VALUES (1, N'Actualizar', 1)
INSERT [dbo].[Operacion] ([id], [nombre], [idModulo]) VALUES (2, N'Mantener', 1)
INSERT [dbo].[Operacion] ([id], [nombre], [idModulo]) VALUES (3, N'Actualizar', 2)
INSERT [dbo].[Operacion] ([id], [nombre], [idModulo]) VALUES (6, N'Mantener', 2)
INSERT [dbo].[Operacion] ([id], [nombre], [idModulo]) VALUES (7, N'Mantener', 3)
INSERT [dbo].[Operacion] ([id], [nombre], [idModulo]) VALUES (8, N'Ver', 4)
SET IDENTITY_INSERT [dbo].[Operacion] OFF
GO
SET IDENTITY_INSERT [dbo].[Producto] ON 

INSERT [dbo].[Producto] ([id], [nombre], [codigo], [descripcion], [precio], [stock], [idFabricante], [estado], [fechaRegistro], [fechaModificacion], [urlImagen]) VALUES (1, N'Mascarilla Personalizada', N'P001 ', N'Excelente calidad, larga duración. Producto 100% peruano.', CAST(12.00 AS Decimal(10, 2)), 50, 1, 1, NULL, NULL, N'img/producto/mascarillas/mascarilla01')
INSERT [dbo].[Producto] ([id], [nombre], [codigo], [descripcion], [precio], [stock], [idFabricante], [estado], [fechaRegistro], [fechaModificacion], [urlImagen]) VALUES (2, N'Mascarilla 3 Pligues', N'P002 ', N'Buen material, duración de 2 semanas. Producto probado que brinda buena protección.', CAST(10.00 AS Decimal(10, 2)), 100, 1, 1, NULL, NULL, N'img/producto/mascarillas/mascarilla02')
INSERT [dbo].[Producto] ([id], [nombre], [codigo], [descripcion], [precio], [stock], [idFabricante], [estado], [fechaRegistro], [fechaModificacion], [urlImagen]) VALUES (3, N'Mascarilla NK95', N'P003 ', N'Mascarilla con la mejor protección y duración. Producto altamente recomendado por expertos.', CAST(12.00 AS Decimal(10, 2)), 100, 1, 1, NULL, NULL, N'img/producto/mascarillas/mascarilla03')
SET IDENTITY_INSERT [dbo].[Producto] OFF
GO
SET IDENTITY_INSERT [dbo].[Producto_Catalogo] ON 

INSERT [dbo].[Producto_Catalogo] ([id], [idProducto], [idCatalogo], [fechaCreacion], [fechaModificacion], [estado]) VALUES (1, 1, 1, NULL, NULL, 1)
INSERT [dbo].[Producto_Catalogo] ([id], [idProducto], [idCatalogo], [fechaCreacion], [fechaModificacion], [estado]) VALUES (2, 2, 1, NULL, NULL, 1)
INSERT [dbo].[Producto_Catalogo] ([id], [idProducto], [idCatalogo], [fechaCreacion], [fechaModificacion], [estado]) VALUES (3, 3, 1, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Producto_Catalogo] OFF
GO
SET IDENTITY_INSERT [dbo].[Producto_Categoria] ON 

INSERT [dbo].[Producto_Categoria] ([id], [idProducto], [idCategoria], [fechaRegistro], [fechaModificacion], [estado]) VALUES (1, 1, 1, NULL, NULL, 1)
INSERT [dbo].[Producto_Categoria] ([id], [idProducto], [idCategoria], [fechaRegistro], [fechaModificacion], [estado]) VALUES (2, 2, 1, NULL, NULL, 1)
INSERT [dbo].[Producto_Categoria] ([id], [idProducto], [idCategoria], [fechaRegistro], [fechaModificacion], [estado]) VALUES (3, 3, 1, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Producto_Categoria] OFF
GO
SET IDENTITY_INSERT [dbo].[Producto_Imagen] ON 

INSERT [dbo].[Producto_Imagen] ([id], [idProducto], [idImagen], [estado]) VALUES (1, 1, 1, 1)
INSERT [dbo].[Producto_Imagen] ([id], [idProducto], [idImagen], [estado]) VALUES (3, 2, 3, 1)
INSERT [dbo].[Producto_Imagen] ([id], [idProducto], [idImagen], [estado]) VALUES (4, 3, 4, 1)
SET IDENTITY_INSERT [dbo].[Producto_Imagen] OFF
GO
SET IDENTITY_INSERT [dbo].[Rol] ON 

INSERT [dbo].[Rol] ([id], [nombre], [estado]) VALUES (1, N'Administrador', 1)
INSERT [dbo].[Rol] ([id], [nombre], [estado]) VALUES (2, N'Soporte', 1)
INSERT [dbo].[Rol] ([id], [nombre], [estado]) VALUES (3, N'Cliente', 1)
SET IDENTITY_INSERT [dbo].[Rol] OFF
GO
SET IDENTITY_INSERT [dbo].[Rol_Operacion] ON 

INSERT [dbo].[Rol_Operacion] ([id], [idRol], [idOperacion]) VALUES (1, 1, 2)
INSERT [dbo].[Rol_Operacion] ([id], [idRol], [idOperacion]) VALUES (2, 1, 2)
INSERT [dbo].[Rol_Operacion] ([id], [idRol], [idOperacion]) VALUES (3, 1, 7)
INSERT [dbo].[Rol_Operacion] ([id], [idRol], [idOperacion]) VALUES (4, 1, 8)
INSERT [dbo].[Rol_Operacion] ([id], [idRol], [idOperacion]) VALUES (5, 2, 1)
INSERT [dbo].[Rol_Operacion] ([id], [idRol], [idOperacion]) VALUES (6, 2, 3)
INSERT [dbo].[Rol_Operacion] ([id], [idRol], [idOperacion]) VALUES (7, 2, 8)
INSERT [dbo].[Rol_Operacion] ([id], [idRol], [idOperacion]) VALUES (8, 3, 8)
SET IDENTITY_INSERT [dbo].[Rol_Operacion] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([id], [nombre], [email], [password], [fechaRegistro], [idRol], [estado]) VALUES (2, N'usuario001', N'administrador@gmail.com', N'123456', CAST(N'2020-09-18' AS Date), 1, 1)
INSERT [dbo].[Usuario] ([id], [nombre], [email], [password], [fechaRegistro], [idRol], [estado]) VALUES (3, N'usuario002', N'soporte@gmail.com', N'123456', CAST(N'2020-09-18' AS Date), 2, 1)
INSERT [dbo].[Usuario] ([id], [nombre], [email], [password], [fechaRegistro], [idRol], [estado]) VALUES (4, N'usuario003', N'cliente01@gmail.com', N'123456', CAST(N'2020-09-18' AS Date), 3, 1)
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Producto__40F9A206A35F07C7]    Script Date: 19/09/2020 00:53:39 ******/
ALTER TABLE [dbo].[Producto] ADD UNIQUE NONCLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Carrito]  WITH CHECK ADD FOREIGN KEY([idProducto])
REFERENCES [dbo].[Producto] ([id])
GO
ALTER TABLE [dbo].[Carrito]  WITH CHECK ADD  CONSTRAINT [FK__Carrito__idUsuar__48CFD27E] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([id])
GO
ALTER TABLE [dbo].[Carrito] CHECK CONSTRAINT [FK__Carrito__idUsuar__48CFD27E]
GO
ALTER TABLE [dbo].[DetalleOrden]  WITH CHECK ADD FOREIGN KEY([idOrden])
REFERENCES [dbo].[Orden] ([id])
GO
ALTER TABLE [dbo].[DetalleOrden]  WITH CHECK ADD FOREIGN KEY([idProducto])
REFERENCES [dbo].[Producto] ([id])
GO
ALTER TABLE [dbo].[Direccion]  WITH CHECK ADD  CONSTRAINT [FK__Direccion__idUsu__37A5467C] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([id])
GO
ALTER TABLE [dbo].[Direccion] CHECK CONSTRAINT [FK__Direccion__idUsu__37A5467C]
GO
ALTER TABLE [dbo].[Operacion]  WITH CHECK ADD FOREIGN KEY([idModulo])
REFERENCES [dbo].[Modulo] ([id])
GO
ALTER TABLE [dbo].[Orden]  WITH CHECK ADD FOREIGN KEY([idDireccion])
REFERENCES [dbo].[Direccion] ([id])
GO
ALTER TABLE [dbo].[Orden]  WITH CHECK ADD FOREIGN KEY([idMedioPago])
REFERENCES [dbo].[MedioPago] ([id])
GO
ALTER TABLE [dbo].[Orden]  WITH CHECK ADD  CONSTRAINT [FK__Orden__idUsuario__3A81B327] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([id])
GO
ALTER TABLE [dbo].[Orden] CHECK CONSTRAINT [FK__Orden__idUsuario__3A81B327]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD FOREIGN KEY([idFabricante])
REFERENCES [dbo].[Fabricante] ([id])
GO
ALTER TABLE [dbo].[Producto_Catalogo]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Catalogo_Catalogo] FOREIGN KEY([idCatalogo])
REFERENCES [dbo].[Catalogo] ([id])
GO
ALTER TABLE [dbo].[Producto_Catalogo] CHECK CONSTRAINT [FK_Producto_Catalogo_Catalogo]
GO
ALTER TABLE [dbo].[Producto_Catalogo]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Catalogo_Producto] FOREIGN KEY([idProducto])
REFERENCES [dbo].[Producto] ([id])
GO
ALTER TABLE [dbo].[Producto_Catalogo] CHECK CONSTRAINT [FK_Producto_Catalogo_Producto]
GO
ALTER TABLE [dbo].[Producto_Categoria]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Categoria_Categoria] FOREIGN KEY([idCategoria])
REFERENCES [dbo].[Categoria] ([id])
GO
ALTER TABLE [dbo].[Producto_Categoria] CHECK CONSTRAINT [FK_Producto_Categoria_Categoria]
GO
ALTER TABLE [dbo].[Producto_Categoria]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Categoria_Producto] FOREIGN KEY([idProducto])
REFERENCES [dbo].[Producto] ([id])
GO
ALTER TABLE [dbo].[Producto_Categoria] CHECK CONSTRAINT [FK_Producto_Categoria_Producto]
GO
ALTER TABLE [dbo].[Producto_Imagen]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Imagen_Imagen] FOREIGN KEY([idImagen])
REFERENCES [dbo].[Imagen] ([id])
GO
ALTER TABLE [dbo].[Producto_Imagen] CHECK CONSTRAINT [FK_Producto_Imagen_Imagen]
GO
ALTER TABLE [dbo].[Producto_Imagen]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Imagen_Producto] FOREIGN KEY([idProducto])
REFERENCES [dbo].[Producto] ([id])
GO
ALTER TABLE [dbo].[Producto_Imagen] CHECK CONSTRAINT [FK_Producto_Imagen_Producto]
GO
ALTER TABLE [dbo].[Rol_Operacion]  WITH CHECK ADD FOREIGN KEY([idOperacion])
REFERENCES [dbo].[Operacion] ([id])
GO
ALTER TABLE [dbo].[Rol_Operacion]  WITH CHECK ADD FOREIGN KEY([idRol])
REFERENCES [dbo].[Rol] ([id])
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK__Usuario__idRol__34C8D9D1] FOREIGN KEY([idRol])
REFERENCES [dbo].[Rol] ([id])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK__Usuario__idRol__34C8D9D1]
GO
ALTER TABLE [dbo].[Carrito]  WITH CHECK ADD CHECK  (([cantidad]>(0)))
GO
/****** Object:  StoredProcedure [dbo].[USP_CATALOGO_CRUD]    Script Date: 19/09/2020 00:53:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_CATALOGO_CRUD]
(
@Operacion CHAR(1),
@Id INT = NULL,
@Nombre VARCHAR(50) = NULL, 
@FechaInicio DATE = NULL,
@FechaFin DATE = NULL,
@UrlImagen VARCHAR(250) = NULL,
@FechaCreacion DATETIME = NULL,
@FechaModificacion DATETIME = NULL,
@Estado	BIT = NULL
)
AS
BEGIN
	IF(@Operacion = 'C')
	BEGIN
		INSERT INTO CATALOGO(
			nombre,
			fechaInicio,
			fechaFin,
			urlImagen,
			fechaCreacion,
			fechaModificacion,
			estado
		) VALUES (
			@Nombre ,
			@FechaInicio,
			@FechaFin,
			@UrlImagen,
			@FechaCreacion,
			@FechaModificacion,
			@Estado
		)
	END
	IF(@Operacion = 'R')
	BEGIN
		SELECT
			C.id,
			C.nombre,
			C.fechaInicio,
			C.fechaFin,
			C.urlImagen,
			C.fechaCreacion,
			C.fechaModificacion,
			C.estado
		FROM CATALOGO C
		WHERE C.estado = 1
	END
	IF(@Operacion = 'U')
	BEGIN
		UPDATE CATALOGO SET 
			nombre = @Nombre,
			fechaInicio = @FechaInicio,
			fechaFin = @FechaFin,
			urlImagen = @UrlImagen,
			fechaCreacion = @FechaCreacion,
			fechaModificacion = @FechaModificacion,
			estado = @Estado
		WHERE id = @Id
	END
	IF(@Operacion = 'D')
	BEGIN
		UPDATE CATALOGO SET estado = 0
		WHERE id = @Id
	END
	IF(@Operacion = 'F')
	BEGIN
		SELECT
			C.id,
			C.nombre,
			C.fechaInicio,
			C.fechaFin,
			C.urlImagen,
			C.fechaCreacion,
			C.fechaModificacion,
			C.estado
		FROM CATALOGO C
		WHERE C.estado = 1
	END
END
GO
/****** Object:  StoredProcedure [dbo].[USP_CATEGORIA_LISTAR]    Script Date: 19/09/2020 00:53:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_CATEGORIA_LISTAR]
AS
BEGIN
	SELECT 
		C.id,
		C.nombre,
		C.estado
	FROM Categoria C
	WHERE C.estado = 1
END
GO
/****** Object:  StoredProcedure [dbo].[USP_FABRICANTE_LISTAR]    Script Date: 19/09/2020 00:53:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_FABRICANTE_LISTAR]
AS
BEGIN
	SELECT 
		F.id,
		F.nombre,
		F.ruc,
		F.estado
	FROM Fabricante F
	WHERE F.estado = 1
END
GO
/****** Object:  StoredProcedure [dbo].[USP_IMAGENES_LISTAR]    Script Date: 19/09/2020 00:53:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_IMAGENES_LISTAR]
(
@Operacion CHAR(1),
@IdProducto INT = NULL
)
AS
BEGIN
	SELECT 
		I.id,
		I.nombre,
		I.url,
		I.fechaRegistro
	FROM Imagen I
	INNER JOIN Producto_Imagen P ON I.id = P.idImagen
	WHERE P.idProducto = @IdProducto
	AND P.estado = 1
END
GO
/****** Object:  StoredProcedure [dbo].[USP_PRODUCTO_CRUD]    Script Date: 19/09/2020 00:53:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_PRODUCTO_CRUD]
(
@Operacion CHAR(1),
@Id INT = NULL,
@Nombre VARCHAR(50) = NULL, 
@Codigo VARCHAR(4) = NULL,
@Descripcion VARCHAR(50) = NULL,
@Precio DECIMAL(10,2) = NULL,
@Stock INT = NULL,
@IdFabricante INT = NULL,
@Estado	BIT = NULL,
@UrlImagen VARCHAR(250) = NULL
)
AS
BEGIN
	IF(@Operacion = 'C')
	BEGIN
		INSERT INTO Producto(
			Nombre ,
			Codigo,
			Descripcion,
			Precio,
			Stock,
			IdFabricante,
			Estado,
			fechaRegistro,
			fechaModificacion,
			urlImagen
		) VALUES (
			@Nombre, 
			@Codigo,
			@Descripcion,
			@Precio,
			@Stock,
			@IdFabricante,
			1,
			GETDATE(),
			GETDATE(),
			@UrlImagen
		)
	END
	IF(@Operacion = 'R')
	BEGIN
		SELECT 
			P.Nombre,
			P.Codigo,
			P.Descripcion,
			P.Precio,
			P.Stock,
			P.IdFabricante,
			F.nombre AS 'Fabricante',
			P.Estado,
			P.UrlImagen
		FROM Producto P
		INNER JOIN Fabricante F
		ON P.idFabricante = F.id
		WHERE P.estado = 1
	END
	IF(@Operacion = 'U')
	BEGIN
		UPDATE Producto SET 
			nombre = @Nombre,
			codigo = @Codigo,
			descripcion = @Descripcion,
			precio = @Precio,
			stock = @Stock,
			idFabricante = @IdFabricante,
			estado = @Estado,
			urlImagen = @UrlImagen
		WHERE id = @Id
	END
	IF(@Operacion = 'D')
	BEGIN
		UPDATE Producto SET estado = 0
		WHERE id = @Id
	END
	IF(@Operacion = 'F')
	BEGIN
		SELECT 
			P.Nombre,
			P.Codigo,
			P.Descripcion,
			P.Precio,
			P.Stock,
			P.IdFabricante,
			F.nombre AS 'Fabricante',
			P.Estado,
			P.urlImagen
		FROM Producto P
		INNER JOIN Fabricante F
		ON P.idFabricante = F.id
		WHERE P.id = @Id
	END
END
GO
/****** Object:  StoredProcedure [dbo].[USP_PRODUCTO_LISTAR]    Script Date: 19/09/2020 00:53:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_PRODUCTO_LISTAR]
(
@Operacion CHAR(1),
@IdCatalogo INT = NULL,
@IdCategoria INT = NULL
)
AS
BEGIN
	IF(@Operacion = 'T')
	BEGIN
		SELECT 
			P.Nombre,
			P.Codigo,
			P.Descripcion,
			P.Precio,
			P.Stock,
			P.IdFabricante,
			F.nombre AS 'Fabricante',
			P.Estado,
			P.UrlImagen
		FROM Producto P
		INNER JOIN Fabricante F ON P.idFabricante = F.id
		INNER JOIN Producto_Catalogo PC ON P.id = PC.idProducto
		WHERE P.estado = 1
		AND PC.idCatalogo = @IdCatalogo
	END
	IF(@Operacion = 'G')
	BEGIN
		SELECT 
			P.Nombre,
			P.Codigo,
			P.Descripcion,
			P.Precio,
			P.Stock,
			P.IdFabricante,
			F.nombre AS 'Fabricante',
			P.Estado,
			P.UrlImagen
		FROM Producto P
		INNER JOIN Fabricante F ON P.idFabricante = F.id
		INNER JOIN Producto_Categoria PC ON P.id = PC.idProducto
		WHERE P.estado = 1
		AND PC.idCategoria = @IdCategoria
	END
END
GO
/****** Object:  StoredProcedure [dbo].[USP_USUARIO_CRUD]    Script Date: 19/09/2020 00:53:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_USUARIO_CRUD]
(
@Operacion CHAR(1),
@Id INT = NULL,
@Nombre VARCHAR(50) = NULL, 
@Email DATE = NULL,
@Password DATE = NULL,
@FechaRegistro DATETIME = NULL,
@IdRol INT = NULL,
@Estado	BIT = NULL
)
AS
BEGIN
	IF(@Operacion = 'C')
	BEGIN
		INSERT INTO USUARIO(
			nombre,
			email,
			password,
			fechaRegistro,
			idRol,
			estado
		) VALUES (
			@Nombre ,
			@Email,
			@Password,
			@FechaRegistro,
			@IdRol,
			@Estado
		)
	END
	IF(@Operacion = 'R')
	BEGIN
		SELECT
			U.id,
			U.nombre,
			U.email,
			U.password,
			U.fechaRegistro,
			U.idRol,
			R.nombre,
			U.estado
		FROM USUARIO U
		INNER JOIN Rol R
		ON U.idRol = R.id
		WHERE U.estado = 1
	END
	IF(@Operacion = 'U')
	BEGIN
		UPDATE USUARIO SET 
			nombre = @Nombre,
			email = @Email,
			password = @Password,
			fechaRegistro = @FechaRegistro,
			idRol = @IdRol,
			estado = @Estado
		WHERE id = @Id
	END
	IF(@Operacion = 'D')
	BEGIN
		UPDATE USUARIO SET estado = 0
		WHERE id = @Id
	END
	IF(@Operacion = 'F')
	BEGIN
		SELECT
			U.id,
			U.nombre,
			U.email,
			U.password,
			U.fechaRegistro,
			U.idRol,
			R.nombre,
			U.estado
		FROM USUARIO U
		INNER JOIN Rol R
		ON U.idRol = R.id
		WHERE U.estado = 1
	END
END
GO
USE [master]
GO
ALTER DATABASE [BDVentaOnLine] SET  READ_WRITE 
GO
