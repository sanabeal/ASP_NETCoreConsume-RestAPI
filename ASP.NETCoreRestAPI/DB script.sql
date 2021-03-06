USE [master]
GO
/****** Object:  Database [ASPNETCoreRestAPI]    Script Date: 09/04/2022 12:54:25 AM ******/
CREATE DATABASE [ASPNETCoreRestAPI]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ASPNETCoreRestAPI', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\ASPNETCoreRestAPI.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ASPNETCoreRestAPI_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\ASPNETCoreRestAPI_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ASPNETCoreRestAPI] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ASPNETCoreRestAPI].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ASPNETCoreRestAPI] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ASPNETCoreRestAPI] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ASPNETCoreRestAPI] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ASPNETCoreRestAPI] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ASPNETCoreRestAPI] SET ARITHABORT OFF 
GO
ALTER DATABASE [ASPNETCoreRestAPI] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ASPNETCoreRestAPI] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ASPNETCoreRestAPI] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ASPNETCoreRestAPI] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ASPNETCoreRestAPI] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ASPNETCoreRestAPI] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ASPNETCoreRestAPI] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ASPNETCoreRestAPI] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ASPNETCoreRestAPI] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ASPNETCoreRestAPI] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ASPNETCoreRestAPI] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ASPNETCoreRestAPI] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ASPNETCoreRestAPI] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ASPNETCoreRestAPI] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ASPNETCoreRestAPI] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ASPNETCoreRestAPI] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ASPNETCoreRestAPI] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ASPNETCoreRestAPI] SET RECOVERY FULL 
GO
ALTER DATABASE [ASPNETCoreRestAPI] SET  MULTI_USER 
GO
ALTER DATABASE [ASPNETCoreRestAPI] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ASPNETCoreRestAPI] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ASPNETCoreRestAPI] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ASPNETCoreRestAPI] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ASPNETCoreRestAPI] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ASPNETCoreRestAPI', N'ON'
GO
ALTER DATABASE [ASPNETCoreRestAPI] SET QUERY_STORE = OFF
GO
USE [ASPNETCoreRestAPI]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [ASPNETCoreRestAPI]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 09/04/2022 12:54:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Departments]    Script Date: 09/04/2022 12:54:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[DepartmentId] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employees]    Script Date: 09/04/2022 12:54:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NULL,
	[DateOfBrith] [datetime2](7) NOT NULL,
	[Gender] [int] NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[PhotoPath] [nvarchar](max) NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 09/04/2022 12:54:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [nvarchar](max) NULL,
	[UserID] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Gender] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
	[AddUserID] [nvarchar](max) NULL,
	[AddDate] [datetime2](7) NOT NULL,
	[EditUserID] [nvarchar](max) NULL,
	[EditDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220403063416_createDB', N'5.0.15')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220406095425_user', N'5.0.15')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220408183710_employee', N'5.0.15')
SET IDENTITY_INSERT [dbo].[Departments] ON 

INSERT [dbo].[Departments] ([DepartmentId], [DepartmentName]) VALUES (5, N'CSE')
INSERT [dbo].[Departments] ([DepartmentId], [DepartmentName]) VALUES (6, N'EEE')
INSERT [dbo].[Departments] ([DepartmentId], [DepartmentName]) VALUES (7, N'CE')
INSERT [dbo].[Departments] ([DepartmentId], [DepartmentName]) VALUES (8, N'CSE')
SET IDENTITY_INSERT [dbo].[Departments] OFF
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([EmployeeId], [FirstName], [LastName], [Email], [DateOfBrith], [Gender], [DepartmentId], [PhotoPath]) VALUES (13, N'Mr', N'Kabir', N'kabir@gmail.com', CAST(N'2022-04-08T18:39:09.9990000' AS DateTime2), 1, 5, N'image/employee')
INSERT [dbo].[Employees] ([EmployeeId], [FirstName], [LastName], [Email], [DateOfBrith], [Gender], [DepartmentId], [PhotoPath]) VALUES (14, N'Mr', N'Rahim', N'rahim12@gmail.com', CAST(N'2022-04-08T18:39:09.9990000' AS DateTime2), 1, 5, N'image/employee')
INSERT [dbo].[Employees] ([EmployeeId], [FirstName], [LastName], [Email], [DateOfBrith], [Gender], [DepartmentId], [PhotoPath]) VALUES (15, N'Mr', N'karim', N'karim.12@gmail.com', CAST(N'2022-04-08T18:39:09.9990000' AS DateTime2), 1, 5, N'image/employee')
INSERT [dbo].[Employees] ([EmployeeId], [FirstName], [LastName], [Email], [DateOfBrith], [Gender], [DepartmentId], [PhotoPath]) VALUES (16, N'Mrs', N'Kabir', N'kabir.42@gmail.com', CAST(N'2022-04-08T18:39:09.9990000' AS DateTime2), 2, 6, N'image/employee')
SET IDENTITY_INSERT [dbo].[Employees] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [CustomerId], [UserID], [FirstName], [LastName], [Password], [Email], [Phone], [Address], [Gender], [Status], [AddUserID], [AddDate], [EditUserID], [EditDate]) VALUES (1, N'1', N'kabir', N'Sanbeal', N'kabir', N'123456', N'kabir@gmail.com', N'01723678442', N'dhaka, bangladesh', N'Male', N'valid', N'kabir', CAST(N'2022-04-06T00:00:00.0000000' AS DateTime2), N'kabir06', CAST(N'2022-04-06T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Users] ([ID], [CustomerId], [UserID], [FirstName], [LastName], [Password], [Email], [Phone], [Address], [Gender], [Status], [AddUserID], [AddDate], [EditUserID], [EditDate]) VALUES (3, N'2', N'kabir.123', N'Sanbeal', N'kabir', N'123456', N'kabir@gmail.com', N'01723678442', N'dhaka, bangladesh', N'Male', N'valid', N'kabir', CAST(N'2022-04-06T00:00:00.0000000' AS DateTime2), N'kabir06', CAST(N'2022-04-06T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Users] ([ID], [CustomerId], [UserID], [FirstName], [LastName], [Password], [Email], [Phone], [Address], [Gender], [Status], [AddUserID], [AddDate], [EditUserID], [EditDate]) VALUES (4, N'2', N'kabir.5123', N'Sanbeal', N'kabir', N'123456', N'kabir@gmail.com', N'01723678442', N'dhaka, bangladesh', N'Male', N'valid', N'kabir', CAST(N'2022-04-06T00:00:00.0000000' AS DateTime2), NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Departments_DepartmentId] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments] ([DepartmentId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Departments_DepartmentId]
GO
USE [master]
GO
ALTER DATABASE [ASPNETCoreRestAPI] SET  READ_WRITE 
GO
