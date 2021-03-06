USE [LibrarySYS]
GO
/****** Object:  Table [dbo].[employee]    Script Date: 31-Dec-20 09:23:39 PM ******/
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
