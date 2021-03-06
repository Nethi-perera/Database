USE [LibrarySYS]
GO
/****** Object:  Database [LibrarySystem1]    Script Date: 28-Dec-20 06:31:15 AM ******/
CREATE DATABASE [LibrarySystem1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LibrarySystem1', FILENAME = N'D:\SQL Server 2019 - SSMS\MSSQL15.MSSQLSERVER\MSSQL\DATA\LibrarySystem1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LibrarySystem1_log', FILENAME = N'D:\SQL Server 2019 - SSMS\MSSQL15.MSSQLSERVER\MSSQL\DATA\LibrarySystem1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [LibrarySystem1] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LibrarySystem1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LibrarySystem1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LibrarySystem1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LibrarySystem1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LibrarySystem1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LibrarySystem1] SET ARITHABORT OFF 
GO
ALTER DATABASE [LibrarySystem1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LibrarySystem1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LibrarySystem1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LibrarySystem1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LibrarySystem1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LibrarySystem1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LibrarySystem1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LibrarySystem1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LibrarySystem1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LibrarySystem1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LibrarySystem1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LibrarySystem1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LibrarySystem1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LibrarySystem1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LibrarySystem1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LibrarySystem1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LibrarySystem1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LibrarySystem1] SET RECOVERY FULL 
GO
ALTER DATABASE [LibrarySystem1] SET  MULTI_USER 
GO
ALTER DATABASE [LibrarySystem1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LibrarySystem1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LibrarySystem1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LibrarySystem1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [LibrarySystem1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [LibrarySystem1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'LibrarySystem1', N'ON'
GO
ALTER DATABASE [LibrarySystem1] SET QUERY_STORE = OFF
GO
USE [LibrarySystem1]
GO
/****** Object:  Table [dbo].[Academic]    Script Date: 28-Dec-20 06:31:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Academic](
	[LNo] [varchar](40) NOT NULL,
	[School] [varchar](50) NULL,
	[College] [varchar](50) NULL,
	[University] [varchar](50) NULL,
 CONSTRAINT [PK_Table_2] PRIMARY KEY CLUSTERED 
(
	[LNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Archivists]    Script Date: 28-Dec-20 06:31:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Archivists](
	[EmpID] [varchar](40) NOT NULL,
	[Details] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Archivists] PRIMARY KEY CLUSTERED 
(
	[EmpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Assistant]    Script Date: 28-Dec-20 06:31:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assistant](
	[EmpID] [varchar](40) NOT NULL,
	[Details] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Assistant] PRIMARY KEY CLUSTERED 
(
	[EmpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 28-Dec-20 06:31:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[BISBNNo] [varchar](40) NOT NULL,
	[Availability] [bit] NOT NULL,
	[BName] [varchar](50) NOT NULL,
	[Author] [varchar](50) NOT NULL,
	[BPrice] [varchar](50) NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[Year] [datetime] NOT NULL,
	[PublisherID] [varchar](40) NOT NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[BISBNNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BorrowRelationship]    Script Date: 28-Dec-20 06:31:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BorrowRelationship](
	[BISBNNo] [varchar](40) NOT NULL,
	[IDCode] [varchar](40) NOT NULL,
	[CNo] [varchar](40) NOT NULL,
	[ReturnDate] [datetime] NOT NULL,
	[DueDate] [datetime] NOT NULL,
	[IssueDate] [datetime] NOT NULL,
 CONSTRAINT [PK_BorrowRelationship_1] PRIMARY KEY CLUSTERED 
(
	[BISBNNo] ASC,
	[IDCode] ASC,
	[CNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clerk]    Script Date: 28-Dec-20 06:31:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clerk](
	[EmpID] [varchar](40) NOT NULL,
	[Details] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Clark] PRIMARY KEY CLUSTERED 
(
	[EmpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Copy]    Script Date: 28-Dec-20 06:31:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Copy](
	[CNo] [varchar](40) NOT NULL,
	[Price] [numeric](10, 0) NOT NULL,
	[CISBNNo] [varchar](40) NOT NULL,
 CONSTRAINT [PK_Copy] PRIMARY KEY CLUSTERED 
(
	[CNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CopyLocation]    Script Date: 28-Dec-20 06:31:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CopyLocation](
	[CNo] [varchar](40) NOT NULL,
	[Location] [varchar](120) NOT NULL,
 CONSTRAINT [PK_CopyLocation] PRIMARY KEY CLUSTERED 
(
	[CNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Director]    Script Date: 28-Dec-20 06:31:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Director](
	[EmpID] [varchar](40) NOT NULL,
	[Details] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Director] PRIMARY KEY CLUSTERED 
(
	[EmpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 28-Dec-20 06:31:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmpID] [varchar](40) NOT NULL,
	[NIC] [varchar](12) NOT NULL,
	[Name] [varchar](80) NOT NULL,
	[Gender] [varchar](5) NULL,
	[ContactNo] [numeric](10, 0) NULL,
	[Salary] [numeric](10, 3) NULL,
	[Address] [varchar](120) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeQualification]    Script Date: 28-Dec-20 06:31:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeQualification](
	[EmpID] [varchar](40) NOT NULL,
	[Qualification] [varchar](50) NOT NULL,
 CONSTRAINT [PK_EmployeeQualification] PRIMARY KEY CLUSTERED 
(
	[EmpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HasRelationship]    Script Date: 28-Dec-20 06:31:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HasRelationship](
	[LNo] [varchar](40) NOT NULL,
	[EmpID] [varchar](40) NOT NULL,
	[CNo] [varchar](40) NOT NULL,
	[BISBNNo] [varchar](40) NOT NULL,
 CONSTRAINT [PK_HasRelationship] PRIMARY KEY CLUSTERED 
(
	[LNo] ASC,
	[EmpID] ASC,
	[CNo] ASC,
	[BISBNNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kindergarten]    Script Date: 28-Dec-20 06:31:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kindergarten](
	[IDCode] [varchar](40) NOT NULL,
	[KindergartenName] [varchar](80) NOT NULL,
 CONSTRAINT [PK_Kindergarten] PRIMARY KEY CLUSTERED 
(
	[IDCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Librarian]    Script Date: 28-Dec-20 06:31:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Librarian](
	[EmpID] [varchar](40) NOT NULL,
	[Details] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Librarian] PRIMARY KEY CLUSTERED 
(
	[EmpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Library]    Script Date: 28-Dec-20 06:31:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Library](
	[LNo] [varchar](40) NOT NULL,
	[Name] [varchar](80) NOT NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[LNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LibraryAid]    Script Date: 28-Dec-20 06:31:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LibraryAid](
	[EmpID] [varchar](40) NOT NULL,
	[Details] [varchar](50) NOT NULL,
 CONSTRAINT [PK_LibraryAid] PRIMARY KEY CLUSTERED 
(
	[EmpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LibraryLocation]    Script Date: 28-Dec-20 06:31:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LibraryLocation](
	[LNo] [varchar](40) NOT NULL,
	[Location] [varchar](120) NOT NULL,
 CONSTRAINT [PK_Table_1_1] PRIMARY KEY CLUSTERED 
(
	[LNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MediaSpecialist]    Script Date: 28-Dec-20 06:31:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MediaSpecialist](
	[EmpID] [varchar](40) NOT NULL,
	[Details] [varchar](50) NOT NULL,
 CONSTRAINT [PK_MediaSpecialist] PRIMARY KEY CLUSTERED 
(
	[EmpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicalLibrarian]    Script Date: 28-Dec-20 06:31:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicalLibrarian](
	[EmpID] [varchar](40) NOT NULL,
	[Details] [varchar](50) NOT NULL,
 CONSTRAINT [PK_MedicalLibrarian] PRIMARY KEY CLUSTERED 
(
	[EmpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Member]    Script Date: 28-Dec-20 06:31:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member](
	[IDCode] [varchar](40) NOT NULL,
	[Address] [varchar](120) NOT NULL,
	[ExpDate] [datetime] NOT NULL,
	[Gender] [varchar](5) NULL,
	[Name] [varchar](80) NOT NULL,
	[ContactNo] [numeric](10, 0) NOT NULL,
	[MemberDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Member] PRIMARY KEY CLUSTERED 
(
	[IDCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Others]    Script Date: 28-Dec-20 06:31:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Others](
	[IDCode] [varchar](40) NOT NULL,
	[NIC] [varchar](12) NOT NULL,
	[Occupation] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Others] PRIMARY KEY CLUSTERED 
(
	[IDCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Postgraduate]    Script Date: 28-Dec-20 06:31:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Postgraduate](
	[IDCode] [varchar](40) NOT NULL,
	[NIC] [varchar](12) NOT NULL,
	[University] [varchar](50) NOT NULL,
	[ResearchType] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Postgraduate] PRIMARY KEY CLUSTERED 
(
	[IDCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Public]    Script Date: 28-Dec-20 06:31:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Public](
	[LNo] [varchar](40) NOT NULL,
	[Details] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Public_1] PRIMARY KEY CLUSTERED 
(
	[LNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Publisher]    Script Date: 28-Dec-20 06:31:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Publisher](
	[PublisherID] [varchar](40) NOT NULL,
	[Name] [varchar](80) NOT NULL,
	[Address] [varchar](120) NULL,
 CONSTRAINT [PK_Publisher] PRIMARY KEY CLUSTERED 
(
	[PublisherID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Special]    Script Date: 28-Dec-20 06:31:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Special](
	[LNo] [varchar](40) NOT NULL,
	[Details] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Table_1_2] PRIMARY KEY CLUSTERED 
(
	[LNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 28-Dec-20 06:31:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[IDCode] [varchar](40) NOT NULL,
	[School] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[IDCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Technician]    Script Date: 28-Dec-20 06:31:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Technician](
	[EmpID] [varchar](40) NOT NULL,
	[Details] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Technician] PRIMARY KEY CLUSTERED 
(
	[EmpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Undergraduate]    Script Date: 28-Dec-20 06:31:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Undergraduate](
	[IDCode] [varchar](40) NOT NULL,
	[NIC] [varchar](12) NOT NULL,
	[University] [varchar](50) NOT NULL,
	[DegreeProgram] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Undergraduate] PRIMARY KEY CLUSTERED 
(
	[IDCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Publisher] FOREIGN KEY([PublisherID])
REFERENCES [dbo].[Publisher] ([PublisherID])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Publisher]
GO
ALTER TABLE [dbo].[BorrowRelationship]  WITH CHECK ADD  CONSTRAINT [FK_BorrowRelationship_Book] FOREIGN KEY([BISBNNo])
REFERENCES [dbo].[Book] ([BISBNNo])
GO
ALTER TABLE [dbo].[BorrowRelationship] CHECK CONSTRAINT [FK_BorrowRelationship_Book]
GO
ALTER TABLE [dbo].[BorrowRelationship]  WITH CHECK ADD  CONSTRAINT [FK_BorrowRelationship_Copy] FOREIGN KEY([CNo])
REFERENCES [dbo].[Copy] ([CNo])
GO
ALTER TABLE [dbo].[BorrowRelationship] CHECK CONSTRAINT [FK_BorrowRelationship_Copy]
GO
ALTER TABLE [dbo].[BorrowRelationship]  WITH CHECK ADD  CONSTRAINT [FK_BorrowRelationship_Member] FOREIGN KEY([IDCode])
REFERENCES [dbo].[Member] ([IDCode])
GO
ALTER TABLE [dbo].[BorrowRelationship] CHECK CONSTRAINT [FK_BorrowRelationship_Member]
GO
ALTER TABLE [dbo].[Copy]  WITH CHECK ADD  CONSTRAINT [FK_Copy_CopyLocation] FOREIGN KEY([CNo])
REFERENCES [dbo].[CopyLocation] ([CNo])
GO
ALTER TABLE [dbo].[Copy] CHECK CONSTRAINT [FK_Copy_CopyLocation]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Archivists] FOREIGN KEY([EmpID])
REFERENCES [dbo].[Archivists] ([EmpID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Archivists]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Assistant] FOREIGN KEY([EmpID])
REFERENCES [dbo].[Assistant] ([EmpID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Assistant]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Clerk] FOREIGN KEY([EmpID])
REFERENCES [dbo].[Clerk] ([EmpID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Clerk]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Director] FOREIGN KEY([EmpID])
REFERENCES [dbo].[Director] ([EmpID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Director]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_EmployeeQualification] FOREIGN KEY([EmpID])
REFERENCES [dbo].[EmployeeQualification] ([EmpID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_EmployeeQualification]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Librarian] FOREIGN KEY([EmpID])
REFERENCES [dbo].[Librarian] ([EmpID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Librarian]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_LibraryAid] FOREIGN KEY([EmpID])
REFERENCES [dbo].[LibraryAid] ([EmpID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_LibraryAid]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_MediaSpecialist] FOREIGN KEY([EmpID])
REFERENCES [dbo].[MediaSpecialist] ([EmpID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_MediaSpecialist]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_MedicalLibrarian] FOREIGN KEY([EmpID])
REFERENCES [dbo].[MedicalLibrarian] ([EmpID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_MedicalLibrarian]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Technician] FOREIGN KEY([EmpID])
REFERENCES [dbo].[Technician] ([EmpID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Technician]
GO
ALTER TABLE [dbo].[HasRelationship]  WITH CHECK ADD  CONSTRAINT [FK_HasRelationship_Book] FOREIGN KEY([BISBNNo])
REFERENCES [dbo].[Book] ([BISBNNo])
GO
ALTER TABLE [dbo].[HasRelationship] CHECK CONSTRAINT [FK_HasRelationship_Book]
GO
ALTER TABLE [dbo].[HasRelationship]  WITH CHECK ADD  CONSTRAINT [FK_HasRelationship_Copy] FOREIGN KEY([CNo])
REFERENCES [dbo].[Copy] ([CNo])
GO
ALTER TABLE [dbo].[HasRelationship] CHECK CONSTRAINT [FK_HasRelationship_Copy]
GO
ALTER TABLE [dbo].[HasRelationship]  WITH CHECK ADD  CONSTRAINT [FK_HasRelationship_EmployeeQualification] FOREIGN KEY([EmpID])
REFERENCES [dbo].[EmployeeQualification] ([EmpID])
GO
ALTER TABLE [dbo].[HasRelationship] CHECK CONSTRAINT [FK_HasRelationship_EmployeeQualification]
GO
ALTER TABLE [dbo].[HasRelationship]  WITH CHECK ADD  CONSTRAINT [FK_HasRelationship_Library] FOREIGN KEY([LNo])
REFERENCES [dbo].[Library] ([LNo])
GO
ALTER TABLE [dbo].[HasRelationship] CHECK CONSTRAINT [FK_HasRelationship_Library]
GO
ALTER TABLE [dbo].[Library]  WITH CHECK ADD  CONSTRAINT [FK_Library_Academic] FOREIGN KEY([LNo])
REFERENCES [dbo].[Academic] ([LNo])
GO
ALTER TABLE [dbo].[Library] CHECK CONSTRAINT [FK_Library_Academic]
GO
ALTER TABLE [dbo].[Library]  WITH CHECK ADD  CONSTRAINT [FK_Library_LibraryLocation] FOREIGN KEY([LNo])
REFERENCES [dbo].[LibraryLocation] ([LNo])
GO
ALTER TABLE [dbo].[Library] CHECK CONSTRAINT [FK_Library_LibraryLocation]
GO
ALTER TABLE [dbo].[Library]  WITH CHECK ADD  CONSTRAINT [FK_Library_Public] FOREIGN KEY([LNo])
REFERENCES [dbo].[Public] ([LNo])
GO
ALTER TABLE [dbo].[Library] CHECK CONSTRAINT [FK_Library_Public]
GO
ALTER TABLE [dbo].[Library]  WITH CHECK ADD  CONSTRAINT [FK_Library_Special] FOREIGN KEY([LNo])
REFERENCES [dbo].[Special] ([LNo])
GO
ALTER TABLE [dbo].[Library] CHECK CONSTRAINT [FK_Library_Special]
GO
ALTER TABLE [dbo].[Member]  WITH CHECK ADD  CONSTRAINT [FK_Member_Kindergarten] FOREIGN KEY([IDCode])
REFERENCES [dbo].[Kindergarten] ([IDCode])
GO
ALTER TABLE [dbo].[Member] CHECK CONSTRAINT [FK_Member_Kindergarten]
GO
ALTER TABLE [dbo].[Member]  WITH CHECK ADD  CONSTRAINT [FK_Member_Others] FOREIGN KEY([IDCode])
REFERENCES [dbo].[Others] ([IDCode])
GO
ALTER TABLE [dbo].[Member] CHECK CONSTRAINT [FK_Member_Others]
GO
ALTER TABLE [dbo].[Member]  WITH CHECK ADD  CONSTRAINT [FK_Member_Postgraduate] FOREIGN KEY([IDCode])
REFERENCES [dbo].[Postgraduate] ([IDCode])
GO
ALTER TABLE [dbo].[Member] CHECK CONSTRAINT [FK_Member_Postgraduate]
GO
ALTER TABLE [dbo].[Member]  WITH CHECK ADD  CONSTRAINT [FK_Member_Student] FOREIGN KEY([IDCode])
REFERENCES [dbo].[Student] ([IDCode])
GO
ALTER TABLE [dbo].[Member] CHECK CONSTRAINT [FK_Member_Student]
GO
ALTER TABLE [dbo].[Member]  WITH CHECK ADD  CONSTRAINT [FK_Member_Undergraduate] FOREIGN KEY([IDCode])
REFERENCES [dbo].[Undergraduate] ([IDCode])
GO
ALTER TABLE [dbo].[Member] CHECK CONSTRAINT [FK_Member_Undergraduate]
GO
USE [master]
GO
ALTER DATABASE [LibrarySystem1] SET  READ_WRITE 
GO
