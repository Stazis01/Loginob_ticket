USE [master]
GO
/****** Object:  Database [Loginov_ticket]    Script Date: 22.12.2021 23:53 ******/
CREATE DATABASE [Loginov_ticket]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Loginov_ticket', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Loginov_ticket.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Loginov_ticket_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Loginov_ticket_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Loginov_ticket] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Loginov_ticket].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Loginov_ticket] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Loginov_ticket] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Loginov_ticket] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Loginov_ticket] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Loginov_ticket] SET ARITHABORT OFF 
GO
ALTER DATABASE [Loginov_ticket] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Loginov_ticket] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Loginov_ticket] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Loginov_ticket] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Loginov_ticket] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Loginov_ticket] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Loginov_ticket] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Loginov_ticket] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Loginov_ticket] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Loginov_ticket] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Loginov_ticket] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Loginov_ticket] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Loginov_ticket] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Loginov_ticket] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Loginov_ticket] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Loginov_ticket] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Loginov_ticket] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Loginov_ticket] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Loginov_ticket] SET  MULTI_USER 
GO
ALTER DATABASE [Loginov_ticket] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Loginov_ticket] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Loginov_ticket] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Loginov_ticket] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Loginov_ticket] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Loginov_ticket] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Loginov_ticket] SET QUERY_STORE = OFF
GO
USE [Loginov_ticket]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 22.12.2021 23:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[id_position] [numeric](18, 0) NULL,
	[Name_position] [nvarchar](50) NULL,
	[Surname] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Patronymic] [nvarchar](50) NULL,
	[Date_of_birthday] [date] NULL,
	[Mobile_number] [numeric](18, 0) NULL,
	[id_admin] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[id_admin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 22.12.2021 23:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[id_customer] [numeric](18, 0) NOT NULL,
	[Surname] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Patronymic] [nvarchar](50) NULL,
	[Date_of_birthday] [date] NULL,
	[Mobile_number] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Покупатели] PRIMARY KEY CLUSTERED 
(
	[id_customer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Event]    Script Date: 22.12.2021 23:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event](
	[id_event] [numeric](18, 0) NOT NULL,
	[Namination] [nvarchar](50) NULL,
	[id_organizer] [numeric](18, 0) NULL,
	[Location] [nvarchar](50) NULL,
 CONSTRAINT [PK_Мероприятие] PRIMARY KEY CLUSTERED 
(
	[id_event] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 22.12.2021 23:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[Login] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[id_user] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_Логин] PRIMARY KEY CLUSTERED 
(
	[id_user] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organizer]    Script Date: 22.12.2021 23:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organizer](
	[Surname] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Patronymic] [nvarchar](50) NULL,
	[Date_of_birthday] [date] NULL,
	[Mobile_number] [numeric](18, 0) NULL,
	[id_event] [numeric](18, 0) NULL,
	[id_organizer] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_Организатор] PRIMARY KEY CLUSTERED 
(
	[id_organizer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Position]    Script Date: 22.12.2021 23:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[id_position] [numeric](18, 0) NOT NULL,
	[Name_position] [nvarchar](50) NULL,
	[id_user] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Должность] PRIMARY KEY CLUSTERED 
(
	[id_position] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Seller]    Script Date: 22.12.2021 23:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seller](
	[id_employee] [numeric](18, 0) NOT NULL,
	[id_position] [numeric](18, 0) NULL,
	[Surname] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Patronymic] [nvarchar](50) NULL,
	[Date_of_birthday] [date] NULL,
	[Mobile_number] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Продавец] PRIMARY KEY CLUSTERED 
(
	[id_employee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tickets]    Script Date: 22.12.2021 23:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tickets](
	[id_ticket] [numeric](18, 0) NOT NULL,
	[Namination] [nvarchar](50) NULL,
	[Number] [numeric](18, 0) NULL,
	[Status] [nvarchar](50) NULL,
	[id_event] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Билеты] PRIMARY KEY CLUSTERED 
(
	[id_ticket] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tickets_sell]    Script Date: 22.12.2021 23:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tickets_sell](
	[id_ticket] [numeric](18, 0) NOT NULL,
	[Category] [nvarchar](50) NULL,
	[Cost] [money] NULL,
	[QR_code] [nchar](10) NULL,
	[id_employee] [numeric](18, 0) NULL,
	[Full_name] [nvarchar](50) NULL,
	[id_sell] [numeric](18, 0) NOT NULL,
	[id_customer] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Билет_продажа] PRIMARY KEY CLUSTERED 
(
	[id_sell] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Admin]  WITH CHECK ADD  CONSTRAINT [FK_Admin_Position] FOREIGN KEY([id_position])
REFERENCES [dbo].[Position] ([id_position])
GO
ALTER TABLE [dbo].[Admin] CHECK CONSTRAINT [FK_Admin_Position]
GO
ALTER TABLE [dbo].[Event]  WITH CHECK ADD  CONSTRAINT [FK_Event_Organizer] FOREIGN KEY([id_organizer])
REFERENCES [dbo].[Organizer] ([id_organizer])
GO
ALTER TABLE [dbo].[Event] CHECK CONSTRAINT [FK_Event_Organizer]
GO
ALTER TABLE [dbo].[Position]  WITH CHECK ADD  CONSTRAINT [FK_Position_Login] FOREIGN KEY([id_user])
REFERENCES [dbo].[Login] ([id_user])
GO
ALTER TABLE [dbo].[Position] CHECK CONSTRAINT [FK_Position_Login]
GO
ALTER TABLE [dbo].[Tickets]  WITH CHECK ADD  CONSTRAINT [FK_Tickets_Event] FOREIGN KEY([id_event])
REFERENCES [dbo].[Event] ([id_event])
GO
ALTER TABLE [dbo].[Tickets] CHECK CONSTRAINT [FK_Tickets_Event]
GO
ALTER TABLE [dbo].[Tickets_sell]  WITH CHECK ADD  CONSTRAINT [FK_Tickets_sell_Customers] FOREIGN KEY([id_customer])
REFERENCES [dbo].[Customers] ([id_customer])
GO
ALTER TABLE [dbo].[Tickets_sell] CHECK CONSTRAINT [FK_Tickets_sell_Customers]
GO
ALTER TABLE [dbo].[Tickets_sell]  WITH CHECK ADD  CONSTRAINT [FK_Tickets_sell_Seller] FOREIGN KEY([id_employee])
REFERENCES [dbo].[Seller] ([id_employee])
GO
ALTER TABLE [dbo].[Tickets_sell] CHECK CONSTRAINT [FK_Tickets_sell_Seller]
GO
ALTER TABLE [dbo].[Tickets_sell]  WITH CHECK ADD  CONSTRAINT [FK_Tickets_sell_Tickets] FOREIGN KEY([id_ticket])
REFERENCES [dbo].[Tickets] ([id_ticket])
GO
ALTER TABLE [dbo].[Tickets_sell] CHECK CONSTRAINT [FK_Tickets_sell_Tickets]
GO
USE [master]
GO
ALTER DATABASE [Loginov_ticket] SET  READ_WRITE 
GO
