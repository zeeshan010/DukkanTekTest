USE [master]
GO
/****** Object:  Database [DukkanTekDB]    Script Date: 17/05/2022 15:12:32 ******/
CREATE DATABASE [DukkanTekDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DukkanTekDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS2017\MSSQL\DATA\DukkanTekDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DukkanTekDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS2017\MSSQL\DATA\DukkanTekDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [DukkanTekDB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DukkanTekDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DukkanTekDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DukkanTekDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DukkanTekDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DukkanTekDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DukkanTekDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [DukkanTekDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DukkanTekDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DukkanTekDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DukkanTekDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DukkanTekDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DukkanTekDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DukkanTekDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DukkanTekDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DukkanTekDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DukkanTekDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DukkanTekDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DukkanTekDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DukkanTekDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DukkanTekDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DukkanTekDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DukkanTekDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DukkanTekDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DukkanTekDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DukkanTekDB] SET  MULTI_USER 
GO
ALTER DATABASE [DukkanTekDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DukkanTekDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DukkanTekDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DukkanTekDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DukkanTekDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DukkanTekDB] SET QUERY_STORE = OFF
GO
USE [DukkanTekDB]
GO
/****** Object:  User [admin]    Script Date: 17/05/2022 15:12:32 ******/
CREATE USER [admin] FOR LOGIN [admin] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 17/05/2022 15:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 17/05/2022 15:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NULL,
	[ProductName] [nvarchar](256) NULL,
	[Barcode] [nvarchar](256) NULL,
	[Description] [nvarchar](500) NULL,
	[Weight] [int] NULL,
	[QunttitySold] [int] NULL,
	[QunttityInStock] [int] NULL,
	[QunttityDamaged] [int] NULL,
 CONSTRAINT [PK__Product__B40CC6CDF3454B97] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 
GO
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (1, N'Vegetables')
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 
GO
INSERT [dbo].[Product] ([ProductId], [CategoryId], [ProductName], [Barcode], [Description], [Weight], [QunttitySold], [QunttityInStock], [QunttityDamaged]) VALUES (1, 1, N'Tomatoes', N'abc123', N'abc description', 2, 7, 4, 1)
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
USE [master]
GO
ALTER DATABASE [DukkanTekDB] SET  READ_WRITE 
GO