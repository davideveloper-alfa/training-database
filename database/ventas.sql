USE [Ventas]
GO
/****** Object:  Table [dbo].[BOLETA]    Script Date: 16/09/2020 22:27:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BOLETA](
	[IdBoleta] [int] IDENTITY(1,1) NOT NULL,
	[NumeroBoleta] [char](10) NOT NULL,
	[FechaEmision] [datetime] NOT NULL,
	[IdCliente] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdBoleta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BOLETA_PRODUCTO]    Script Date: 16/09/2020 22:27:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BOLETA_PRODUCTO](
	[IdBoleta] [int] NULL,
	[IdProducto] [int] NULL,
	[Cantidad] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CLIENTE]    Script Date: 16/09/2020 22:27:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIENTE](
	[IdCliente] [int] IDENTITY(1,1) NOT NULL,
	[Dni] [char](8) NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
	[Apellido] [varchar](30) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FECHAS]    Script Date: 16/09/2020 22:27:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FECHAS](
	[NOMBRE] [varchar](50) NULL,
	[FECHA] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NEGOCIO]    Script Date: 16/09/2020 22:27:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NEGOCIO](
	[IdCliente] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_NEGOCIO] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCTO]    Script Date: 16/09/2020 22:27:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCTO](
	[IdProducto] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [char](4) NOT NULL,
	[Descripcion] [varchar](30) NOT NULL,
	[Unidad] [varchar](50) NULL,
	[PrecioUnitario] [decimal](5, 2) NOT NULL,
	[Marca] [varchar](30) NULL,
 CONSTRAINT [PK__PRODUCTO__09889210B877D893] PRIMARY KEY CLUSTERED 
(
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BOLETA] ON 

INSERT [dbo].[BOLETA] ([IdBoleta], [NumeroBoleta], [FechaEmision], [IdCliente]) VALUES (1, N'1000-00001', CAST(N'2020-01-20T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BOLETA] ([IdBoleta], [NumeroBoleta], [FechaEmision], [IdCliente]) VALUES (2, N'1000-00002', CAST(N'2020-01-28T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[BOLETA] ([IdBoleta], [NumeroBoleta], [FechaEmision], [IdCliente]) VALUES (3, N'1000-00003', CAST(N'2020-02-15T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BOLETA] ([IdBoleta], [NumeroBoleta], [FechaEmision], [IdCliente]) VALUES (4, N'1000-00004', CAST(N'2020-02-07T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[BOLETA] ([IdBoleta], [NumeroBoleta], [FechaEmision], [IdCliente]) VALUES (5, N'1000-00005', CAST(N'2020-03-25T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BOLETA] ([IdBoleta], [NumeroBoleta], [FechaEmision], [IdCliente]) VALUES (6, N'1000-00006', CAST(N'2020-03-30T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BOLETA] ([IdBoleta], [NumeroBoleta], [FechaEmision], [IdCliente]) VALUES (7, N'1000-00007', CAST(N'2020-04-02T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BOLETA] ([IdBoleta], [NumeroBoleta], [FechaEmision], [IdCliente]) VALUES (8, N'1000-00008', CAST(N'2020-05-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[BOLETA] ([IdBoleta], [NumeroBoleta], [FechaEmision], [IdCliente]) VALUES (9, N'1000-00009', CAST(N'2020-05-31T09:30:00.000' AS DateTime), 4)
INSERT [dbo].[BOLETA] ([IdBoleta], [NumeroBoleta], [FechaEmision], [IdCliente]) VALUES (10, N'1000-00010', CAST(N'2020-06-11T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BOLETA] ([IdBoleta], [NumeroBoleta], [FechaEmision], [IdCliente]) VALUES (11, N'1000-00011', CAST(N'2020-06-05T00:00:00.000' AS DateTime), 4)
SET IDENTITY_INSERT [dbo].[BOLETA] OFF
GO
INSERT [dbo].[BOLETA_PRODUCTO] ([IdBoleta], [IdProducto], [Cantidad]) VALUES (1, 1, 1)
INSERT [dbo].[BOLETA_PRODUCTO] ([IdBoleta], [IdProducto], [Cantidad]) VALUES (1, 2, 1)
INSERT [dbo].[BOLETA_PRODUCTO] ([IdBoleta], [IdProducto], [Cantidad]) VALUES (1, 3, 1)
INSERT [dbo].[BOLETA_PRODUCTO] ([IdBoleta], [IdProducto], [Cantidad]) VALUES (2, 1, 6)
INSERT [dbo].[BOLETA_PRODUCTO] ([IdBoleta], [IdProducto], [Cantidad]) VALUES (2, 4, 1)
INSERT [dbo].[BOLETA_PRODUCTO] ([IdBoleta], [IdProducto], [Cantidad]) VALUES (3, 1, 2)
INSERT [dbo].[BOLETA_PRODUCTO] ([IdBoleta], [IdProducto], [Cantidad]) VALUES (3, 6, 1)
INSERT [dbo].[BOLETA_PRODUCTO] ([IdBoleta], [IdProducto], [Cantidad]) VALUES (3, 7, 1)
INSERT [dbo].[BOLETA_PRODUCTO] ([IdBoleta], [IdProducto], [Cantidad]) VALUES (4, 5, 2)
INSERT [dbo].[BOLETA_PRODUCTO] ([IdBoleta], [IdProducto], [Cantidad]) VALUES (5, 1, 2)
INSERT [dbo].[BOLETA_PRODUCTO] ([IdBoleta], [IdProducto], [Cantidad]) VALUES (5, 2, 2)
INSERT [dbo].[BOLETA_PRODUCTO] ([IdBoleta], [IdProducto], [Cantidad]) VALUES (5, 3, 1)
INSERT [dbo].[BOLETA_PRODUCTO] ([IdBoleta], [IdProducto], [Cantidad]) VALUES (5, 8, 1)
INSERT [dbo].[BOLETA_PRODUCTO] ([IdBoleta], [IdProducto], [Cantidad]) VALUES (6, 2, 2)
INSERT [dbo].[BOLETA_PRODUCTO] ([IdBoleta], [IdProducto], [Cantidad]) VALUES (6, 3, 1)
INSERT [dbo].[BOLETA_PRODUCTO] ([IdBoleta], [IdProducto], [Cantidad]) VALUES (6, 4, 2)
INSERT [dbo].[BOLETA_PRODUCTO] ([IdBoleta], [IdProducto], [Cantidad]) VALUES (7, 5, 1)
INSERT [dbo].[BOLETA_PRODUCTO] ([IdBoleta], [IdProducto], [Cantidad]) VALUES (7, 7, 1)
INSERT [dbo].[BOLETA_PRODUCTO] ([IdBoleta], [IdProducto], [Cantidad]) VALUES (8, 1, 2)
INSERT [dbo].[BOLETA_PRODUCTO] ([IdBoleta], [IdProducto], [Cantidad]) VALUES (8, 2, 2)
INSERT [dbo].[BOLETA_PRODUCTO] ([IdBoleta], [IdProducto], [Cantidad]) VALUES (8, 3, 1)
INSERT [dbo].[BOLETA_PRODUCTO] ([IdBoleta], [IdProducto], [Cantidad]) VALUES (8, 4, 1)
INSERT [dbo].[BOLETA_PRODUCTO] ([IdBoleta], [IdProducto], [Cantidad]) VALUES (9, 5, 2)
INSERT [dbo].[BOLETA_PRODUCTO] ([IdBoleta], [IdProducto], [Cantidad]) VALUES (9, 7, 1)
INSERT [dbo].[BOLETA_PRODUCTO] ([IdBoleta], [IdProducto], [Cantidad]) VALUES (10, 7, 1)
INSERT [dbo].[BOLETA_PRODUCTO] ([IdBoleta], [IdProducto], [Cantidad]) VALUES (11, 5, 4)
INSERT [dbo].[BOLETA_PRODUCTO] ([IdBoleta], [IdProducto], [Cantidad]) VALUES (11, 7, 2)
INSERT [dbo].[BOLETA_PRODUCTO] ([IdBoleta], [IdProducto], [Cantidad]) VALUES (11, 8, 2)
GO
SET IDENTITY_INSERT [dbo].[CLIENTE] ON 

INSERT [dbo].[CLIENTE] ([IdCliente], [Dni], [Nombre], [Apellido], [FechaNacimiento]) VALUES (1, N'44441111', N'Fernando', N'Valverde', CAST(N'1984-05-27' AS Date))
INSERT [dbo].[CLIENTE] ([IdCliente], [Dni], [Nombre], [Apellido], [FechaNacimiento]) VALUES (2, N'44441112', N'José', N'Ponce', CAST(N'1988-08-20' AS Date))
INSERT [dbo].[CLIENTE] ([IdCliente], [Dni], [Nombre], [Apellido], [FechaNacimiento]) VALUES (3, N'44441113', N'Camila', N'Quispe', CAST(N'1980-02-15' AS Date))
INSERT [dbo].[CLIENTE] ([IdCliente], [Dni], [Nombre], [Apellido], [FechaNacimiento]) VALUES (4, N'44441114', N'Juan', N'Perez', CAST(N'1990-10-10' AS Date))
INSERT [dbo].[CLIENTE] ([IdCliente], [Dni], [Nombre], [Apellido], [FechaNacimiento]) VALUES (5, N'44441115', N'Rosa', N'Suazo', CAST(N'1995-03-12' AS Date))
SET IDENTITY_INSERT [dbo].[CLIENTE] OFF
GO
INSERT [dbo].[FECHAS] ([NOMBRE], [FECHA]) VALUES (N'Primera fecha', NULL)
INSERT [dbo].[FECHAS] ([NOMBRE], [FECHA]) VALUES (N'Primera fecha', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[NEGOCIO] ([IdCliente], [Nombre]) VALUES (1, N'Mi Tiendita')
INSERT [dbo].[NEGOCIO] ([IdCliente], [Nombre]) VALUES (2, N'TuMarket')
INSERT [dbo].[NEGOCIO] ([IdCliente], [Nombre]) VALUES (3, N'Su Caserita')
INSERT [dbo].[NEGOCIO] ([IdCliente], [Nombre]) VALUES (4, N'Don Juan')
INSERT [dbo].[NEGOCIO] ([IdCliente], [Nombre]) VALUES (5, N'Minimarket Rosa')
GO
SET IDENTITY_INSERT [dbo].[PRODUCTO] ON 

INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Unidad], [PrecioUnitario], [Marca]) VALUES (1, N'P001', N'Leche', N'Tarro 600mL', CAST(3.00 AS Decimal(5, 2)), N'Gloria')
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Unidad], [PrecioUnitario], [Marca]) VALUES (2, N'P002', N'Mantequilla', N'Paquete 200gr', CAST(2.50 AS Decimal(5, 2)), N'Dorina')
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Unidad], [PrecioUnitario], [Marca]) VALUES (3, N'P003', N'Mermelada', N'Tarro 500mL', CAST(4.00 AS Decimal(5, 2)), N'Gloria')
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Unidad], [PrecioUnitario], [Marca]) VALUES (4, N'P004', N'Azúcar', N'Bolsa 1Kg', CAST(3.50 AS Decimal(5, 2)), N'Costeño')
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Unidad], [PrecioUnitario], [Marca]) VALUES (5, N'P005', N'Arroz', N'Bolsa 1Kg', CAST(3.50 AS Decimal(5, 2)), N'Faraón')
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Unidad], [PrecioUnitario], [Marca]) VALUES (6, N'P006', N'Arroz', N'Bolsa 1Kg', CAST(3.00 AS Decimal(5, 2)), N'Costeño')
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Unidad], [PrecioUnitario], [Marca]) VALUES (7, N'P007', N'Aceite', N'Botella 1L', CAST(7.00 AS Decimal(5, 2)), N'Cocinero')
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Unidad], [PrecioUnitario], [Marca]) VALUES (8, N'P008', N'Yogurt', N'Botella 1L', CAST(6.50 AS Decimal(5, 2)), N'Gloria')
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Unidad], [PrecioUnitario], [Marca]) VALUES (9, N'P009', N'Yogurt', N'Botella 1.5L', CAST(8.00 AS Decimal(5, 2)), NULL)
SET IDENTITY_INSERT [dbo].[PRODUCTO] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__BOLETA__C447723E18AB73AE]    Script Date: 16/09/2020 22:27:09 ******/
ALTER TABLE [dbo].[BOLETA] ADD UNIQUE NONCLUSTERED 
(
	[NumeroBoleta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__BOLETA__C447723E723D566A]    Script Date: 16/09/2020 22:27:09 ******/
ALTER TABLE [dbo].[BOLETA] ADD UNIQUE NONCLUSTERED 
(
	[NumeroBoleta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__CLIENTE__C03085754726EEAC]    Script Date: 16/09/2020 22:27:09 ******/
ALTER TABLE [dbo].[CLIENTE] ADD UNIQUE NONCLUSTERED 
(
	[Dni] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__CLIENTE__C0308575C39C3D5B]    Script Date: 16/09/2020 22:27:09 ******/
ALTER TABLE [dbo].[CLIENTE] ADD UNIQUE NONCLUSTERED 
(
	[Dni] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__PRODUCTO__06370DAC85E8AD33]    Script Date: 16/09/2020 22:27:09 ******/
ALTER TABLE [dbo].[PRODUCTO] ADD  CONSTRAINT [UQ__PRODUCTO__06370DAC85E8AD33] UNIQUE NONCLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BOLETA]  WITH CHECK ADD FOREIGN KEY([IdCliente])
REFERENCES [dbo].[CLIENTE] ([IdCliente])
GO
ALTER TABLE [dbo].[BOLETA]  WITH CHECK ADD FOREIGN KEY([IdCliente])
REFERENCES [dbo].[CLIENTE] ([IdCliente])
GO
ALTER TABLE [dbo].[BOLETA_PRODUCTO]  WITH CHECK ADD FOREIGN KEY([IdBoleta])
REFERENCES [dbo].[BOLETA] ([IdBoleta])
GO
ALTER TABLE [dbo].[BOLETA_PRODUCTO]  WITH CHECK ADD FOREIGN KEY([IdBoleta])
REFERENCES [dbo].[BOLETA] ([IdBoleta])
GO
ALTER TABLE [dbo].[BOLETA_PRODUCTO]  WITH CHECK ADD  CONSTRAINT [FK__BOLETA_PR__IdPro__5629CD9C] FOREIGN KEY([IdProducto])
REFERENCES [dbo].[PRODUCTO] ([IdProducto])
GO
ALTER TABLE [dbo].[BOLETA_PRODUCTO] CHECK CONSTRAINT [FK__BOLETA_PR__IdPro__5629CD9C]
GO
ALTER TABLE [dbo].[NEGOCIO]  WITH CHECK ADD  CONSTRAINT [FK__NEGOCIO__IdClien__4D94879B] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[CLIENTE] ([IdCliente])
GO
ALTER TABLE [dbo].[NEGOCIO] CHECK CONSTRAINT [FK__NEGOCIO__IdClien__4D94879B]
GO
