USE [master]
GO
/****** Object:  Database [YanivPM22Var11]    Script Date: 04.03.2024 15:03:02 ******/
CREATE DATABASE [YanivPM22Var11]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'YanivPM22Var11', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLYANIVPM22\MSSQL\DATA\YanivPM22Var11.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
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
/****** Object:  Table [dbo].[Department]    Script Date: 04.03.2024 15:03:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[NameDepartment] [text] NOT NULL,
	[Id] [int] NOT NULL,
	[boss] [text] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeINFO]    Script Date: 04.03.2024 15:03:02 ******/
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
PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoursWorked]    Script Date: 04.03.2024 15:03:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoursWorked](
	[HoursWorkedDay] [int] NULL,
	[AddHoursWorkedDay] [int] NULL,
	[EmployeeID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalaryGive]    Script Date: 04.03.2024 15:03:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalaryGive](
	[EmployeeID] [int] NOT NULL,
	[HoursWorkedMounth] [int] NULL,
	[addHoursWorkedMounth] [int] NULL,
	[PayGiveData] [int] NOT NULL,
	[Salary] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalaryPerHours]    Script Date: 04.03.2024 15:03:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalaryPerHours](
	[PositionName] [text] NOT NULL,
	[Salary] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vacantion]    Script Date: 04.03.2024 15:03:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vacantion](
	[EmployeeID] [int] NOT NULL,
	[VacantionTime] [int] NOT NULL,
	[VacantionPay] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Department] ([NameDepartment], [Id], [boss]) VALUES (N'DepartmentA', 1, N'Anderson Hill')
INSERT [dbo].[Department] ([NameDepartment], [Id], [boss]) VALUES (N'DepartmentB', 2, N'Bush Robert')
INSERT [dbo].[Department] ([NameDepartment], [Id], [boss]) VALUES (N'DepartmentC', 3, N'Biden Joe')
INSERT [dbo].[Department] ([NameDepartment], [Id], [boss]) VALUES (N'DepartmentD', 4, N'Clark Peter')
GO
INSERT [dbo].[EmployeeINFO] ([Position], [EmployeeID], [Pasport], [HomeAddress], [PlaceBirth], [DateBirth], [DepartmentID], [Name], [Surname], [FatherName]) VALUES (N'Electrician', 1, 553356, N'Zelena 02', N'Lviv', N'08.03.2000', 1, N'Robert ', N'Schaefer', N'Alex ')
INSERT [dbo].[EmployeeINFO] ([Position], [EmployeeID], [Pasport], [HomeAddress], [PlaceBirth], [DateBirth], [DepartmentID], [Name], [Surname], [FatherName]) VALUES (N'Builder', 2, 238754, N'Bandery 01', N'Sambir', N'01.01.1996', 2, N'Otis', N'Underwood', N'Arthur')
INSERT [dbo].[EmployeeINFO] ([Position], [EmployeeID], [Pasport], [HomeAddress], [PlaceBirth], [DateBirth], [DepartmentID], [Name], [Surname], [FatherName]) VALUES (N'Electrician', 3, 119944, N'Shevchenka 55', N'Kyiv', N'09.07.1989', 2, N'Ricky ', N'Lowe', N'Shaun')
INSERT [dbo].[EmployeeINFO] ([Position], [EmployeeID], [Pasport], [HomeAddress], [PlaceBirth], [DateBirth], [DepartmentID], [Name], [Surname], [FatherName]) VALUES (N'Builder', 4, 359789, N'Srtit 05', N'Lviv', N'29.07.2001', 1, N'Velma', N'Stafford', N'Robert ')
INSERT [dbo].[EmployeeINFO] ([Position], [EmployeeID], [Pasport], [HomeAddress], [PlaceBirth], [DateBirth], [DepartmentID], [Name], [Surname], [FatherName]) VALUES (N'Electrician', 5, 567895, N'Rollins 34', N'Kharkiv', N'16.03.1996', 3, N'Alex ', N'Rollins', N'Deacon')
INSERT [dbo].[EmployeeINFO] ([Position], [EmployeeID], [Pasport], [HomeAddress], [PlaceBirth], [DateBirth], [DepartmentID], [Name], [Surname], [FatherName]) VALUES (N'Electrician', 6, 123456, N'Zelena 45', N'Sambir', N'30.07.2002', 4, N'Abdullah', N'Wiley', N'Alexis')
INSERT [dbo].[EmployeeINFO] ([Position], [EmployeeID], [Pasport], [HomeAddress], [PlaceBirth], [DateBirth], [DepartmentID], [Name], [Surname], [FatherName]) VALUES (N'Builder', 7, 676757, N'Rollins 21', N'Lviv', N'21.11.1979', 3, N'Arthur', N'Hill', N'Mohammad')
INSERT [dbo].[EmployeeINFO] ([Position], [EmployeeID], [Pasport], [HomeAddress], [PlaceBirth], [DateBirth], [DepartmentID], [Name], [Surname], [FatherName]) VALUES (N'Builder', 8, 232123, N'Bandery 33', N'Dobromyl', N'12.12.2000', 4, N'Nathan', N'Singh', N'Deacon')
INSERT [dbo].[EmployeeINFO] ([Position], [EmployeeID], [Pasport], [HomeAddress], [PlaceBirth], [DateBirth], [DepartmentID], [Name], [Surname], [FatherName]) VALUES (N'Accountant', 9, 345632, N'Srtit 90', N'Lviv', N'29.01.2000', 1, N'Deacon', N'Peck', N'Otis')
INSERT [dbo].[EmployeeINFO] ([Position], [EmployeeID], [Pasport], [HomeAddress], [PlaceBirth], [DateBirth], [DepartmentID], [Name], [Surname], [FatherName]) VALUES (N'Accountant', 10, 678904, N'Zelena 89', N'Dnipro', N'01.03.2002', 2, N'Markus', N'Mccall', N'Abdullah')
INSERT [dbo].[EmployeeINFO] ([Position], [EmployeeID], [Pasport], [HomeAddress], [PlaceBirth], [DateBirth], [DepartmentID], [Name], [Surname], [FatherName]) VALUES (N'Accountant', 11, 997865, N'Rollins 22', N'Sambir', N'23.02.1999', 3, N'Shaun', N'Pollard', N'Jared ')
INSERT [dbo].[EmployeeINFO] ([Position], [EmployeeID], [Pasport], [HomeAddress], [PlaceBirth], [DateBirth], [DepartmentID], [Name], [Surname], [FatherName]) VALUES (N'Accountant', 12, 231235, N'Bandery 23', N'Kyiv', N'02.04.2001', 4, N'Mohammad', N'Simpson', N'Jared ')
INSERT [dbo].[EmployeeINFO] ([Position], [EmployeeID], [Pasport], [HomeAddress], [PlaceBirth], [DateBirth], [DepartmentID], [Name], [Surname], [FatherName]) VALUES (N'Architect', 13, 986435, N'Zelena 43', N'Lviv', N'09.07.2000', 1, N'Brett', N'Whitaker', N'Robert ')
INSERT [dbo].[EmployeeINFO] ([Position], [EmployeeID], [Pasport], [HomeAddress], [PlaceBirth], [DateBirth], [DepartmentID], [Name], [Surname], [FatherName]) VALUES (N'Architect', 14, 875357, N'Srtit 66', N'Dnipro', N'21.09.1976', 2, N'Alexis', N'Camacho', N'Nathan ')
INSERT [dbo].[EmployeeINFO] ([Position], [EmployeeID], [Pasport], [HomeAddress], [PlaceBirth], [DateBirth], [DepartmentID], [Name], [Surname], [FatherName]) VALUES (N'Architect', 15, 567384, N'Rollins 21', N'Lviv', N'12.11.2002', 3, N'Deacon', N'Lara', N'Jared ')
INSERT [dbo].[EmployeeINFO] ([Position], [EmployeeID], [Pasport], [HomeAddress], [PlaceBirth], [DateBirth], [DepartmentID], [Name], [Surname], [FatherName]) VALUES (N'Architect', 16, 754546, N'Zelena 76', N'Lviv', N'30.12.1999', 4, N'Jared ', N'Pittman', N'Ricky ')
GO
ALTER TABLE [dbo].[HoursWorked]  WITH CHECK ADD FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[EmployeeINFO] ([EmployeeID])
GO
ALTER TABLE [dbo].[SalaryGive]  WITH CHECK ADD FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[EmployeeINFO] ([EmployeeID])
GO
ALTER TABLE [dbo].[Vacantion]  WITH CHECK ADD FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[EmployeeINFO] ([EmployeeID])
GO
USE [master]
GO
ALTER DATABASE [YanivPM22Var11] SET  READ_WRITE 
GO
