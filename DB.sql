USE [master]
GO
/****** Object:  Database [cowork]    Script Date: 13/6/2562 9:14:34 ******/
CREATE DATABASE [cowork]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'cowork', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\cowork.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'cowork_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\cowork_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [cowork] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [cowork].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [cowork] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [cowork] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [cowork] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [cowork] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [cowork] SET ARITHABORT OFF 
GO
ALTER DATABASE [cowork] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [cowork] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [cowork] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [cowork] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [cowork] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [cowork] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [cowork] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [cowork] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [cowork] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [cowork] SET  DISABLE_BROKER 
GO
ALTER DATABASE [cowork] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [cowork] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [cowork] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [cowork] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [cowork] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [cowork] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [cowork] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [cowork] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [cowork] SET  MULTI_USER 
GO
ALTER DATABASE [cowork] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [cowork] SET DB_CHAINING OFF 
GO
ALTER DATABASE [cowork] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [cowork] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [cowork] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [cowork] SET QUERY_STORE = OFF
GO
USE [cowork]
GO
/****** Object:  Table [dbo].[category]    Script Date: 13/6/2562 9:14:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[category_id] [int] NOT NULL,
	[category_name] [varchar](50) NULL,
	[spase_id] [int] NULL,
 CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer]    Script Date: 13/6/2562 9:14:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer](
	[cus_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](20) NULL,
	[email] [varchar](30) NULL,
	[password] [varchar](20) NULL,
	[re_password] [varchar](20) NULL,
 CONSTRAINT [PK_customer] PRIMARY KEY CLUSTERED 
(
	[cus_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[review]    Script Date: 13/6/2562 9:14:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[review](
	[cus_img] [nvarchar](max) NULL,
	[username] [varchar](20) NULL,
	[text] [nvarchar](max) NULL,
	[score] [int] NULL,
	[cus_id] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sex]    Script Date: 13/6/2562 9:14:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sex](
	[sex_id] [int] IDENTITY(1,1) NOT NULL,
	[sex] [varchar](50) NULL,
	[cus_id] [int] NULL,
 CONSTRAINT [PK_sex] PRIMARY KEY CLUSTERED 
(
	[sex_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spase]    Script Date: 13/6/2562 9:14:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spase](
	[spase_id] [int] IDENTITY(1,1) NOT NULL,
	[spase_img] [varchar](50) NULL,
	[spase_name] [varchar](50) NULL,
	[cus_id] [int] NULL,
	[category_id] [int] NULL,
	[detail] [nvarchar](max) NULL,
 CONSTRAINT [PK_spase] PRIMARY KEY CLUSTERED 
(
	[spase_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[store]    Script Date: 13/6/2562 9:14:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[store](
	[spase_id] [int] NOT NULL,
	[spase_name] [varchar](50) NULL,
	[spase_img1] [nvarchar](max) NULL,
	[detail1] [nvarchar](max) NULL,
	[spase_img2] [nvarchar](max) NULL,
	[detail2] [nvarchar](max) NULL,
	[email] [varchar](50) NULL,
	[tel] [varchar](10) NULL,
	[owner] [varchar](50) NULL,
 CONSTRAINT [PK_store] PRIMARY KEY CLUSTERED 
(
	[spase_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[category] ([category_id], [category_name], [spase_id]) VALUES (1, N'ลูกค้า', NULL)
INSERT [dbo].[category] ([category_id], [category_name], [spase_id]) VALUES (2, N'ผู้ประกอบการ', NULL)
SET IDENTITY_INSERT [dbo].[customer] ON 

INSERT [dbo].[customer] ([cus_id], [username], [email], [password], [re_password]) VALUES (1, N'boom      ', N'dakesider.5@gmail.com', N'0000', N'0000')
INSERT [dbo].[customer] ([cus_id], [username], [email], [password], [re_password]) VALUES (2, N'wine      ', N'wine@gmail.com', N'0123', N'0123      ')
SET IDENTITY_INSERT [dbo].[customer] OFF
SET IDENTITY_INSERT [dbo].[sex] ON 

INSERT [dbo].[sex] ([sex_id], [sex], [cus_id]) VALUES (1, N'Male', NULL)
INSERT [dbo].[sex] ([sex_id], [sex], [cus_id]) VALUES (2, N'Female', NULL)
SET IDENTITY_INSERT [dbo].[sex] OFF
SET IDENTITY_INSERT [dbo].[spase] ON 

INSERT [dbo].[spase] ([spase_id], [spase_img], [spase_name], [cus_id], [category_id], [detail]) VALUES (1, NULL, N'dfdfdffdf', NULL, NULL, NULL)
INSERT [dbo].[spase] ([spase_id], [spase_img], [spase_name], [cus_id], [category_id], [detail]) VALUES (2, NULL, N'hfdhfd', NULL, NULL, NULL)
INSERT [dbo].[spase] ([spase_id], [spase_img], [spase_name], [cus_id], [category_id], [detail]) VALUES (3, NULL, N'hfgnfgnfgn', NULL, NULL, NULL)
INSERT [dbo].[spase] ([spase_id], [spase_img], [spase_name], [cus_id], [category_id], [detail]) VALUES (4, NULL, N'fgnfgnfgn', NULL, NULL, NULL)
INSERT [dbo].[spase] ([spase_id], [spase_img], [spase_name], [cus_id], [category_id], [detail]) VALUES (5, NULL, N'fngfngfnfgngf', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[spase] OFF
INSERT [dbo].[store] ([spase_id], [spase_name], [spase_img1], [detail1], [spase_img2], [detail2], [email], [tel], [owner]) VALUES (1, N'ร้าน ooooo', NULL, N'rggdsgrgdrgd', NULL, N'dgrdgrgdrgdrg', N'ftrtfrt@gmail.com', N'0923145687', N'John wick')
ALTER TABLE [dbo].[category]  WITH CHECK ADD  CONSTRAINT [FK_category_store] FOREIGN KEY([spase_id])
REFERENCES [dbo].[store] ([spase_id])
GO
ALTER TABLE [dbo].[category] CHECK CONSTRAINT [FK_category_store]
GO
ALTER TABLE [dbo].[review]  WITH CHECK ADD  CONSTRAINT [FK_review_customer] FOREIGN KEY([cus_id])
REFERENCES [dbo].[customer] ([cus_id])
GO
ALTER TABLE [dbo].[review] CHECK CONSTRAINT [FK_review_customer]
GO
ALTER TABLE [dbo].[sex]  WITH CHECK ADD  CONSTRAINT [FK_sex_customer] FOREIGN KEY([cus_id])
REFERENCES [dbo].[customer] ([cus_id])
GO
ALTER TABLE [dbo].[sex] CHECK CONSTRAINT [FK_sex_customer]
GO
ALTER TABLE [dbo].[spase]  WITH CHECK ADD  CONSTRAINT [FK_spase_category1] FOREIGN KEY([category_id])
REFERENCES [dbo].[category] ([category_id])
GO
ALTER TABLE [dbo].[spase] CHECK CONSTRAINT [FK_spase_category1]
GO
ALTER TABLE [dbo].[spase]  WITH CHECK ADD  CONSTRAINT [FK_spase_customer1] FOREIGN KEY([cus_id])
REFERENCES [dbo].[customer] ([cus_id])
GO
ALTER TABLE [dbo].[spase] CHECK CONSTRAINT [FK_spase_customer1]
GO
USE [master]
GO
ALTER DATABASE [cowork] SET  READ_WRITE 
GO
