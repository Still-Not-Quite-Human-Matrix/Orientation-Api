USE [SNQHM_bangazoncli_db]
GO
SET IDENTITY_INSERT [dbo].[Computer] ON 
GO
INSERT [dbo].[Computer] ([ComputerID], [Manufacturer], [Make], [PurchaseDate]) VALUES (1, N'Dell', N'XPS', CAST(N'2005-01-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Computer] ([ComputerID], [Manufacturer], [Make], [PurchaseDate]) VALUES (2, N'Dell', N'Inspiron', CAST(N'2002-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Computer] ([ComputerID], [Manufacturer], [Make], [PurchaseDate]) VALUES (3, N'Dell', N'XPS', CAST(N'2013-03-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Computer] ([ComputerID], [Manufacturer], [Make], [PurchaseDate]) VALUES (4, N'Compaq', N'DeskPro 386', CAST(N'1986-06-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Computer] ([ComputerID], [Manufacturer], [Make], [PurchaseDate]) VALUES (5, N'HP', N'Pavilion', CAST(N'2018-04-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Computer] ([ComputerID], [Manufacturer], [Make], [PurchaseDate]) VALUES (6, N'Gateway', N'DX', CAST(N'2010-10-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Computer] ([ComputerID], [Manufacturer], [Make], [PurchaseDate]) VALUES (7, N'Dell', N'XPS', CAST(N'2005-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Computer] ([ComputerID], [Manufacturer], [Make], [PurchaseDate]) VALUES (8, N'Tandy', N'TRS-80', CAST(N'1977-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Computer] ([ComputerID], [Manufacturer], [Make], [PurchaseDate]) VALUES (9, N'Sony', N'Sony', CAST(N'2000-03-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Computer] ([ComputerID], [Manufacturer], [Make], [PurchaseDate]) VALUES (10, N'Dell', N'Inspiron', CAST(N'2012-05-05T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Computer] OFF
GO
