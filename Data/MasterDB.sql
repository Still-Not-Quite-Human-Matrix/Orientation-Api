USE [master]
GO
DROP DATABASE [SNQHM_bangazoncli_db]
GO
/****** Object:  Database [SNQHM_bangazoncli_db]    Script Date: 4/30/2018 8:24:11 AM ******/
CREATE DATABASE [SNQHM_bangazoncli_db]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SNQHM_bangazoncli_db', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\SNQHM_bangazoncli_db.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SNQHM_bangazoncli_db_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\SNQHM_bangazoncli_db_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [SNQHM_bangazoncli_db] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SNQHM_bangazoncli_db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SNQHM_bangazoncli_db] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SNQHM_bangazoncli_db] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SNQHM_bangazoncli_db] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SNQHM_bangazoncli_db] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SNQHM_bangazoncli_db] SET ARITHABORT OFF 
GO
ALTER DATABASE [SNQHM_bangazoncli_db] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SNQHM_bangazoncli_db] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SNQHM_bangazoncli_db] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SNQHM_bangazoncli_db] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SNQHM_bangazoncli_db] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SNQHM_bangazoncli_db] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SNQHM_bangazoncli_db] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SNQHM_bangazoncli_db] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SNQHM_bangazoncli_db] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SNQHM_bangazoncli_db] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SNQHM_bangazoncli_db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SNQHM_bangazoncli_db] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SNQHM_bangazoncli_db] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SNQHM_bangazoncli_db] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SNQHM_bangazoncli_db] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SNQHM_bangazoncli_db] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SNQHM_bangazoncli_db] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SNQHM_bangazoncli_db] SET RECOVERY FULL 
GO
ALTER DATABASE [SNQHM_bangazoncli_db] SET  MULTI_USER 
GO
ALTER DATABASE [SNQHM_bangazoncli_db] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SNQHM_bangazoncli_db] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SNQHM_bangazoncli_db] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SNQHM_bangazoncli_db] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SNQHM_bangazoncli_db] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SNQHM_bangazoncli_db', N'ON'
GO
ALTER DATABASE [SNQHM_bangazoncli_db] SET QUERY_STORE = OFF
GO
USE [SNQHM_bangazoncli_db]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [SNQHM_bangazoncli_db]
GO
/****** Object:  Table [dbo].[Computer]    Script Date: 4/30/2018 8:24:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Computer](
	[ComputerID] [int] IDENTITY(1,1) NOT NULL,
	[Manufacturer] [varchar](50) NULL,
	[Make] [varchar](50) NULL,
	[PurchaseDate] [datetime] NULL,
 CONSTRAINT [PK_Computer] PRIMARY KEY CLUSTERED 
(
	[ComputerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 4/30/2018 8:24:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](30) NOT NULL,
	[LastName] [varchar](30) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastActiveDate] [datetime] NOT NULL,
	[StreetAddress] [varchar](50) NOT NULL,
	[City] [varchar](30) NOT NULL,
	[State] [char](2) NOT NULL,
	[ZipCode] [int] NOT NULL,
	[PhoneNumber] [bigint] NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 4/30/2018 8:24:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DepartmentID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Budget] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 4/30/2018 8:24:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[DepartmentID] [int] NULL,
	[StartDate] [datetime] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeComputer]    Script Date: 4/30/2018 8:24:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeComputer](
	[EmployeeComputerID] [int] IDENTITY(1,1) NOT NULL,
	[AssignedDate] [datetime] NULL,
	[ReturnedDate] [datetime] NULL,
	[EmployeeID] [int] NULL,
	[ComputerID] [int] NULL,
 CONSTRAINT [PK_EmployeeComputer] PRIMARY KEY CLUSTERED 
(
	[EmployeeComputerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeTraining]    Script Date: 4/30/2018 8:24:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeTraining](
	[EmployeeTrainingID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [int] NULL,
	[TrainingProgramID] [int] NULL,
 CONSTRAINT [PK_EmployeeTraining] PRIMARY KEY CLUSTERED 
(
	[EmployeeTrainingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 4/30/2018 8:24:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[PaymentID] [int] NOT NULL,
	[CustomerID] [int] NOT NULL,
	[Paid] [bit] NOT NULL,
	[Purchased] [bit] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItem]    Script Date: 4/30/2018 8:24:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItem](
	[OrderItemID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
 CONSTRAINT [PK_OrderItem] PRIMARY KEY CLUSTERED 
(
	[OrderItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 4/30/2018 8:24:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[PaymentID] [int] IDENTITY(1,1) NOT NULL,
	[PaymentType] [varchar](30) NOT NULL,
	[PaymentAccountNum] [int] NOT NULL,
	[CusID] [int] NOT NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 4/30/2018 8:24:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](30) NOT NULL,
	[Price] [money] NOT NULL,
	[Owner] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[Description] [nvarchar](200) NULL,
	[OutOfStock] [bit] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrainingProgram]    Script Date: 4/30/2018 8:24:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrainingProgram](
	[TrainingProgramID] [int] IDENTITY(1,1) NOT NULL,
	[MaxAttendees] [int] NULL,
	[TrainingTitle] [varchar](50) NULL,
	[Description] [varchar](50) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
 CONSTRAINT [PK_TrainingProgram] PRIMARY KEY CLUSTERED 
(
	[TrainingProgramID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Computer] ON 

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
INSERT [dbo].[Computer] ([ComputerID], [Manufacturer], [Make], [PurchaseDate]) VALUES (14, N'Super', N'Computer', CAST(N'2018-04-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Computer] ([ComputerID], [Manufacturer], [Make], [PurchaseDate]) VALUES (15, N'Computer', N'15', CAST(N'2012-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Computer] ([ComputerID], [Manufacturer], [Make], [PurchaseDate]) VALUES (16, N'Computer', N'16', CAST(N'2001-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Computer] ([ComputerID], [Manufacturer], [Make], [PurchaseDate]) VALUES (17, N'Computer', N'17', CAST(N'2003-03-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Computer] ([ComputerID], [Manufacturer], [Make], [PurchaseDate]) VALUES (18, N'Computer', N'18', CAST(N'1997-07-07T00:00:00.000' AS DateTime))
INSERT [dbo].[Computer] ([ComputerID], [Manufacturer], [Make], [PurchaseDate]) VALUES (19, N'Computer', N'19', CAST(N'2015-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Computer] ([ComputerID], [Manufacturer], [Make], [PurchaseDate]) VALUES (20, N'Computer', N'20', CAST(N'2018-03-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Computer] ([ComputerID], [Manufacturer], [Make], [PurchaseDate]) VALUES (21, N'Computer', N'21', CAST(N'2007-05-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Computer] ([ComputerID], [Manufacturer], [Make], [PurchaseDate]) VALUES (22, N'Computer', N'22', CAST(N'2009-07-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Computer] ([ComputerID], [Manufacturer], [Make], [PurchaseDate]) VALUES (23, N'Computer', N'23', CAST(N'2018-02-02T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Computer] OFF
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [CreatedDate], [LastActiveDate], [StreetAddress], [City], [State], [ZipCode], [PhoneNumber], [Status]) VALUES (1, N'Alex', N'Sanchez', CAST(N'2018-03-05T00:00:00.000' AS DateTime), CAST(N'2019-03-05T00:00:00.000' AS DateTime), N'900 Gallatin road', N'Nashville', N'TN', 37206, 1231231234, 1)
INSERT [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [CreatedDate], [LastActiveDate], [StreetAddress], [City], [State], [ZipCode], [PhoneNumber], [Status]) VALUES (2, N'Ken', N'Lewis', CAST(N'2018-03-05T00:00:00.000' AS DateTime), CAST(N'2018-03-05T00:00:00.000' AS DateTime), N'300 Spartan drive', N'Sparta', N'TN', 30201, 1231231234, 1)
INSERT [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [CreatedDate], [LastActiveDate], [StreetAddress], [City], [State], [ZipCode], [PhoneNumber], [Status]) VALUES (3, N'Gina', N'Antonini', CAST(N'2018-03-05T00:00:00.000' AS DateTime), CAST(N'2018-03-05T00:00:00.000' AS DateTime), N'101 Loony Toons road', N'Wichata', N'KS', 50520, 1231231234, 1)
INSERT [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [CreatedDate], [LastActiveDate], [StreetAddress], [City], [State], [ZipCode], [PhoneNumber], [Status]) VALUES (4, N'Matt', N'Hensley', CAST(N'2018-03-05T00:00:00.000' AS DateTime), CAST(N'2018-03-05T00:00:00.000' AS DateTime), N'500 Interstate blvd S', N'Nashville', N'TN', 37201, 1231231234, 1)
INSERT [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [CreatedDate], [LastActiveDate], [StreetAddress], [City], [State], [ZipCode], [PhoneNumber], [Status]) VALUES (5, N'Adam', N'Smith', CAST(N'2018-03-06T00:00:00.000' AS DateTime), CAST(N'2018-03-06T00:00:00.000' AS DateTime), N'123 Superman Ln S', N'Tacoma', N'WA', 98704, 1231231234, 1)
INSERT [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [CreatedDate], [LastActiveDate], [StreetAddress], [City], [State], [ZipCode], [PhoneNumber], [Status]) VALUES (6, N'Tony', N'Tiger', CAST(N'1971-05-04T00:00:00.000' AS DateTime), CAST(N'2017-05-09T00:00:00.000' AS DateTime), N'521 Place Ln', N'Chicago', N'IL', 60477, 1231231234, 1)
SET IDENTITY_INSERT [dbo].[Customer] OFF
SET IDENTITY_INSERT [dbo].[Department] ON 

INSERT [dbo].[Department] ([DepartmentID], [Name], [Budget]) VALUES (0, N'Compliance', CAST(500000 AS Decimal(18, 0)))
INSERT [dbo].[Department] ([DepartmentID], [Name], [Budget]) VALUES (1, N'HR', CAST(207000 AS Decimal(18, 0)))
INSERT [dbo].[Department] ([DepartmentID], [Name], [Budget]) VALUES (2, N'Operations', CAST(400000 AS Decimal(18, 0)))
INSERT [dbo].[Department] ([DepartmentID], [Name], [Budget]) VALUES (3, N'IT', CAST(512000 AS Decimal(18, 0)))
INSERT [dbo].[Department] ([DepartmentID], [Name], [Budget]) VALUES (4, N'Sales', CAST(350000 AS Decimal(18, 0)))
INSERT [dbo].[Department] ([DepartmentID], [Name], [Budget]) VALUES (5, N'Purchasing', CAST(600000 AS Decimal(18, 0)))
INSERT [dbo].[Department] ([DepartmentID], [Name], [Budget]) VALUES (6, N'Marketing', CAST(250000 AS Decimal(18, 0)))
INSERT [dbo].[Department] ([DepartmentID], [Name], [Budget]) VALUES (7, N'Accounting', CAST(350000 AS Decimal(18, 0)))
INSERT [dbo].[Department] ([DepartmentID], [Name], [Budget]) VALUES (8, N'Leagal', CAST(10000000 AS Decimal(18, 0)))
INSERT [dbo].[Department] ([DepartmentID], [Name], [Budget]) VALUES (9, N'Oversight', CAST(25000 AS Decimal(18, 0)))
INSERT [dbo].[Department] ([DepartmentID], [Name], [Budget]) VALUES (10, N'Undersight', CAST(300000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[Department] OFF
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [DepartmentID], [StartDate]) VALUES (1, N'Adam', N'Smith', 1, CAST(N'2012-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [DepartmentID], [StartDate]) VALUES (2, N'Tommy', N'Sawyer', 2, CAST(N'2014-12-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [DepartmentID], [StartDate]) VALUES (3, N'Sammy', N'Sousa', 2, CAST(N'2012-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [DepartmentID], [StartDate]) VALUES (4, N'Santa', N'Claus', 6, CAST(N'1900-12-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [DepartmentID], [StartDate]) VALUES (5, N'Alex', N'Sanchez', 7, CAST(N'2017-12-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [DepartmentID], [StartDate]) VALUES (6, N'Adam', N'Smith', 3, CAST(N'2017-06-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [DepartmentID], [StartDate]) VALUES (7, N'Gina', N'Antonini', 7, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [DepartmentID], [StartDate]) VALUES (8, N'Matt', N'Hensley', 1, CAST(N'2018-02-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [DepartmentID], [StartDate]) VALUES (9, N'Ken', N'Lewis', 2, CAST(N'2017-11-23T00:00:00.000' AS DateTime))
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [DepartmentID], [StartDate]) VALUES (10, N'Easter', N'Bunny', 5, CAST(N'2017-04-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [DepartmentID], [StartDate]) VALUES (11, N'Paul', N'John', 4, CAST(N'2012-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [DepartmentID], [StartDate]) VALUES (12, N'Vince ', N'McMahon', 6, CAST(N'1990-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [DepartmentID], [StartDate]) VALUES (13, N'Hulk', N'Hogan', 10, CAST(N'1997-04-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [DepartmentID], [StartDate]) VALUES (14, N'Randy', N'Savage', 9, CAST(N'1995-04-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [DepartmentID], [StartDate]) VALUES (15, N'Big', N'Bossman', 2, CAST(N'2012-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [DepartmentID], [StartDate]) VALUES (16, N'Ric', N'Flair', 8, CAST(N'1990-09-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [DepartmentID], [StartDate]) VALUES (17, N'Owen', N'Hart', 8, CAST(N'2006-03-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [DepartmentID], [StartDate]) VALUES (18, N'The', N'Rock', 3, CAST(N'2018-04-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [DepartmentID], [StartDate]) VALUES (19, N'Triple', N'H', 4, CAST(N'2012-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [DepartmentID], [StartDate]) VALUES (20, N'Jeff', N'Jarrett', 5, CAST(N'1987-07-07T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Employee] OFF
SET IDENTITY_INSERT [dbo].[EmployeeComputer] ON 

INSERT [dbo].[EmployeeComputer] ([EmployeeComputerID], [AssignedDate], [ReturnedDate], [EmployeeID], [ComputerID]) VALUES (1, CAST(N'2005-01-24T00:00:00.000' AS DateTime), NULL, 1, 1)
INSERT [dbo].[EmployeeComputer] ([EmployeeComputerID], [AssignedDate], [ReturnedDate], [EmployeeID], [ComputerID]) VALUES (2, CAST(N'2003-03-02T00:00:00.000' AS DateTime), NULL, 2, 2)
INSERT [dbo].[EmployeeComputer] ([EmployeeComputerID], [AssignedDate], [ReturnedDate], [EmployeeID], [ComputerID]) VALUES (3, CAST(N'2015-02-03T00:00:00.000' AS DateTime), NULL, 3, 3)
INSERT [dbo].[EmployeeComputer] ([EmployeeComputerID], [AssignedDate], [ReturnedDate], [EmployeeID], [ComputerID]) VALUES (4, CAST(N'1990-01-01T00:00:00.000' AS DateTime), NULL, 12, 4)
INSERT [dbo].[EmployeeComputer] ([EmployeeComputerID], [AssignedDate], [ReturnedDate], [EmployeeID], [ComputerID]) VALUES (5, CAST(N'2018-04-04T00:00:00.000' AS DateTime), CAST(N'2018-04-10T00:00:00.000' AS DateTime), 7, 5)
SET IDENTITY_INSERT [dbo].[EmployeeComputer] OFF
SET IDENTITY_INSERT [dbo].[EmployeeTraining] ON 

INSERT [dbo].[EmployeeTraining] ([EmployeeTrainingID], [EmployeeID], [TrainingProgramID]) VALUES (1, 1, 5)
INSERT [dbo].[EmployeeTraining] ([EmployeeTrainingID], [EmployeeID], [TrainingProgramID]) VALUES (23, 3, 6)
INSERT [dbo].[EmployeeTraining] ([EmployeeTrainingID], [EmployeeID], [TrainingProgramID]) VALUES (24, 2, 3)
INSERT [dbo].[EmployeeTraining] ([EmployeeTrainingID], [EmployeeID], [TrainingProgramID]) VALUES (25, 4, 4)
INSERT [dbo].[EmployeeTraining] ([EmployeeTrainingID], [EmployeeID], [TrainingProgramID]) VALUES (26, 6, 1)
INSERT [dbo].[EmployeeTraining] ([EmployeeTrainingID], [EmployeeID], [TrainingProgramID]) VALUES (27, 7, 7)
INSERT [dbo].[EmployeeTraining] ([EmployeeTrainingID], [EmployeeID], [TrainingProgramID]) VALUES (28, 6, 2)
SET IDENTITY_INSERT [dbo].[EmployeeTraining] OFF
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [PaymentID], [CustomerID], [Paid], [Purchased]) VALUES (13, 7, 6, 1, 0)
INSERT [dbo].[Order] ([OrderID], [PaymentID], [CustomerID], [Paid], [Purchased]) VALUES (14, 8, 5, 1, 0)
INSERT [dbo].[Order] ([OrderID], [PaymentID], [CustomerID], [Paid], [Purchased]) VALUES (15, 9, 4, 1, 0)
INSERT [dbo].[Order] ([OrderID], [PaymentID], [CustomerID], [Paid], [Purchased]) VALUES (16, 10, 3, 0, 0)
INSERT [dbo].[Order] ([OrderID], [PaymentID], [CustomerID], [Paid], [Purchased]) VALUES (17, 11, 2, 0, 0)
INSERT [dbo].[Order] ([OrderID], [PaymentID], [CustomerID], [Paid], [Purchased]) VALUES (18, 12, 1, 0, 0)
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[Payment] ON 

INSERT [dbo].[Payment] ([PaymentID], [PaymentType], [PaymentAccountNum], [CusID]) VALUES (7, N'Amex', 7045, 1)
INSERT [dbo].[Payment] ([PaymentID], [PaymentType], [PaymentAccountNum], [CusID]) VALUES (8, N'Mastercard', 4567, 2)
INSERT [dbo].[Payment] ([PaymentID], [PaymentType], [PaymentAccountNum], [CusID]) VALUES (9, N'Checking Account', 41342, 3)
INSERT [dbo].[Payment] ([PaymentID], [PaymentType], [PaymentAccountNum], [CusID]) VALUES (10, N'Checking Account', 34350, 4)
INSERT [dbo].[Payment] ([PaymentID], [PaymentType], [PaymentAccountNum], [CusID]) VALUES (11, N'American Express Card', 60456, 5)
INSERT [dbo].[Payment] ([PaymentID], [PaymentType], [PaymentAccountNum], [CusID]) VALUES (12, N'Discover Card', 6011, 6)
SET IDENTITY_INSERT [dbo].[Payment] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductID], [Name], [Price], [Owner], [Count], [Description], [OutOfStock]) VALUES (11, N'Vienna Sausage', 14.0000, 1, 1, N'Juciy good pressed meat', 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Price], [Owner], [Count], [Description], [OutOfStock]) VALUES (12, N'Princess Diana Beanie Baby', 200000.0000, 1, 2, N'Why, just why', 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Price], [Owner], [Count], [Description], [OutOfStock]) VALUES (13, N'A Somewhat Used Tire', 53.0000, 2, 3, N'Not all the way worn down', 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Price], [Owner], [Count], [Description], [OutOfStock]) VALUES (14, N'Sound Machine', 72.0000, 2, 4, N'Farts, burps, and the likes', 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Price], [Owner], [Count], [Description], [OutOfStock]) VALUES (15, N'Alexs Soul', 14000000.0000, 3, 5, N'Cant hardly put a price on this', 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Price], [Owner], [Count], [Description], [OutOfStock]) VALUES (16, N'Frozen Super Size Fries', 4.0000, 3, 6, N'Perfect for reheating already in the box', 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Price], [Owner], [Count], [Description], [OutOfStock]) VALUES (17, N'Lava Lamp', 12.0000, 4, 7, N'A throwback to the good ole days', 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Price], [Owner], [Count], [Description], [OutOfStock]) VALUES (18, N'Inflatable Unicorn Hat', 6.0000, 4, 8, N'', 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Price], [Owner], [Count], [Description], [OutOfStock]) VALUES (19, N'Everlasting Dry Erase Markers', 204.0000, 5, 9, N'Really they last forever', 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Price], [Owner], [Count], [Description], [OutOfStock]) VALUES (20, N'Adams MacBook', 100.0000, 5, 10, N'It is probably worth more, but maybe not', 0)
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[TrainingProgram] ON 

INSERT [dbo].[TrainingProgram] ([TrainingProgramID], [MaxAttendees], [TrainingTitle], [Description], [StartDate], [EndDate]) VALUES (1, 5, N'Sexual Harrassement', N'How to hit on co-workers', CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[TrainingProgram] ([TrainingProgramID], [MaxAttendees], [TrainingTitle], [Description], [StartDate], [EndDate]) VALUES (2, 200, N'Hugging and Bugging', N'Too close for comfort', CAST(N'2018-05-30T00:00:00.000' AS DateTime), CAST(N'2018-05-30T00:00:00.000' AS DateTime))
INSERT [dbo].[TrainingProgram] ([TrainingProgramID], [MaxAttendees], [TrainingTitle], [Description], [StartDate], [EndDate]) VALUES (3, 10, N'SEO Training', N'Lunch', CAST(N'2018-02-14T00:00:00.000' AS DateTime), CAST(N'2018-02-14T00:00:00.000' AS DateTime))
INSERT [dbo].[TrainingProgram] ([TrainingProgramID], [MaxAttendees], [TrainingTitle], [Description], [StartDate], [EndDate]) VALUES (4, 15, N'Trafficing in Persons', N'How to traffic people', CAST(N'2018-06-01T00:00:00.000' AS DateTime), CAST(N'2018-06-01T00:00:00.000' AS DateTime))
INSERT [dbo].[TrainingProgram] ([TrainingProgramID], [MaxAttendees], [TrainingTitle], [Description], [StartDate], [EndDate]) VALUES (5, 5, N'Equal Opportunity', N'How to discriminate offically', CAST(N'2018-07-04T00:00:00.000' AS DateTime), CAST(N'2018-07-04T00:00:00.000' AS DateTime))
INSERT [dbo].[TrainingProgram] ([TrainingProgramID], [MaxAttendees], [TrainingTitle], [Description], [StartDate], [EndDate]) VALUES (6, 25, N'Effective Managment', N'Oxymoron', CAST(N'2018-08-20T00:00:00.000' AS DateTime), CAST(N'2018-08-20T00:00:00.000' AS DateTime))
INSERT [dbo].[TrainingProgram] ([TrainingProgramID], [MaxAttendees], [TrainingTitle], [Description], [StartDate], [EndDate]) VALUES (7, 30, N'Corporal Punishment', N'Workplace counseling', CAST(N'2017-12-25T00:00:00.000' AS DateTime), CAST(N'2017-12-25T00:00:00.000' AS DateTime))
INSERT [dbo].[TrainingProgram] ([TrainingProgramID], [MaxAttendees], [TrainingTitle], [Description], [StartDate], [EndDate]) VALUES (8, 200, N'Hugging and Bugging', N'Too close for comfort', CAST(N'2018-05-30T00:00:00.000' AS DateTime), CAST(N'2018-05-30T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[TrainingProgram] OFF
/****** Object:  Index [IFK_OrderCustomerID]    Script Date: 4/30/2018 8:24:13 AM ******/
CREATE NONCLUSTERED INDEX [IFK_OrderCustomerID] ON [dbo].[Customer]
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IFK_PaymentCusID]    Script Date: 4/30/2018 8:24:13 AM ******/
CREATE NONCLUSTERED INDEX [IFK_PaymentCusID] ON [dbo].[Customer]
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IFK_ProductOwnder]    Script Date: 4/30/2018 8:24:13 AM ******/
CREATE NONCLUSTERED INDEX [IFK_ProductOwnder] ON [dbo].[Customer]
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IFK_OrderOrderID]    Script Date: 4/30/2018 8:24:13 AM ******/
CREATE NONCLUSTERED INDEX [IFK_OrderOrderID] ON [dbo].[Order]
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IFK_OrderPaymentID]    Script Date: 4/30/2018 8:24:13 AM ******/
CREATE NONCLUSTERED INDEX [IFK_OrderPaymentID] ON [dbo].[Payment]
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IFK_OrderItemProductID]    Script Date: 4/30/2018 8:24:13 AM ******/
CREATE NONCLUSTERED INDEX [IFK_OrderItemProductID] ON [dbo].[Product]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_OutOfStock]  DEFAULT ((0)) FOR [OutOfStock]
GO
ALTER TABLE [dbo].[EmployeeComputer]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeComputer_EmployeeComputer1] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([EmployeeID])
GO
ALTER TABLE [dbo].[EmployeeComputer] CHECK CONSTRAINT [FK_EmployeeComputer_EmployeeComputer1]
GO
ALTER TABLE [dbo].[EmployeeComputer]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeComputer_EmployeeComputer2] FOREIGN KEY([ComputerID])
REFERENCES [dbo].[Computer] ([ComputerID])
GO
ALTER TABLE [dbo].[EmployeeComputer] CHECK CONSTRAINT [FK_EmployeeComputer_EmployeeComputer2]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_CustomerID] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_CustomerID]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_PaymentID] FOREIGN KEY([PaymentID])
REFERENCES [dbo].[Payment] ([PaymentID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_PaymentID]
GO
ALTER TABLE [dbo].[OrderItem]  WITH CHECK ADD  CONSTRAINT [FK_OrderID] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderItem] CHECK CONSTRAINT [FK_OrderID]
GO
ALTER TABLE [dbo].[OrderItem]  WITH CHECK ADD  CONSTRAINT [FK_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[OrderItem] CHECK CONSTRAINT [FK_ProductID]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_CusID] FOREIGN KEY([CusID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_CusID]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Owner] FOREIGN KEY([Owner])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Owner]
GO
USE [master]
GO
ALTER DATABASE [SNQHM_bangazoncli_db] SET  READ_WRITE 
GO
