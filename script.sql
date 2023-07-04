USE [master]
GO
/****** Object:  Database [netclick]    Script Date: 4/7/2023 4:08:12 PM ******/
CREATE DATABASE [netclick]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'netclick', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\netclick.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'netclick_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\netclick_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [netclick] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [netclick].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [netclick] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [netclick] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [netclick] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [netclick] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [netclick] SET ARITHABORT OFF 
GO
ALTER DATABASE [netclick] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [netclick] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [netclick] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [netclick] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [netclick] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [netclick] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [netclick] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [netclick] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [netclick] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [netclick] SET  DISABLE_BROKER 
GO
ALTER DATABASE [netclick] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [netclick] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [netclick] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [netclick] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [netclick] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [netclick] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [netclick] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [netclick] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [netclick] SET  MULTI_USER 
GO
ALTER DATABASE [netclick] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [netclick] SET DB_CHAINING OFF 
GO
ALTER DATABASE [netclick] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [netclick] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [netclick] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [netclick] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [netclick] SET QUERY_STORE = ON
GO
ALTER DATABASE [netclick] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [netclick]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 4/7/2023 4:08:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[userID] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[password] [varchar](255) NULL,
	[is_ban] [bit] NULL,
	[role] [int] NULL,
	[subscriptionID] [int] NULL,
 CONSTRAINT [PK__Account__CB9A1CDF373E5B8C] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ__Account__F3DBC572F4FECA78] UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FavoriteList]    Script Date: 4/7/2023 4:08:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FavoriteList](
	[accountID] [int] NOT NULL,
	[movieID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movie]    Script Date: 4/7/2023 4:08:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movie](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](255) NOT NULL,
	[description] [text] NOT NULL,
	[thumbnail] [varchar](255) NOT NULL,
	[movie_url] [varchar](255) NOT NULL,
	[release] [date] NOT NULL,
	[director] [varchar](255) NOT NULL,
	[rating] [int] NOT NULL,
	[watch_count] [int] NULL,
 CONSTRAINT [PK__Movie__42EB372EE169DD23] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovieTag]    Script Date: 4/7/2023 4:08:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovieTag](
	[movie_id] [int] NOT NULL,
	[tag_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[movie_id] ASC,
	[tag_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 4/7/2023 4:08:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userID] [int] NULL,
	[visa_num] [int] NULL,
	[expire_visa_date] [date] NULL,
	[cvv] [int] NULL,
	[placeholder_card] [nvarchar](max) NULL,
	[momo_num] [int] NULL,
	[start_date] [date] NULL,
	[subscriptionID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Review]    Script Date: 4/7/2023 4:08:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Review](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[movieID] [int] NULL,
	[userID] [int] NULL,
	[comment] [nvarchar](max) NULL,
	[rating] [int] NULL,
	[date_review] [datetime] NULL,
 CONSTRAINT [PK_Review] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 4/7/2023 4:08:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag](
	[id] [int] NOT NULL,
	[tag_name] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MovieTag]  WITH CHECK ADD  CONSTRAINT [FK__MovieTag__movie___3D5E1FD2] FOREIGN KEY([movie_id])
REFERENCES [dbo].[Movie] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MovieTag] CHECK CONSTRAINT [FK__MovieTag__movie___3D5E1FD2]
GO
ALTER TABLE [dbo].[MovieTag]  WITH CHECK ADD FOREIGN KEY([tag_id])
REFERENCES [dbo].[Tag] ([id])
ON DELETE CASCADE
GO
USE [master]
GO
ALTER DATABASE [netclick] SET  READ_WRITE 
GO
