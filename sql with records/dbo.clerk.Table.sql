USE [LibrarySYS]
GO
/****** Object:  Table [dbo].[clerk]    Script Date: 31-Dec-20 09:23:39 PM ******/
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
ALTER TABLE [dbo].[clerk]  WITH CHECK ADD  CONSTRAINT [FK_clerk_employee] FOREIGN KEY([empid])
REFERENCES [dbo].[employee] ([empid])
GO
ALTER TABLE [dbo].[clerk] CHECK CONSTRAINT [FK_clerk_employee]
GO
