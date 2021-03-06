USE [TestingBase]
GO
/****** Object:  Table [dbo].[Computer]    Script Date: 03.02.2022 18:17:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Computer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](50) NOT NULL,
	[IDComputerType] [int] NOT NULL,
	[IDCooler] [int] NOT NULL,
	[IDMotherboard] [int] NOT NULL,
	[IDStorageDevice] [int] NOT NULL,
	[IDPowerUnit] [int] NOT NULL,
	[IDCPU] [int] NOT NULL,
	[IDVideoCard] [int] NOT NULL,
	[Photo] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Computer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComputerType]    Script Date: 03.02.2022 18:17:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComputerType](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ComputerType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cooler]    Script Date: 03.02.2022 18:17:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cooler](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Cooler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CPU]    Script Date: 03.02.2022 18:17:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPU](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CPU] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Motherboard]    Script Date: 03.02.2022 18:17:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Motherboard](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Motherboard] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PowerUnit]    Script Date: 03.02.2022 18:17:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PowerUnit](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PowerUnit] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StorageDevice]    Script Date: 03.02.2022 18:17:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StorageDevice](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_StorageDevice] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VideoCard]    Script Date: 03.02.2022 18:17:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VideoCard](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_VideoCard] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Computer] ON 

INSERT [dbo].[Computer] ([ID], [CompanyName], [IDComputerType], [IDCooler], [IDMotherboard], [IDStorageDevice], [IDPowerUnit], [IDCPU], [IDVideoCard], [Photo]) VALUES (5, N'SDFSDF', 1, 1, 1, 1, 2, 1, 1, NULL)
INSERT [dbo].[Computer] ([ID], [CompanyName], [IDComputerType], [IDCooler], [IDMotherboard], [IDStorageDevice], [IDPowerUnit], [IDCPU], [IDVideoCard], [Photo]) VALUES (6, N'sdfsdf', 2, 2, 1, 1, 2, 2, 1, NULL)
SET IDENTITY_INSERT [dbo].[Computer] OFF
GO
INSERT [dbo].[ComputerType] ([ID], [Title]) VALUES (1, N'Офисный')
INSERT [dbo].[ComputerType] ([ID], [Title]) VALUES (2, N'Игровой')
GO
INSERT [dbo].[Cooler] ([ID], [Title]) VALUES (1, N'Aerocool')
INSERT [dbo].[Cooler] ([ID], [Title]) VALUES (2, N'Snowman')
GO
INSERT [dbo].[CPU] ([ID], [Title]) VALUES (1, N'Intel')
INSERT [dbo].[CPU] ([ID], [Title]) VALUES (2, N'AMD')
GO
INSERT [dbo].[Motherboard] ([ID], [Title]) VALUES (1, N'ASUS')
INSERT [dbo].[Motherboard] ([ID], [Title]) VALUES (2, N'Gygabite')
GO
INSERT [dbo].[PowerUnit] ([ID], [Title]) VALUES (1, N'Cuogar')
INSERT [dbo].[PowerUnit] ([ID], [Title]) VALUES (2, N'FoxLine')
INSERT [dbo].[PowerUnit] ([ID], [Title]) VALUES (3, N'Chiftek')
GO
INSERT [dbo].[StorageDevice] ([ID], [Title]) VALUES (1, N'SSD')
INSERT [dbo].[StorageDevice] ([ID], [Title]) VALUES (2, N'HDD')
GO
INSERT [dbo].[VideoCard] ([ID], [Title]) VALUES (1, N'GTX 750 TI')
INSERT [dbo].[VideoCard] ([ID], [Title]) VALUES (2, N'RTX 2060')
INSERT [dbo].[VideoCard] ([ID], [Title]) VALUES (3, N'HD 6670')
INSERT [dbo].[VideoCard] ([ID], [Title]) VALUES (4, N'Intel HD Graphiks')
GO
ALTER TABLE [dbo].[Computer]  WITH CHECK ADD  CONSTRAINT [FK_Computer_ComputerType] FOREIGN KEY([IDComputerType])
REFERENCES [dbo].[ComputerType] ([ID])
GO
ALTER TABLE [dbo].[Computer] CHECK CONSTRAINT [FK_Computer_ComputerType]
GO
ALTER TABLE [dbo].[Computer]  WITH CHECK ADD  CONSTRAINT [FK_Computer_Cooler] FOREIGN KEY([IDCooler])
REFERENCES [dbo].[Cooler] ([ID])
GO
ALTER TABLE [dbo].[Computer] CHECK CONSTRAINT [FK_Computer_Cooler]
GO
ALTER TABLE [dbo].[Computer]  WITH CHECK ADD  CONSTRAINT [FK_Computer_CPU] FOREIGN KEY([IDCPU])
REFERENCES [dbo].[CPU] ([ID])
GO
ALTER TABLE [dbo].[Computer] CHECK CONSTRAINT [FK_Computer_CPU]
GO
ALTER TABLE [dbo].[Computer]  WITH CHECK ADD  CONSTRAINT [FK_Computer_Motherboard] FOREIGN KEY([IDMotherboard])
REFERENCES [dbo].[Motherboard] ([ID])
GO
ALTER TABLE [dbo].[Computer] CHECK CONSTRAINT [FK_Computer_Motherboard]
GO
ALTER TABLE [dbo].[Computer]  WITH CHECK ADD  CONSTRAINT [FK_Computer_PowerUnit] FOREIGN KEY([IDPowerUnit])
REFERENCES [dbo].[PowerUnit] ([ID])
GO
ALTER TABLE [dbo].[Computer] CHECK CONSTRAINT [FK_Computer_PowerUnit]
GO
ALTER TABLE [dbo].[Computer]  WITH CHECK ADD  CONSTRAINT [FK_Computer_StorageDevice] FOREIGN KEY([IDStorageDevice])
REFERENCES [dbo].[StorageDevice] ([ID])
GO
ALTER TABLE [dbo].[Computer] CHECK CONSTRAINT [FK_Computer_StorageDevice]
GO
ALTER TABLE [dbo].[Computer]  WITH CHECK ADD  CONSTRAINT [FK_Computer_VideoCard] FOREIGN KEY([IDVideoCard])
REFERENCES [dbo].[VideoCard] ([ID])
GO
ALTER TABLE [dbo].[Computer] CHECK CONSTRAINT [FK_Computer_VideoCard]
GO
