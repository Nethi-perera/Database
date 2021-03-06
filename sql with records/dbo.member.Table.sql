USE [LibrarySYS]
GO
/****** Object:  Table [dbo].[member]    Script Date: 31-Dec-20 09:23:39 PM ******/
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
