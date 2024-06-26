USE [master]
GO
/****** Object:  Database [YanivPM22Var11]    Script Date: 16.04.2024 12:47:12 ******/
CREATE DATABASE [YanivPM22Var11]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'YanivPM22Var11', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLYANIVPM22\MSSQL\DATA\YanivPM22Var11.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'YanivPM22Var11_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLYANIVPM22\MSSQL\DATA\YanivPM22Var11_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [YanivPM22Var11] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [YanivPM22Var11].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [YanivPM22Var11] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [YanivPM22Var11] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [YanivPM22Var11] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [YanivPM22Var11] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [YanivPM22Var11] SET ARITHABORT OFF 
GO
ALTER DATABASE [YanivPM22Var11] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [YanivPM22Var11] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [YanivPM22Var11] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [YanivPM22Var11] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [YanivPM22Var11] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [YanivPM22Var11] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [YanivPM22Var11] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [YanivPM22Var11] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [YanivPM22Var11] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [YanivPM22Var11] SET  DISABLE_BROKER 
GO
ALTER DATABASE [YanivPM22Var11] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [YanivPM22Var11] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [YanivPM22Var11] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [YanivPM22Var11] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [YanivPM22Var11] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [YanivPM22Var11] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [YanivPM22Var11] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [YanivPM22Var11] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [YanivPM22Var11] SET  MULTI_USER 
GO
ALTER DATABASE [YanivPM22Var11] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [YanivPM22Var11] SET DB_CHAINING OFF 
GO
ALTER DATABASE [YanivPM22Var11] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [YanivPM22Var11] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [YanivPM22Var11] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [YanivPM22Var11] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [YanivPM22Var11] SET QUERY_STORE = ON
GO
ALTER DATABASE [YanivPM22Var11] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [YanivPM22Var11]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 16.04.2024 12:47:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[NameDepartment] [text] NOT NULL,
	[Id] [int] NOT NULL,
	[boss] [text] NOT NULL,
	[UCR] [varchar](255) NULL,
	[DCR] [smalldatetime] NULL,
	[ULC] [varchar](255) NULL,
	[DLC] [smalldatetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeINFO]    Script Date: 16.04.2024 12:47:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeINFO](
	[Position] [text] NOT NULL,
	[EmployeeID] [int] NOT NULL,
	[Pasport] [int] NOT NULL,
	[HomeAddress] [text] NOT NULL,
	[PlaceBirth] [text] NOT NULL,
	[DateBirth] [nchar](10) NOT NULL,
	[DepartmentID] [int] NOT NULL,
	[Name] [text] NULL,
	[Surname] [text] NULL,
	[FatherName] [text] NULL,
	[UCR] [varchar](255) NULL,
	[DCR] [smalldatetime] NULL,
	[ULC] [varchar](255) NULL,
	[DLC] [smalldatetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoursWorked]    Script Date: 16.04.2024 12:47:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoursWorked](
	[HoursWorkedDay] [int] NULL,
	[AddHoursWorkedDay] [int] NULL,
	[EmployeeID] [int] NOT NULL,
	[MounthWork] [varchar](255) NULL,
	[UCR] [varchar](255) NULL,
	[DCR] [smalldatetime] NULL,
	[ULC] [varchar](255) NULL,
	[DLC] [smalldatetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalaryGive]    Script Date: 16.04.2024 12:47:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalaryGive](
	[EmployeeID] [int] NOT NULL,
	[Salary] [int] NULL,
	[PayGiveData] [varchar](255) NULL,
	[UCR] [varchar](255) NULL,
	[DCR] [smalldatetime] NULL,
	[ULC] [varchar](255) NULL,
	[DLC] [smalldatetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalaryPerHours]    Script Date: 16.04.2024 12:47:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalaryPerHours](
	[PositionName] [varchar](255) NULL,
	[Salary] [int] NOT NULL,
	[UCR] [varchar](255) NULL,
	[DCR] [smalldatetime] NULL,
	[ULC] [varchar](255) NULL,
	[DLC] [smalldatetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vacantion]    Script Date: 16.04.2024 12:47:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vacantion](
	[EmployeeID] [int] NOT NULL,
	[VacantionTime] [int] NOT NULL,
	[VacantionPay] [int] NOT NULL,
	[VacantionMounth] [varchar](255) NULL,
	[UCR] [varchar](255) NULL,
	[DCR] [smalldatetime] NULL,
	[ULC] [varchar](255) NULL,
	[DLC] [smalldatetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Department] ([NameDepartment], [Id], [boss], [UCR], [DCR], [ULC], [DLC]) VALUES (N'DepartmentA', 1, N'Anderson Rey', N'dbo', CAST(N'2024-04-09T09:04:00' AS SmallDateTime), N'dbo', CAST(N'2024-04-11T17:48:00' AS SmallDateTime))
INSERT [dbo].[Department] ([NameDepartment], [Id], [boss], [UCR], [DCR], [ULC], [DLC]) VALUES (N'DepartmentB', 2, N'Bush Robert', N'dbo', CAST(N'2024-04-09T09:04:00' AS SmallDateTime), N'dbo', CAST(N'2024-04-09T09:35:00' AS SmallDateTime))
INSERT [dbo].[Department] ([NameDepartment], [Id], [boss], [UCR], [DCR], [ULC], [DLC]) VALUES (N'DepartmentC', 3, N'aNDERSON', N'dbo', CAST(N'2024-04-09T09:04:00' AS SmallDateTime), N'dbo', CAST(N'2024-04-16T08:56:00' AS SmallDateTime))
INSERT [dbo].[Department] ([NameDepartment], [Id], [boss], [UCR], [DCR], [ULC], [DLC]) VALUES (N'DepartmentD', 4, N'Clark Peter', N'dbo', CAST(N'2024-04-09T09:04:00' AS SmallDateTime), N'dbo', CAST(N'2024-04-09T09:35:00' AS SmallDateTime))
GO
INSERT [dbo].[EmployeeINFO] ([Position], [EmployeeID], [Pasport], [HomeAddress], [PlaceBirth], [DateBirth], [DepartmentID], [Name], [Surname], [FatherName], [UCR], [DCR], [ULC], [DLC]) VALUES (N'Electrician', 1, 553356, N'Zelena 02', N'Lviv', N'08.03.2000', 1, N'Alfred', N'Smith', N'Alex ', N'dbo', CAST(N'2024-04-11T17:50:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[EmployeeINFO] ([Position], [EmployeeID], [Pasport], [HomeAddress], [PlaceBirth], [DateBirth], [DepartmentID], [Name], [Surname], [FatherName], [UCR], [DCR], [ULC], [DLC]) VALUES (N'Builder', 2, 238754, N'Bandery 01', N'Sambir', N'01.01.1996', 2, N'Otis', N'Underwood', N'Arthur', N'dbo', CAST(N'2024-04-11T17:50:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[EmployeeINFO] ([Position], [EmployeeID], [Pasport], [HomeAddress], [PlaceBirth], [DateBirth], [DepartmentID], [Name], [Surname], [FatherName], [UCR], [DCR], [ULC], [DLC]) VALUES (N'Electrician', 3, 119944, N'Shevchenka 55', N'Kyiv', N'09.07.1989', 2, N'Ricky ', N'Lowe', N'Shaun', N'dbo', CAST(N'2024-04-11T17:50:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[EmployeeINFO] ([Position], [EmployeeID], [Pasport], [HomeAddress], [PlaceBirth], [DateBirth], [DepartmentID], [Name], [Surname], [FatherName], [UCR], [DCR], [ULC], [DLC]) VALUES (N'Builder', 4, 359789, N'Srtit 05', N'Lviv', N'29.07.2001', 1, N'Velma', N'Stafford', N'Robert ', N'dbo', CAST(N'2024-04-11T17:50:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[EmployeeINFO] ([Position], [EmployeeID], [Pasport], [HomeAddress], [PlaceBirth], [DateBirth], [DepartmentID], [Name], [Surname], [FatherName], [UCR], [DCR], [ULC], [DLC]) VALUES (N'Electrician', 5, 567895, N'Rollins 34', N'Kharkiv', N'16.03.1996', 3, N'Alex ', N'Rollins', N'Deacon', N'dbo', CAST(N'2024-04-11T17:50:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[EmployeeINFO] ([Position], [EmployeeID], [Pasport], [HomeAddress], [PlaceBirth], [DateBirth], [DepartmentID], [Name], [Surname], [FatherName], [UCR], [DCR], [ULC], [DLC]) VALUES (N'Electrician', 6, 123456, N'Zelena 45', N'Sambir', N'30.07.2002', 4, N'Abdullah', N'Wiley', N'Alexis', N'dbo', CAST(N'2024-04-11T17:50:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[EmployeeINFO] ([Position], [EmployeeID], [Pasport], [HomeAddress], [PlaceBirth], [DateBirth], [DepartmentID], [Name], [Surname], [FatherName], [UCR], [DCR], [ULC], [DLC]) VALUES (N'Builder', 7, 676757, N'Rollins 21', N'Lviv', N'21.11.1979', 3, N'Arthur', N'Hill', N'Mohammad', N'dbo', CAST(N'2024-04-11T17:50:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[EmployeeINFO] ([Position], [EmployeeID], [Pasport], [HomeAddress], [PlaceBirth], [DateBirth], [DepartmentID], [Name], [Surname], [FatherName], [UCR], [DCR], [ULC], [DLC]) VALUES (N'Builder', 8, 232123, N'Bandery 33', N'Dobromyl', N'12.12.2000', 4, N'Nathan', N'Singh', N'Deacon', N'dbo', CAST(N'2024-04-11T17:50:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[EmployeeINFO] ([Position], [EmployeeID], [Pasport], [HomeAddress], [PlaceBirth], [DateBirth], [DepartmentID], [Name], [Surname], [FatherName], [UCR], [DCR], [ULC], [DLC]) VALUES (N'Accountant', 9, 345632, N'Srtit 90', N'Lviv', N'29.01.2000', 1, N'Deacon', N'Peck', N'Otis', N'dbo', CAST(N'2024-04-11T17:50:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[EmployeeINFO] ([Position], [EmployeeID], [Pasport], [HomeAddress], [PlaceBirth], [DateBirth], [DepartmentID], [Name], [Surname], [FatherName], [UCR], [DCR], [ULC], [DLC]) VALUES (N'Accountant', 10, 678904, N'Zelena 89', N'Dnipro', N'01.03.2002', 2, N'Markus', N'Mccall', N'Abdullah', N'dbo', CAST(N'2024-04-11T17:50:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[EmployeeINFO] ([Position], [EmployeeID], [Pasport], [HomeAddress], [PlaceBirth], [DateBirth], [DepartmentID], [Name], [Surname], [FatherName], [UCR], [DCR], [ULC], [DLC]) VALUES (N'Accountant', 11, 997865, N'Rollins 22', N'Sambir', N'23.02.1999', 3, N'Shaun', N'Pollard', N'Jared ', N'dbo', CAST(N'2024-04-11T17:50:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[EmployeeINFO] ([Position], [EmployeeID], [Pasport], [HomeAddress], [PlaceBirth], [DateBirth], [DepartmentID], [Name], [Surname], [FatherName], [UCR], [DCR], [ULC], [DLC]) VALUES (N'Accountant', 12, 231235, N'Bandery 23', N'Kyiv', N'02.04.2001', 4, N'Mohammad', N'Simpson', N'Jared ', N'dbo', CAST(N'2024-04-11T17:50:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[EmployeeINFO] ([Position], [EmployeeID], [Pasport], [HomeAddress], [PlaceBirth], [DateBirth], [DepartmentID], [Name], [Surname], [FatherName], [UCR], [DCR], [ULC], [DLC]) VALUES (N'Architect', 13, 986435, N'Zelena 43', N'Lviv', N'09.07.2000', 1, N'Brett', N'Whitaker', N'Robert ', N'dbo', CAST(N'2024-04-11T17:50:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[EmployeeINFO] ([Position], [EmployeeID], [Pasport], [HomeAddress], [PlaceBirth], [DateBirth], [DepartmentID], [Name], [Surname], [FatherName], [UCR], [DCR], [ULC], [DLC]) VALUES (N'Architect', 14, 875357, N'Srtit 66', N'Dnipro', N'21.09.1976', 2, N'Alexis', N'Camacho', N'Nathan ', N'dbo', CAST(N'2024-04-11T17:50:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[EmployeeINFO] ([Position], [EmployeeID], [Pasport], [HomeAddress], [PlaceBirth], [DateBirth], [DepartmentID], [Name], [Surname], [FatherName], [UCR], [DCR], [ULC], [DLC]) VALUES (N'Architect', 15, 567384, N'Rollins 21', N'Lviv', N'12.11.2002', 3, N'Deacon', N'Lara', N'Jared ', N'dbo', CAST(N'2024-04-11T17:50:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[EmployeeINFO] ([Position], [EmployeeID], [Pasport], [HomeAddress], [PlaceBirth], [DateBirth], [DepartmentID], [Name], [Surname], [FatherName], [UCR], [DCR], [ULC], [DLC]) VALUES (N'Architect', 16, 754546, N'Zelena 76', N'Lviv', N'30.12.1999', 4, N'Jared ', N'Pittman', N'Ricky ', N'dbo', CAST(N'2024-04-11T17:50:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[EmployeeINFO] ([Position], [EmployeeID], [Pasport], [HomeAddress], [PlaceBirth], [DateBirth], [DepartmentID], [Name], [Surname], [FatherName], [UCR], [DCR], [ULC], [DLC]) VALUES (N'Builder', 17, 75343446, N'Zelena 76', N'Lviv', N'30.12.1999', 4, N'Rey ', N'Pittman', N'Ricky ', N'dbo', CAST(N'2024-04-16T12:36:00' AS SmallDateTime), NULL, NULL)
GO
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (0, 4, 8, N'2024.03.30', N'dbo', CAST(N'2024-04-15T15:32:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (2, 0, 2, N'2024.02.20', N'dbo', CAST(N'2024-04-15T15:32:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (2, 7, 3, N'2024.02.10', N'dbo', CAST(N'2024-04-15T15:32:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (3, 3, 10, N'2024.01.10', N'dbo', CAST(N'2024-04-15T15:32:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (3, 5, 3, N'2024.04.03', N'dbo', CAST(N'2024-04-15T15:32:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (3, 5, 5, N'2024.01.03', N'dbo', CAST(N'2024-04-15T15:32:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (4, 4, 8, N'2024.01.01', N'dbo', CAST(N'2024-04-15T15:32:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (4, 5, 3, N'2024.02.20', N'dbo', CAST(N'2024-04-15T15:32:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (5, 0, 2, N'2024.03.29', N'dbo', CAST(N'2024-04-15T15:32:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (5, 5, 5, N'2024.02.02', N'dbo', CAST(N'2024-04-15T15:32:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (5, 5, 7, N'2024.01.14', N'dbo', CAST(N'2024-04-15T15:32:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (5, 5, 10, N'2024.02.03', N'dbo', CAST(N'2024-04-15T15:32:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (5, 6, 10, N'2024.01.03', N'dbo', CAST(N'2024-04-15T15:32:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (6, 0, 4, N'2024.03.04', N'dbo', CAST(N'2024-04-15T15:32:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (6, 2, 2, N'2024.01.14', N'dbo', CAST(N'2024-04-15T15:32:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (6, 4, 5, N'2024.03.30', N'dbo', CAST(N'2024-04-15T15:32:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (6, 5, 10, N'2024.01.12', N'dbo', CAST(N'2024-04-15T15:32:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (6, 6, 4, N'2024.02.11', N'dbo', CAST(N'2024-04-15T15:32:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (6, 6, 6, N'2024.02.01', N'dbo', CAST(N'2024-04-15T15:32:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (7, 2, 1, N'2024.03.04', N'dbo', CAST(N'2024-04-15T15:32:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (7, 6, 7, N'2024.03.08', N'dbo', CAST(N'2024-04-15T15:32:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (8, 1, 1, N'2024.03.11', N'dbo', CAST(N'2024-04-15T15:32:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (8, 4, 7, N'2024.02.21', N'dbo', CAST(N'2024-04-15T15:32:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (9, 1, 3, N'2024.03.12', N'dbo', CAST(N'2024-04-15T15:32:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (9, 1, 8, N'2024.03.09', N'dbo', CAST(N'2024-04-15T15:32:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (9, 3, 1, N'2024.01.01', N'dbo', CAST(N'2024-04-15T15:32:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (9, 3, 4, N'2024.01.09', N'dbo', CAST(N'2024-04-15T15:32:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (9, 3, 7, N'2024.02.09', N'dbo', CAST(N'2024-04-15T15:32:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (9, 5, 6, N'2024.02.21', N'dbo', CAST(N'2024-04-15T15:32:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (10, 0, 1, N'2024.02.22', N'dbo', CAST(N'2024-04-15T15:32:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (10, 0, 4, N'2024.01.04', N'dbo', CAST(N'2024-04-15T15:32:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (10, 0, 5, N'2024.03.01', N'dbo', CAST(N'2024-04-15T15:32:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (10, 0, 8, N'2024.01.12', N'dbo', CAST(N'2024-04-15T15:32:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (10, 2, 9, N'2024.01.11', N'dbo', CAST(N'2024-04-15T15:32:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (10, 10, 2, N'2024.01.26', N'dbo', CAST(N'2024-04-15T15:32:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (11, 0, 9, N'2024.03.12', N'dbo', CAST(N'2024-04-15T15:32:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (11, 1, 6, N'2024.03.12', N'dbo', CAST(N'2024-04-15T15:32:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (11, 2, 6, N'2024.03.03', N'dbo', CAST(N'2024-04-15T15:32:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (12, 0, 9, N'2024.02.10', N'dbo', CAST(N'2024-04-15T15:32:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (12, 0, 9, N'2024.03.10', N'dbo', CAST(N'2024-04-15T15:32:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (2, 5, 11, N'2024.04.03', N'dbo', CAST(N'2024-04-11T16:51:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (4, 7, 16, N'2024.03.11', N'dbo', CAST(N'2024-04-11T16:51:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (5, 5, 11, N'2024.03.11', N'dbo', CAST(N'2024-04-11T16:51:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (11, 6, 14, N'2024.03.10', N'dbo', CAST(N'2024-04-11T16:51:00' AS SmallDateTime), N'dbo', CAST(N'2024-04-11T17:09:00' AS SmallDateTime))
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (5, 7, 16, N'2024.02.10', N'dbo', CAST(N'2024-04-11T16:51:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (6, 6, 11, N'2024.02.02', N'dbo', CAST(N'2024-04-11T16:51:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (6, 6, 16, N'2024.01.10', N'dbo', CAST(N'2024-04-11T16:51:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (7, 3, 11, N'2024.01.03', N'dbo', CAST(N'2024-04-11T16:51:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (7, 3, 14, N'2024.02.20', N'dbo', CAST(N'2024-04-11T16:51:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (7, 3, 16, N'2024.03.10', N'dbo', CAST(N'2024-04-11T16:51:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (8, 1, 13, N'2024.03.20', N'dbo', CAST(N'2024-04-11T16:51:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (8, 2, 12, N'2024.03.30', N'dbo', CAST(N'2024-04-11T16:51:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (8, 6, 14, N'2024.02.10', N'dbo', CAST(N'2024-04-11T16:51:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (9, 0, 15, N'2024.03.21', N'dbo', CAST(N'2024-04-11T16:51:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (9, 2, 12, N'2024.02.04', N'dbo', CAST(N'2024-04-11T16:51:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (9, 3, 15, N'2024.02.05', N'dbo', CAST(N'2024-04-11T16:51:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (9, 4, 13, N'2024.02.21', N'dbo', CAST(N'2024-04-11T16:51:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (10, 0, 13, N'2024.01.11', N'dbo', CAST(N'2024-04-11T16:51:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (10, 5, 15, N'2024.03.13', N'dbo', CAST(N'2024-04-11T16:51:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (11, 0, 12, N'2024.02.03', N'dbo', CAST(N'2024-04-11T16:51:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (12, 0, 12, N'2024.03.02', N'dbo', CAST(N'2024-04-11T16:51:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (12, 0, 13, N'2024.01.12', N'dbo', CAST(N'2024-04-11T16:51:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (12, 0, 15, N'2024.02.12', N'dbo', CAST(N'2024-04-11T16:51:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[HoursWorked] ([HoursWorkedDay], [AddHoursWorkedDay], [EmployeeID], [MounthWork], [UCR], [DCR], [ULC], [DLC]) VALUES (10, 7, 14, N'2024.01.12', N'dbo', CAST(N'2024-04-11T16:51:00' AS SmallDateTime), N'dbo', CAST(N'2024-04-11T17:03:00' AS SmallDateTime))
GO
INSERT [dbo].[SalaryGive] ([EmployeeID], [Salary], [PayGiveData], [UCR], [DCR], [ULC], [DLC]) VALUES (11, 700, N'2024.04', N'dbo', CAST(N'2024-04-16T12:39:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[SalaryGive] ([EmployeeID], [Salary], [PayGiveData], [UCR], [DCR], [ULC], [DLC]) VALUES (1, 763, N'2024.03', N'dbo', CAST(N'2024-04-16T12:42:00' AS SmallDateTime), NULL, NULL)
GO
INSERT [dbo].[SalaryPerHours] ([PositionName], [Salary], [UCR], [DCR], [ULC], [DLC]) VALUES (N'Builder', 20, N'dbo', CAST(N'2024-04-14T17:03:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[SalaryPerHours] ([PositionName], [Salary], [UCR], [DCR], [ULC], [DLC]) VALUES (N'Electrician', 24, N'dbo', CAST(N'2024-04-14T17:03:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[SalaryPerHours] ([PositionName], [Salary], [UCR], [DCR], [ULC], [DLC]) VALUES (N'Accountant', 28, N'dbo', CAST(N'2024-04-14T17:03:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[SalaryPerHours] ([PositionName], [Salary], [UCR], [DCR], [ULC], [DLC]) VALUES (N'Architect', 32, N'dbo', CAST(N'2024-04-14T17:04:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[SalaryPerHours] ([PositionName], [Salary], [UCR], [DCR], [ULC], [DLC]) VALUES (N'BuilderMIN', 600, N'dbo', CAST(N'2024-04-14T17:04:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[SalaryPerHours] ([PositionName], [Salary], [UCR], [DCR], [ULC], [DLC]) VALUES (N'ElectricianMIN', 650, N'dbo', CAST(N'2024-04-14T17:04:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[SalaryPerHours] ([PositionName], [Salary], [UCR], [DCR], [ULC], [DLC]) VALUES (N'AccountantMIN', 700, N'dbo', CAST(N'2024-04-14T17:04:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[SalaryPerHours] ([PositionName], [Salary], [UCR], [DCR], [ULC], [DLC]) VALUES (N'ArchitectMIN', 750, N'dbo', CAST(N'2024-04-14T17:05:00' AS SmallDateTime), NULL, NULL)
GO
INSERT [dbo].[Vacantion] ([EmployeeID], [VacantionTime], [VacantionPay], [VacantionMounth], [UCR], [DCR], [ULC], [DLC]) VALUES (1, 3, 120, N'02.2024', N'dbo', CAST(N'2024-04-09T08:53:00' AS SmallDateTime), N'dbo', CAST(N'2024-04-11T17:31:00' AS SmallDateTime))
INSERT [dbo].[Vacantion] ([EmployeeID], [VacantionTime], [VacantionPay], [VacantionMounth], [UCR], [DCR], [ULC], [DLC]) VALUES (2, 5, 150, N'01.2024', N'dbo', CAST(N'2024-04-09T08:53:00' AS SmallDateTime), N'dbo', CAST(N'2024-04-09T10:02:00' AS SmallDateTime))
INSERT [dbo].[Vacantion] ([EmployeeID], [VacantionTime], [VacantionPay], [VacantionMounth], [UCR], [DCR], [ULC], [DLC]) VALUES (3, 4, 125, N'01.2024', N'dbo', CAST(N'2024-04-09T08:53:00' AS SmallDateTime), N'dbo', CAST(N'2024-04-09T08:53:00' AS SmallDateTime))
INSERT [dbo].[Vacantion] ([EmployeeID], [VacantionTime], [VacantionPay], [VacantionMounth], [UCR], [DCR], [ULC], [DLC]) VALUES (4, 2, 75, N'03.2024', N'dbo', CAST(N'2024-04-09T08:53:00' AS SmallDateTime), N'dbo', CAST(N'2024-04-09T08:53:00' AS SmallDateTime))
INSERT [dbo].[Vacantion] ([EmployeeID], [VacantionTime], [VacantionPay], [VacantionMounth], [UCR], [DCR], [ULC], [DLC]) VALUES (5, 5, 150, N'03.2024', N'dbo', CAST(N'2024-04-09T08:53:00' AS SmallDateTime), N'dbo', CAST(N'2024-04-09T08:53:00' AS SmallDateTime))
INSERT [dbo].[Vacantion] ([EmployeeID], [VacantionTime], [VacantionPay], [VacantionMounth], [UCR], [DCR], [ULC], [DLC]) VALUES (6, 6, 160, N'02.2024', N'dbo', CAST(N'2024-04-09T08:53:00' AS SmallDateTime), N'dbo', CAST(N'2024-04-09T08:53:00' AS SmallDateTime))
INSERT [dbo].[Vacantion] ([EmployeeID], [VacantionTime], [VacantionPay], [VacantionMounth], [UCR], [DCR], [ULC], [DLC]) VALUES (7, 5, 140, N'02.2024', N'dbo', CAST(N'2024-04-09T08:53:00' AS SmallDateTime), N'dbo', CAST(N'2024-04-09T08:53:00' AS SmallDateTime))
INSERT [dbo].[Vacantion] ([EmployeeID], [VacantionTime], [VacantionPay], [VacantionMounth], [UCR], [DCR], [ULC], [DLC]) VALUES (8, 3, 100, N'01.2024', N'dbo', CAST(N'2024-04-09T08:53:00' AS SmallDateTime), N'dbo', CAST(N'2024-04-09T08:53:00' AS SmallDateTime))
INSERT [dbo].[Vacantion] ([EmployeeID], [VacantionTime], [VacantionPay], [VacantionMounth], [UCR], [DCR], [ULC], [DLC]) VALUES (10, 5, 120, N'03.2024', N'dbo', CAST(N'2024-04-09T08:53:00' AS SmallDateTime), N'dbo', CAST(N'2024-04-09T08:53:00' AS SmallDateTime))
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UC_UnicueParam]    Script Date: 16.04.2024 12:47:13 ******/
ALTER TABLE [dbo].[HoursWorked] ADD  CONSTRAINT [UC_UnicueParam] UNIQUE NONCLUSTERED 
(
	[HoursWorkedDay] ASC,
	[AddHoursWorkedDay] ASC,
	[EmployeeID] ASC,
	[MounthWork] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__SalaryGi__A2820316FF7498E8]    Script Date: 16.04.2024 12:47:13 ******/
ALTER TABLE [dbo].[SalaryGive] ADD UNIQUE NONCLUSTERED 
(
	[EmployeeID] ASC,
	[Salary] ASC,
	[PayGiveData] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Department] ADD  DEFAULT (user_name()) FOR [UCR]
GO
ALTER TABLE [dbo].[Department] ADD  DEFAULT (getdate()) FOR [DCR]
GO
ALTER TABLE [dbo].[EmployeeINFO] ADD  DEFAULT (user_name()) FOR [UCR]
GO
ALTER TABLE [dbo].[EmployeeINFO] ADD  DEFAULT (getdate()) FOR [DCR]
GO
ALTER TABLE [dbo].[HoursWorked] ADD  DEFAULT (user_name()) FOR [UCR]
GO
ALTER TABLE [dbo].[HoursWorked] ADD  DEFAULT (getdate()) FOR [DCR]
GO
ALTER TABLE [dbo].[SalaryGive] ADD  DEFAULT (user_name()) FOR [UCR]
GO
ALTER TABLE [dbo].[SalaryGive] ADD  DEFAULT (getdate()) FOR [DCR]
GO
ALTER TABLE [dbo].[SalaryPerHours] ADD  DEFAULT (user_name()) FOR [UCR]
GO
ALTER TABLE [dbo].[SalaryPerHours] ADD  DEFAULT (getdate()) FOR [DCR]
GO
ALTER TABLE [dbo].[Vacantion] ADD  DEFAULT (user_name()) FOR [UCR]
GO
ALTER TABLE [dbo].[Vacantion] ADD  DEFAULT (getdate()) FOR [DCR]
GO
ALTER TABLE [dbo].[HoursWorked]  WITH CHECK ADD CHECK  (([AddHoursWorkedDay]<=(20)))
GO
ALTER TABLE [dbo].[HoursWorked]  WITH CHECK ADD CHECK  (([HoursWorkedDay]<=(20)))
GO
/****** Object:  StoredProcedure [dbo].[PaySalary]    Script Date: 16.04.2024 12:47:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PaySalary] (@EmployeeID INT, @MounthPay varchar(255))
AS
BEGIN
INSERT INTO [dbo].[SalaryGive] ([EmployeeID] , [Salary] , [PayGiveData])
SELECT @EmployeeID,  Sum(([HoursWorked].[HoursWorkedDay]+[HoursWorked].[AddHoursWorkedDay])*[SalaryPerHours].[Salary]) + ISNULL((
SELECT Vacantion.VacantionPay
FROM Vacantion
WHERE (Vacantion.EmployeeID =@EmployeeID AND Vacantion.VacantionMounth = @MounthPay) OR Vacantion.VacantionMounth IS NULL 
),0
),@MounthPay
FROM HoursWorked, SalaryPerHours
WHERE [HoursWorked].[EmployeeID]=@EmployeeID AND 
CONVERT(VARCHAR,[SalaryPerHours].[PositionName])=CONVERT(VARCHAR, (SELECT Position 
                                 FROM EmployeeINFO
                                 WHERE EmployeeID=@EmployeeID))
AND ([HoursWorked].[MounthWork] LIKE @MounthPay+'.__')
END; 
GO
/****** Object:  StoredProcedure [dbo].[PaySalaryForAllEmployee]    Script Date: 16.04.2024 12:47:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PaySalaryForAllEmployee] (@Mounth varchar(255))
AS
BEGIN

DECLARE @Count as INT = 1;
WHILE (@Count<=16)
BEGIN
EXEC PaySalary @EmployeeID = @Count, @MounthPay = @Mounth;
SET @Count = @Count+1
END;
END;
GO
/****** Object:  Trigger [dbo].[DepartmentUpdateUDCR]    Script Date: 16.04.2024 12:47:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[DepartmentUpdateUDCR]
ON  [dbo].[Department]
INSTEAD OF UPDATE
AS
DECLARE @EmpBA varchar(255), @EmpDPA varchar(255), @EmpIDA int
SELECT @EmpBA = CONVERT(varchar(255),boss) ,@EmpDPA = CONVERT(varchar(255),NameDepartment), @EmpIDA =Id
FROM deleted


DECLARE  @EmpB varchar(255), @EmpDP varchar(255), @EmpID INT
SELECT @EmpB = ISNULL(CONVERT(varchar(255),boss),@EmpBA), @EmpDP = ISNULL(CONVERT(varchar(255),NameDepartment),@EmpDPA), @EmpID = ISNULL(Id,@EmpIDA)
FROM inserted

IF(UPDATE(UCR) OR UPDATE(DCR))
SELECT 'You can`t update this column' as Mes
ELSE
UPDATE [dbo].[Department]
SET [NameDepartment] = CONVERT(text,@EmpDP) , [Id]=@EmpID,[boss]=CONVERT(text,@EmpB)
WHERE Id = @EmpIDA AND CONVERT(varchar(255),NameDepartment) = @EmpDPA








GO
ALTER TABLE [dbo].[Department] ENABLE TRIGGER [DepartmentUpdateUDCR]
GO
/****** Object:  Trigger [dbo].[DepartmentUpdateUDLC]    Script Date: 16.04.2024 12:47:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[DepartmentUpdateUDLC]
ON [dbo].[Department]
AFTER UPDATE
AS 
BEGIN

DECLARE @UpdateId int
SELECT @UpdateId = Id
FROM inserted
UPDATE  Department
SET ULC = CURRENT_USER, DLC = GETDATE()
WHERE Id = @UpdateId

END



GO
ALTER TABLE [dbo].[Department] ENABLE TRIGGER [DepartmentUpdateUDLC]
GO
/****** Object:  Trigger [dbo].[EmployeeINFOUpdateUDCR]    Script Date: 16.04.2024 12:47:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[EmployeeINFOUpdateUDCR]
ON [dbo].[EmployeeINFO]
INSTEAD OF UPDATE
AS 
DECLARE @UpdateUCRA varchar(255), @UpdateDCRA smalldatetime,@EmpNameA varchar(255), @EmpPosA varchar(255),@EmpPasA int, @EmpDepIDA int,@EmpIDA int, @EmpFNA varchar(255),@EmpSNA varchar(255), @EmpHAA varchar(255),@EmpPBA varchar(255), @EmpDBA nchar(10)
SELECT @UpdateUCRA = UCR, @UpdateDCRA = DCR,@EmpNameA = CONVERT(varchar(255),Name), @EmpPosA = Position ,@EmpPasA = Pasport, @EmpDepIDA = DepartmentID, @EmpIDA = EmployeeID, @EmpFNA = CONVERT(varchar(255),FatherName),@EmpSNA =CONVERT(varchar(255),Surname), @EmpHAA =CONVERT(varchar(255),HomeAddress),@EmpPBA= CONVERT(varchar(255),PlaceBirth), @EmpDBA = DateBirth
FROM EmployeeINFO


DECLARE @UpdateUCR varchar(255), @UpdateDCR smalldatetime,@EmpName varchar(255), @EmpPos varchar(255),@EmpPas int, @EmpDepID int,@EmpID int, @EmpFN varchar(255),@EmpSN varchar(255), @EmpHA varchar(255),@EmpPB varchar(255), @EmpDB nchar(10)
SELECT @EmpName = ISNULL(CONVERT(varchar(255),Name),@EmpNameA), @EmpPos = ISNULL(Position,@EmpPosA) ,@EmpPas = ISNULL(Pasport,@EmpPasA), @EmpDepID = ISNULL(DepartmentID,@EmpDepIDA), @EmpID = ISNULL(EmployeeID,@EmpIDA), @EmpFN = ISNULL(CONVERT(varchar(255),FatherName),@EmpFNA),@EmpSN =ISNULL(CONVERT(varchar(255),Surname),@EmpSNA), @EmpHA =ISNULL(CONVERT(varchar(255),HomeAddress),@EmpHAA),@EmpPB= ISNULL(CONVERT(varchar(255),PlaceBirth),@EmpPBA), @EmpDB = ISNULL(DateBirth,@EmpDBA)
FROM inserted

IF(UPDATE(UCR) OR UPDATE(DCR))
SELECT 'You can`t update this column' as Mes
ELSE
UPDATE [dbo].[EmployeeINFO]
SET [Position] = CONVERT(text,@EmpPos) , [Pasport]=@EmpPas,[HomeAddress]=CONVERT(text,@EmpHA),[PlaceBirth]=CONVERT(text,@EmpPB),[DateBirth]=@EmpDB, [DepartmentID]=@EmpDepID, [Name]=CONVERT(text,@EmpName),[Surname]=@EmpSN,[FatherName]=@EmpFN
WHERE EmployeeID = @EmpID
GO
ALTER TABLE [dbo].[EmployeeINFO] ENABLE TRIGGER [EmployeeINFOUpdateUDCR]
GO
/****** Object:  Trigger [dbo].[EmployeeINFOUpdateUDLC]    Script Date: 16.04.2024 12:47:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[EmployeeINFOUpdateUDLC]
ON [dbo].[EmployeeINFO]
AFTER UPDATE
AS 
BEGIN

DECLARE @UpdateId int
SELECT @UpdateId = EmployeeID
FROM inserted
UPDATE  EmployeeINFO
SET ULC = CURRENT_USER, DLC = GETDATE()
WHERE EmployeeID = @UpdateId

END



GO
ALTER TABLE [dbo].[EmployeeINFO] ENABLE TRIGGER [EmployeeINFOUpdateUDLC]
GO
/****** Object:  Trigger [dbo].[EmployeeLimit]    Script Date: 16.04.2024 12:47:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[EmployeeLimit] 
ON [dbo].[EmployeeINFO]
INSTEAD OF INSERT
AS 
DECLARE @EmpName varchar(255), @EmpPos varchar(255),@EmpPas int, @EmpDepID int,@EmpID int, @EmpFN varchar(255),@EmpSN varchar(255), @EmpHA varchar(255),@EmpPB varchar(255), @EmpDB nchar(10)
SELECT @EmpName = CONVERT(varchar(255),Name), @EmpPos = Position ,@EmpPas = Pasport, @EmpDepID = DepartmentID, @EmpID = EmployeeID, @EmpFN = CONVERT(varchar(255),FatherName),@EmpSN =CONVERT(varchar(255),Surname), @EmpHA =CONVERT(varchar(255),HomeAddress),@EmpPB= CONVERT(varchar(255),PlaceBirth), @EmpDB = DateBirth
FROM inserted
DECLARE @EmpNameA varchar(255), @EmpPosA varchar(255),@EmpPasA int, @EmpDepIDA int
SELECT @EmpNameA = CONVERT(varchar(255),Name), @EmpPosA = Position ,@EmpPasA = Pasport, @EmpDepIDA = DepartmentID
FROM EmployeeINFO
WHERE @EmpName=@EmpNameA AND @EmpPas=@EmpPasA
IF(SELECT Pasport FROM EmployeeINFO WHERE Pasport = @EmpPas) IS NOT NULL
IF((@EmpPos!=@EmpPosA OR @EmpDepID!=@EmpDepIDA) AND (@EmpName=@EmpNameA AND @EmpPas=@EmpPasA))
INSERT [dbo].[EmployeeINFO] ([Position], [EmployeeID], [Pasport], [HomeAddress], [PlaceBirth], [DateBirth], [DepartmentID], [Name], [Surname], [FatherName]) 
VALUES (CONVERT(text,@EmpPos),@EmpID , @EmpPas,CONVERT(text,@EmpHA),CONVERT(text,@EmpPB),@EmpDB, @EmpDepID, CONVERT(text,@EmpName),@EmpSN,@EmpFN)
ELSE
SELECT 'An employee cannot work in several departments and in several positions at the same time.' 
ELSE
INSERT [dbo].[EmployeeINFO] ([Position], [EmployeeID], [Pasport], [HomeAddress], [PlaceBirth], [DateBirth], [DepartmentID], [Name], [Surname], [FatherName]) 
VALUES (CONVERT(text,@EmpPos),@EmpID , @EmpPas,CONVERT(text,@EmpHA),CONVERT(text,@EmpPB),@EmpDB, @EmpDepID, CONVERT(text,@EmpName),@EmpSN,@EmpFN)
GO
ALTER TABLE [dbo].[EmployeeINFO] ENABLE TRIGGER [EmployeeLimit]
GO
/****** Object:  Trigger [dbo].[HoursWorkedUpdateUDCR]    Script Date: 16.04.2024 12:47:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[HoursWorkedUpdateUDCR]
ON [dbo].[HoursWorked]
INSTEAD OF UPDATE
AS 
DECLARE   @EmpHWA INT,@EmpAHWA int, @EmpIDA int, @EmpMWA varchar(255)
SELECT @EmpHWA = HoursWorkedDay ,@EmpAHWA = AddHoursWorkedDay, @EmpIDA = EmployeeID, @EmpMWA = MounthWork
FROM deleted


DECLARE @EmpHW INT,@EmpAHW int, @EmpID int, @EmpMW varchar(255)
SELECT @EmpHW = ISNULL(HoursWorkedDay,@EmpHWA), @EmpAHW = ISNULL(AddHoursWorkedDay,@EmpAHWA) ,@EmpID = ISNULL(EmployeeID,@EmpIDA), @EmpMW = ISNULL(MounthWork,@EmpMWA)
FROM inserted

IF(UPDATE(UCR) OR UPDATE(DCR))
SELECT 'You can`t update this column' as Mes
ELSE
UPDATE [dbo].[HoursWorked]
SET [HoursWorkedDay] = @EmpHW , [AddHoursWorkedDay]=@EmpAHW
WHERE EmployeeID = @EmpID AND MounthWork= @EmpMWA 
GO
ALTER TABLE [dbo].[HoursWorked] ENABLE TRIGGER [HoursWorkedUpdateUDCR]
GO
/****** Object:  Trigger [dbo].[HoursWorkedUpdateUDLC]    Script Date: 16.04.2024 12:47:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[HoursWorkedUpdateUDLC]
ON [dbo].[HoursWorked]
AFTER UPDATE
AS 
BEGIN

DECLARE @UpdateId int
SELECT @UpdateId = EmployeeID
FROM inserted
UPDATE  HoursWorked
SET ULC = CURRENT_USER, DLC = GETDATE()
WHERE EmployeeID = @UpdateId AND MounthWork=(SELECT MounthWork FROM inserted)

END



GO
ALTER TABLE [dbo].[HoursWorked] ENABLE TRIGGER [HoursWorkedUpdateUDLC]
GO
/****** Object:  Trigger [dbo].[MinSalaryGive]    Script Date: 16.04.2024 12:47:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[MinSalaryGive] ON [dbo].[SalaryGive]
INSTEAD OF INSERT
AS

DECLARE   @EmpSA INT, @EmpIDA int, @EmpMPA varchar(255)
SELECT @EmpSA = Salary , @EmpIDA = EmployeeID, @EmpMPA = PayGiveData
FROM deleted

DECLARE @EmpS INT, @EmpID int, @EmpMP varchar(255)
SELECT @EmpS = ISNULL(Salary,@EmpSA) ,@EmpID = ISNULL(EmployeeID,@EmpIDA), @EmpMP = ISNULL(PayGiveData,@EmpMPA)
FROM inserted

DECLARE @SumOFPay INT
SELECT @SumOFPay = DATEDIFF(DAY, DATEADD(MONTH,1,@EmpMP+'.10'), GETDATE())

IF(@SumOFPay >= 1)
WHILE(@SumOFPay >= 1)
BEGIN
SET @EmpS = @EmpS + (@EmpS * 0.1)
SET @SumOFPay = @SumOFPay - 1
END;


DECLARE @MINSalary INT
SELECT @MINSalary = Salary
FROM SalaryPerHours
WHERE CONVERT(varchar(255),PositionName) = CONVERT(varchar(255),(SELECT Position FROM EmployeeINFO WHERE EmployeeID = @EmpID)) + 'MIN'

IF (@EmpS < @MINSalary)
BEGIN
INSERT INTO [SalaryGive] ([EmployeeID] , [Salary] , [PayGiveData])
VALUES (@EmpID, @MINSalary,@EmpMP)
SELECT 'The employee is paid the minimum wage' AS Mess
END;
ELSE
INSERT [SalaryGive] ([EmployeeID] , [Salary] , [PayGiveData])
VALUES (@EmpID,@EmpS,@EmpMP)


GO
ALTER TABLE [dbo].[SalaryGive] ENABLE TRIGGER [MinSalaryGive]
GO
/****** Object:  Trigger [dbo].[SalaryGiveUpdateUDCR]    Script Date: 16.04.2024 12:47:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[SalaryGiveUpdateUDCR]
ON [dbo].[SalaryGive]
INSTEAD OF UPDATE
AS 
DECLARE   @EmpSA INT, @EmpIDA int, @EmpMPA varchar(255)
SELECT @EmpSA = Salary , @EmpIDA = EmployeeID, @EmpMPA = PayGiveData
FROM deleted


DECLARE @EmpS INT, @EmpID int, @EmpMP varchar(255)
SELECT @EmpS = ISNULL(Salary,@EmpSA) ,@EmpID = ISNULL(EmployeeID,@EmpIDA), @EmpMP = ISNULL(PayGiveData,@EmpMPA)
FROM inserted

IF(UPDATE(UCR) OR UPDATE(DCR))
SELECT 'You can`t update this column' as Mes
ELSE
UPDATE [dbo].[SalaryGive]
SET [PayGiveData] = @EmpMP , [Salary]=@EmpS
WHERE EmployeeID = @EmpID AND PayGiveData= @EmpMPA 
GO
ALTER TABLE [dbo].[SalaryGive] ENABLE TRIGGER [SalaryGiveUpdateUDCR]
GO
/****** Object:  Trigger [dbo].[SalaryGiveUpdateUDLC]    Script Date: 16.04.2024 12:47:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[SalaryGiveUpdateUDLC]
ON [dbo].[SalaryGive]
AFTER UPDATE
AS 
BEGIN

DECLARE @UpdateId int
SELECT @UpdateId = EmployeeID
FROM inserted
UPDATE  SalaryGive
SET ULC = CURRENT_USER, DLC = GETDATE()
WHERE EmployeeID = @UpdateId AND PayGiveData=(SELECT PayGiveData FROM inserted)

END



GO
ALTER TABLE [dbo].[SalaryGive] ENABLE TRIGGER [SalaryGiveUpdateUDLC]
GO
/****** Object:  Trigger [dbo].[SalaryPerHoursUpdateUDCR]    Script Date: 16.04.2024 12:47:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[SalaryPerHoursUpdateUDCR]
ON  [dbo].[SalaryPerHours]
INSTEAD OF UPDATE
AS 
DECLARE   @EmpSA int, @EmpMPA varchar(255)
SELECT @EmpSA = Salary ,@EmpMPA = PositionName
FROM deleted


DECLARE @EmpS INT, @EmpMP varchar(255)
SELECT @EmpS = ISNULL(Salary,@EmpSA), @EmpMP = ISNULL(PositionName,@EmpMPA)
FROM inserted

IF(UPDATE(UCR) OR UPDATE(DCR))
SELECT 'You can`t update this column' as Mes
ELSE
UPDATE [dbo].[SalaryPerHours]
SET [PositionName] = @EmpMP , [Salary]=@EmpS
WHERE PositionName = @EmpMPA 


GO
ALTER TABLE [dbo].[SalaryPerHours] ENABLE TRIGGER [SalaryPerHoursUpdateUDCR]
GO
/****** Object:  Trigger [dbo].[SalaryPerHoursUpdateUDLC]    Script Date: 16.04.2024 12:47:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[SalaryPerHoursUpdateUDLC]
ON [dbo].[SalaryPerHours]
AFTER UPDATE
AS 
BEGIN

DECLARE @UpdateId varchar(255)
SELECT @UpdateId = PositionName
FROM inserted
UPDATE  SalaryPerHours
SET ULC = CURRENT_USER, DLC = GETDATE()
WHERE PositionName = @UpdateId

END



GO
ALTER TABLE [dbo].[SalaryPerHours] ENABLE TRIGGER [SalaryPerHoursUpdateUDLC]
GO
/****** Object:  Trigger [dbo].[VacantionUpdateUDCR]    Script Date: 16.04.2024 12:47:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[VacantionUpdateUDCR]
ON [dbo].[Vacantion]
INSTEAD OF UPDATE
AS 
DECLARE   @EmpVPA int, @EmpVMA varchar(255), @EmpVTA INT, @EmpIDA INT
SELECT @EmpVPA = VacantionPay ,@EmpVMA = VacantionMounth, @EmpVTA = VacantionTime, @EmpIDA =EmployeeID
FROM deleted


DECLARE @EmpVP int, @EmpVM varchar(255), @EmpVT INT, @EmpID INT
SELECT @EmpVP = ISNULL(VacantionPay,@EmpVPA), @EmpVM = ISNULL(VacantionMounth,@EmpVMA),@EmpVT = ISNULL(VacantionTime,@EmpVTA), @EmpID = ISNULL(EmployeeID,@EmpIDA)
FROM inserted

IF(UPDATE(UCR) OR UPDATE(DCR))
SELECT 'You can`t update this column' as Mes
ELSE
UPDATE [dbo].[Vacantion]
SET [EmployeeID] = @EmpID , [VacantionTime]=@EmpVT,[VacantionPay]=@EmpVP,[VacantionMounth]=@EmpVM
WHERE EmployeeID = @EmpIDA AND VacantionMounth = @EmpVMA





GO
ALTER TABLE [dbo].[Vacantion] ENABLE TRIGGER [VacantionUpdateUDCR]
GO
/****** Object:  Trigger [dbo].[VacantionUpdateUDLC]    Script Date: 16.04.2024 12:47:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[VacantionUpdateUDLC]
ON [dbo].[Vacantion]
AFTER UPDATE
AS 
BEGIN

DECLARE @UpdateId int
SELECT @UpdateId = EmployeeID
FROM inserted
UPDATE  Vacantion
SET ULC = CURRENT_USER, DLC = GETDATE()
WHERE EmployeeID = @UpdateId AND VacantionMounth = (SELECT VacantionMounth FROM inserted)

END



GO
ALTER TABLE [dbo].[Vacantion] ENABLE TRIGGER [VacantionUpdateUDLC]
GO
USE [master]
GO
ALTER DATABASE [YanivPM22Var11] SET  READ_WRITE 
GO
