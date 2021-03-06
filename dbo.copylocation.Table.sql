USE [LibrarySYS]
GO
/****** Object:  Table [dbo].[copylocation]    Script Date: 31-Dec-20 05:04:28 PM ******/
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
ALTER TABLE [dbo].[copylocation]  WITH CHECK ADD  CONSTRAINT [FK_copylocation_copy] FOREIGN KEY([cno])
REFERENCES [dbo].[copy] ([cno])
GO
ALTER TABLE [dbo].[copylocation] CHECK CONSTRAINT [FK_copylocation_copy]
GO
