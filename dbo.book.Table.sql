USE [LibrarySYS]
GO
/****** Object:  Table [dbo].[book]    Script Date: 31-Dec-20 05:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[book](
	[bisbnno] [varchar](50) NOT NULL,
	[name] [varchar](80) NULL,
	[author] [varchar](80) NULL,
	[price] [numeric](5, 3) NULL,
	[title] [nchar](10) NULL,
	[year] [date] NULL,
	[availabilty] [bit] NULL,
	[publisherid] [varchar](50) NULL,
 CONSTRAINT [PK_book] PRIMARY KEY CLUSTERED 
(
	[bisbnno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[book]  WITH CHECK ADD  CONSTRAINT [FK_book_publisher] FOREIGN KEY([bisbnno])
REFERENCES [dbo].[publisher] ([publisherid])
GO
ALTER TABLE [dbo].[book] CHECK CONSTRAINT [FK_book_publisher]
GO
