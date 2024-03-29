USE [master]
GO
/****** Object:  Database [transportDB]    Script Date: 1/2/2024 3:01:24 PM ******/
CREATE DATABASE [transportDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'transportDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS01\MSSQL\DATA\transportDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'transportDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS01\MSSQL\DATA\transportDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [transportDB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [transportDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [transportDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [transportDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [transportDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [transportDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [transportDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [transportDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [transportDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [transportDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [transportDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [transportDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [transportDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [transportDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [transportDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [transportDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [transportDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [transportDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [transportDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [transportDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [transportDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [transportDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [transportDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [transportDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [transportDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [transportDB] SET  MULTI_USER 
GO
ALTER DATABASE [transportDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [transportDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [transportDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [transportDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [transportDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [transportDB] SET QUERY_STORE = OFF
GO
USE [transportDB]
GO
/****** Object:  Table [dbo].[admin_table]    Script Date: 1/2/2024 3:01:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin_table](
	[user_name] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NULL,
	[full_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_admin_table] PRIMARY KEY CLUSTERED 
(
	[user_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[manage_insurer_table]    Script Date: 1/2/2024 3:01:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[manage_insurer_table](
	[Insurer_name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[User_type] [nvarchar](50) NULL,
	[User_name] [nvarchar](50) NOT NULL,
	[Full_name] [nvarchar](50) NULL,
	[Gender] [nvarchar](50) NULL,
	[Date_of_birth] [nvarchar](50) NULL,
	[Contact_no] [int] NULL,
	[NID_no] [int] NULL,
	[Address] [nvarchar](50) NULL,
	[image] [image] NULL,
 CONSTRAINT [PK_manage_insurer_table] PRIMARY KEY CLUSTERED 
(
	[User_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[manufacturer_table]    Script Date: 1/2/2024 3:01:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[manufacturer_table](
	[Manufacturer_id] [nchar](10) NOT NULL,
	[Manufacturer_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_manufacturer_table] PRIMARY KEY CLUSTERED 
(
	[Manufacturer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[model_table]    Script Date: 1/2/2024 3:01:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[model_table](
	[Manufacturer] [nvarchar](50) NULL,
	[Model_name] [nvarchar](max) NULL,
	[Vehicle_type] [nvarchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[team_table]    Script Date: 1/2/2024 3:01:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[team_table](
	[Manufacturer] [nvarchar](50) NULL,
	[Model] [nvarchar](50) NULL,
	[fuel_type] [nvarchar](50) NULL,
	[year] [int] NULL,
	[claim] [nvarchar](50) NULL,
	[previous_insurer] [nvarchar](50) NULL,
	[policy_type] [nvarchar](50) NULL,
	[policy_expiry] [nvarchar](50) NULL,
	[from_date] [nvarchar](50) NULL,
	[nominee_name] [nvarchar](max) NULL,
	[nominee_relation] [nvarchar](50) NULL,
	[nominee_age] [nvarchar](50) NULL,
	[vehicle_financed] [nvarchar](50) NULL,
	[engine_number] [nvarchar](50) NULL,
	[chassis_number] [nvarchar](50) NULL,
	[previous_policy_num] [nvarchar](50) NULL,
	[reg_date] [nvarchar](50) NULL,
	[manufacturing_date] [nvarchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_reports_table]    Script Date: 1/2/2024 3:01:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_reports_table](
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Phone_no] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Registration_no] [nvarchar](50) NULL,
	[Vehicle_type] [nvarchar](50) NULL,
	[Manufaturer] [nvarchar](50) NULL,
	[Model] [nvarchar](50) NULL,
	[Fuel_type] [nvarchar](50) NULL,
	[Year] [nvarchar](50) NULL,
	[Insurer] [nvarchar](50) NULL,
	[Premium] [int] NULL,
	[IDV] [int] NULL,
	[Amount] [int] NULL,
 CONSTRAINT [PK_user_reports_table] PRIMARY KEY CLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usersignup_table]    Script Date: 1/2/2024 3:01:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usersignup_table](
	[full_name] [nvarchar](50) NULL,
	[date_of_birth] [nvarchar](50) NULL,
	[contact_no] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[state] [nvarchar](50) NULL,
	[city] [nvarchar](50) NULL,
	[pincode] [nvarchar](50) NULL,
	[full_address] [nvarchar](50) NULL,
	[user_id] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NULL,
	[account_status] [nvarchar](50) NULL,
 CONSTRAINT [PK_Usersignup_table] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[year]    Script Date: 1/2/2024 3:01:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[year](
	[Manufacturer] [nvarchar](max) NULL,
	[Model] [nvarchar](max) NULL,
	[Fuel_type] [nvarchar](max) NULL,
	[year] [nvarchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [transportDB] SET  READ_WRITE 
GO
