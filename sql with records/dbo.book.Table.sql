USE [LibrarySYS]
GO
/****** Object:  Table [dbo].[book]    Script Date: 31-Dec-20 09:23:39 PM ******/
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
