USE [master]
GO
/****** Object:  Database [LibrarySYS]    Script Date: 02-Jan-21 10:59:29 AM ******/
CREATE DATABASE [LibrarySYS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LibrarySYS', FILENAME = N'D:\SQL Server 2019 - SSMS\MSSQL15.MSSQLSERVER\MSSQL\DATA\LibrarySYS.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LibrarySYS_log', FILENAME = N'D:\SQL Server 2019 - SSMS\MSSQL15.MSSQLSERVER\MSSQL\DATA\LibrarySYS_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [LibrarySYS] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LibrarySYS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LibrarySYS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LibrarySYS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LibrarySYS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LibrarySYS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LibrarySYS] SET ARITHABORT OFF 
GO
ALTER DATABASE [LibrarySYS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LibrarySYS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LibrarySYS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LibrarySYS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LibrarySYS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LibrarySYS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LibrarySYS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LibrarySYS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LibrarySYS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LibrarySYS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LibrarySYS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LibrarySYS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LibrarySYS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LibrarySYS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LibrarySYS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LibrarySYS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LibrarySYS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LibrarySYS] SET RECOVERY FULL 
GO
ALTER DATABASE [LibrarySYS] SET  MULTI_USER 
GO
ALTER DATABASE [LibrarySYS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LibrarySYS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LibrarySYS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LibrarySYS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [LibrarySYS] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [LibrarySYS] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'LibrarySYS', N'ON'
GO
ALTER DATABASE [LibrarySYS] SET QUERY_STORE = OFF
GO
USE [LibrarySYS]
GO
/****** Object:  Table [dbo].[academic]    Script Date: 02-Jan-21 10:59:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[academic](
	[lno] [varchar](50) NOT NULL,
	[school] [varchar](50) NULL,
	[college] [varchar](50) NULL,
	[university] [varchar](50) NULL,
 CONSTRAINT [PK_academic] PRIMARY KEY CLUSTERED 
(
	[lno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[archivists]    Script Date: 02-Jan-21 10:59:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[archivists](
	[empid] [varchar](50) NOT NULL,
	[details] [varchar](50) NULL,
 CONSTRAINT [PK_archivists] PRIMARY KEY CLUSTERED 
(
	[empid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[assistant]    Script Date: 02-Jan-21 10:59:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[assistant](
	[empid] [varchar](50) NOT NULL,
	[details] [varchar](50) NULL,
 CONSTRAINT [PK_assistant] PRIMARY KEY CLUSTERED 
(
	[empid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[book]    Script Date: 02-Jan-21 10:59:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[book](
	[bisbnno] [varchar](50) NOT NULL,
	[name] [varchar](80) NULL,
	[author] [varchar](80) NULL,
	[price] [varchar](50) NULL,
	[title] [varchar](50) NULL,
	[year] [date] NULL,
	[availabilty] [bit] NULL,
	[publisherid] [varchar](50) NULL,
 CONSTRAINT [PK_book] PRIMARY KEY CLUSTERED 
(
	[bisbnno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[borrow]    Script Date: 02-Jan-21 10:59:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[borrow](
	[cisbnno] [varchar](50) NOT NULL,
	[bisbnno] [varchar](50) NOT NULL,
	[cno] [varchar](50) NOT NULL,
	[idcode] [varchar](50) NOT NULL,
	[returndate] [date] NULL,
	[duedate] [date] NULL,
	[issuedate] [date] NULL,
 CONSTRAINT [PK_borrow\] PRIMARY KEY CLUSTERED 
(
	[cisbnno] ASC,
	[bisbnno] ASC,
	[cno] ASC,
	[idcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[clerk]    Script Date: 02-Jan-21 10:59:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clerk](
	[empid] [varchar](50) NOT NULL,
	[details] [varchar](50) NULL,
 CONSTRAINT [PK_clerk] PRIMARY KEY CLUSTERED 
(
	[empid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[copy]    Script Date: 02-Jan-21 10:59:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[copy](
	[cno] [varchar](50) NOT NULL,
	[cisbnno] [varchar](50) NULL,
	[price] [numeric](10, 3) NULL,
 CONSTRAINT [PK_copy] PRIMARY KEY CLUSTERED 
(
	[cno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[copylocation]    Script Date: 02-Jan-21 10:59:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[copylocation](
	[cno] [varchar](50) NOT NULL,
	[location] [varchar](100) NULL,
 CONSTRAINT [PK_copylocation] PRIMARY KEY CLUSTERED 
(
	[cno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[director]    Script Date: 02-Jan-21 10:59:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[director](
	[empid] [varchar](50) NOT NULL,
	[details] [varchar](50) NULL,
 CONSTRAINT [PK_director] PRIMARY KEY CLUSTERED 
(
	[empid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employee]    Script Date: 02-Jan-21 10:59:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employee](
	[empid] [varchar](50) NOT NULL,
	[nic] [char](10) NOT NULL,
	[name] [varchar](50) NULL,
	[gender] [varchar](50) NULL,
	[contactno] [char](10) NULL,
	[salary] [numeric](10, 3) NULL,
	[address] [varchar](100) NULL,
 CONSTRAINT [PK_employee] PRIMARY KEY CLUSTERED 
(
	[empid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empqualification]    Script Date: 02-Jan-21 10:59:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empqualification](
	[empid] [varchar](50) NOT NULL,
	[qualification] [varchar](80) NULL,
 CONSTRAINT [PK_empqualification] PRIMARY KEY CLUSTERED 
(
	[empid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[has]    Script Date: 02-Jan-21 10:59:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[has](
	[lno] [varchar](50) NOT NULL,
	[empid] [varchar](50) NOT NULL,
	[cno] [varchar](50) NOT NULL,
	[bisbnno] [varchar](50) NOT NULL,
 CONSTRAINT [PK_has] PRIMARY KEY CLUSTERED 
(
	[lno] ASC,
	[empid] ASC,
	[cno] ASC,
	[bisbnno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kindergarten]    Script Date: 02-Jan-21 10:59:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kindergarten](
	[idcode] [varchar](50) NOT NULL,
	[name] [varchar](50) NULL,
 CONSTRAINT [PK_kindergarten] PRIMARY KEY CLUSTERED 
(
	[idcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[librarian]    Script Date: 02-Jan-21 10:59:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[librarian](
	[empid] [varchar](50) NOT NULL,
	[details] [varchar](50) NULL,
 CONSTRAINT [PK_libarian] PRIMARY KEY CLUSTERED 
(
	[empid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[library]    Script Date: 02-Jan-21 10:59:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[library](
	[lno] [varchar](50) NOT NULL,
	[name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_library] PRIMARY KEY CLUSTERED 
(
	[lno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[libraryaid]    Script Date: 02-Jan-21 10:59:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[libraryaid](
	[empid] [varchar](50) NOT NULL,
	[details] [varchar](50) NULL,
 CONSTRAINT [PK_libraryaid] PRIMARY KEY CLUSTERED 
(
	[empid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[librarylocation]    Script Date: 02-Jan-21 10:59:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[librarylocation](
	[lno] [varchar](50) NOT NULL,
	[location] [varchar](100) NOT NULL,
 CONSTRAINT [PK_librarylocation] PRIMARY KEY CLUSTERED 
(
	[lno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mediaspecialist]    Script Date: 02-Jan-21 10:59:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mediaspecialist](
	[empid] [varchar](50) NOT NULL,
	[details] [varchar](50) NULL,
 CONSTRAINT [PK_mediaspecialist] PRIMARY KEY CLUSTERED 
(
	[empid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[medicallibrarian]    Script Date: 02-Jan-21 10:59:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[medicallibrarian](
	[empid] [varchar](50) NOT NULL,
	[details] [varchar](50) NULL,
 CONSTRAINT [PK_medicallibrarian] PRIMARY KEY CLUSTERED 
(
	[empid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[member]    Script Date: 02-Jan-21 10:59:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[member](
	[idcode] [varchar](50) NOT NULL,
	[name] [varchar](50) NULL,
	[address] [varchar](50) NULL,
	[gender] [varchar](50) NULL,
	[contactno] [char](10) NULL,
	[expdate] [date] NULL,
	[memberdate] [date] NULL,
 CONSTRAINT [PK_member] PRIMARY KEY CLUSTERED 
(
	[idcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[other]    Script Date: 02-Jan-21 10:59:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[other](
	[idcode] [varchar](50) NOT NULL,
	[nic] [char](10) NOT NULL,
	[occupation] [varchar](50) NULL,
 CONSTRAINT [PK_other] PRIMARY KEY CLUSTERED 
(
	[idcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[postgraduate]    Script Date: 02-Jan-21 10:59:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[postgraduate](
	[idcode] [varchar](50) NOT NULL,
	[nic] [char](10) NOT NULL,
	[university] [varchar](50) NULL,
	[researchtype] [varchar](50) NULL,
 CONSTRAINT [PK_postgraduate] PRIMARY KEY CLUSTERED 
(
	[idcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[public]    Script Date: 02-Jan-21 10:59:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[public](
	[lno] [varchar](50) NOT NULL,
	[details] [varchar](50) NULL,
 CONSTRAINT [PK_public] PRIMARY KEY CLUSTERED 
(
	[lno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[publisher]    Script Date: 02-Jan-21 10:59:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[publisher](
	[publisherid] [varchar](50) NOT NULL,
	[name] [varchar](80) NOT NULL,
	[address] [varchar](100) NULL,
 CONSTRAINT [PK_publisher] PRIMARY KEY CLUSTERED 
(
	[publisherid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[special]    Script Date: 02-Jan-21 10:59:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[special](
	[lno] [varchar](50) NOT NULL,
	[details] [varchar](50) NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[lno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[student]    Script Date: 02-Jan-21 10:59:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student](
	[idcode] [varchar](50) NOT NULL,
	[school] [varchar](50) NULL,
 CONSTRAINT [PK_student] PRIMARY KEY CLUSTERED 
(
	[idcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[technician]    Script Date: 02-Jan-21 10:59:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[technician](
	[empid] [varchar](50) NOT NULL,
	[details] [varchar](50) NULL,
 CONSTRAINT [PK_technician] PRIMARY KEY CLUSTERED 
(
	[empid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[undergraduate]    Script Date: 02-Jan-21 10:59:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[undergraduate](
	[idcode] [varchar](50) NOT NULL,
	[nic] [char](10) NOT NULL,
	[university] [varchar](50) NULL,
	[program] [varchar](50) NULL,
 CONSTRAINT [PK_undergraduate] PRIMARY KEY CLUSTERED 
(
	[idcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[academic]  WITH CHECK ADD  CONSTRAINT [FK_academic_library] FOREIGN KEY([lno])
REFERENCES [dbo].[library] ([lno])
GO
ALTER TABLE [dbo].[academic] CHECK CONSTRAINT [FK_academic_library]
GO
ALTER TABLE [dbo].[archivists]  WITH CHECK ADD  CONSTRAINT [FK_archivists_employee] FOREIGN KEY([empid])
REFERENCES [dbo].[employee] ([empid])
GO
ALTER TABLE [dbo].[archivists] CHECK CONSTRAINT [FK_archivists_employee]
GO
ALTER TABLE [dbo].[assistant]  WITH CHECK ADD  CONSTRAINT [FK_assistant_employee] FOREIGN KEY([empid])
REFERENCES [dbo].[employee] ([empid])
GO
ALTER TABLE [dbo].[assistant] CHECK CONSTRAINT [FK_assistant_employee]
GO
ALTER TABLE [dbo].[clerk]  WITH CHECK ADD  CONSTRAINT [FK_clerk_employee] FOREIGN KEY([empid])
REFERENCES [dbo].[employee] ([empid])
GO
ALTER TABLE [dbo].[clerk] CHECK CONSTRAINT [FK_clerk_employee]
GO
ALTER TABLE [dbo].[copylocation]  WITH CHECK ADD  CONSTRAINT [FK_copylocation_copy] FOREIGN KEY([cno])
REFERENCES [dbo].[copy] ([cno])
GO
ALTER TABLE [dbo].[copylocation] CHECK CONSTRAINT [FK_copylocation_copy]
GO
ALTER TABLE [dbo].[director]  WITH CHECK ADD  CONSTRAINT [FK_director_employee] FOREIGN KEY([empid])
REFERENCES [dbo].[employee] ([empid])
GO
ALTER TABLE [dbo].[director] CHECK CONSTRAINT [FK_director_employee]
GO
ALTER TABLE [dbo].[empqualification]  WITH CHECK ADD  CONSTRAINT [FK_empqualification_employee] FOREIGN KEY([empid])
REFERENCES [dbo].[employee] ([empid])
GO
ALTER TABLE [dbo].[empqualification] CHECK CONSTRAINT [FK_empqualification_employee]
GO
ALTER TABLE [dbo].[has]  WITH CHECK ADD  CONSTRAINT [FK_has_has] FOREIGN KEY([lno], [empid], [cno], [bisbnno])
REFERENCES [dbo].[has] ([lno], [empid], [cno], [bisbnno])
GO
ALTER TABLE [dbo].[has] CHECK CONSTRAINT [FK_has_has]
GO
ALTER TABLE [dbo].[librarian]  WITH CHECK ADD  CONSTRAINT [FK_librarian_employee] FOREIGN KEY([empid])
REFERENCES [dbo].[employee] ([empid])
GO
ALTER TABLE [dbo].[librarian] CHECK CONSTRAINT [FK_librarian_employee]
GO
ALTER TABLE [dbo].[libraryaid]  WITH CHECK ADD  CONSTRAINT [FK_libraryaid_employee] FOREIGN KEY([empid])
REFERENCES [dbo].[employee] ([empid])
GO
ALTER TABLE [dbo].[libraryaid] CHECK CONSTRAINT [FK_libraryaid_employee]
GO
ALTER TABLE [dbo].[librarylocation]  WITH CHECK ADD  CONSTRAINT [FK_librarylocation_library] FOREIGN KEY([lno])
REFERENCES [dbo].[library] ([lno])
GO
ALTER TABLE [dbo].[librarylocation] CHECK CONSTRAINT [FK_librarylocation_library]
GO
ALTER TABLE [dbo].[mediaspecialist]  WITH CHECK ADD  CONSTRAINT [FK_mediaspecialist_employee] FOREIGN KEY([empid])
REFERENCES [dbo].[employee] ([empid])
GO
ALTER TABLE [dbo].[mediaspecialist] CHECK CONSTRAINT [FK_mediaspecialist_employee]
GO
ALTER TABLE [dbo].[medicallibrarian]  WITH CHECK ADD  CONSTRAINT [FK_medicallibrarian_employee] FOREIGN KEY([empid])
REFERENCES [dbo].[employee] ([empid])
GO
ALTER TABLE [dbo].[medicallibrarian] CHECK CONSTRAINT [FK_medicallibrarian_employee]
GO
ALTER TABLE [dbo].[other]  WITH CHECK ADD  CONSTRAINT [FK_other_member] FOREIGN KEY([idcode])
REFERENCES [dbo].[member] ([idcode])
GO
ALTER TABLE [dbo].[other] CHECK CONSTRAINT [FK_other_member]
GO
ALTER TABLE [dbo].[postgraduate]  WITH CHECK ADD  CONSTRAINT [FK_postgraduate_member] FOREIGN KEY([idcode])
REFERENCES [dbo].[member] ([idcode])
GO
ALTER TABLE [dbo].[postgraduate] CHECK CONSTRAINT [FK_postgraduate_member]
GO
ALTER TABLE [dbo].[public]  WITH CHECK ADD  CONSTRAINT [FK_public_library] FOREIGN KEY([lno])
REFERENCES [dbo].[library] ([lno])
GO
ALTER TABLE [dbo].[public] CHECK CONSTRAINT [FK_public_library]
GO
ALTER TABLE [dbo].[special]  WITH CHECK ADD  CONSTRAINT [FK_special_library] FOREIGN KEY([lno])
REFERENCES [dbo].[library] ([lno])
GO
ALTER TABLE [dbo].[special] CHECK CONSTRAINT [FK_special_library]
GO
ALTER TABLE [dbo].[student]  WITH CHECK ADD  CONSTRAINT [FK_student_member] FOREIGN KEY([idcode])
REFERENCES [dbo].[member] ([idcode])
GO
ALTER TABLE [dbo].[student] CHECK CONSTRAINT [FK_student_member]
GO
ALTER TABLE [dbo].[technician]  WITH CHECK ADD  CONSTRAINT [FK_technician_employee] FOREIGN KEY([empid])
REFERENCES [dbo].[employee] ([empid])
GO
ALTER TABLE [dbo].[technician] CHECK CONSTRAINT [FK_technician_employee]
GO
ALTER TABLE [dbo].[undergraduate]  WITH CHECK ADD  CONSTRAINT [FK_undergraduate_member] FOREIGN KEY([idcode])
REFERENCES [dbo].[member] ([idcode])
GO
ALTER TABLE [dbo].[undergraduate] CHECK CONSTRAINT [FK_undergraduate_member]
GO
USE [master]
GO
ALTER DATABASE [LibrarySYS] SET  READ_WRITE 
GO
