USE [LibrarySYS]
GO
/****** Object:  Table [dbo].[borrow]    Script Date: 31-Dec-20 09:23:39 PM ******/
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
