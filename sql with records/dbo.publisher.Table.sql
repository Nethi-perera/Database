USE [LibrarySYS]
GO
/****** Object:  Table [dbo].[publisher]    Script Date: 31-Dec-20 09:23:39 PM ******/
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
