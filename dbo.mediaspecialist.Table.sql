USE [LibrarySYS]
GO
/****** Object:  Table [dbo].[mediaspecialist]    Script Date: 31-Dec-20 05:04:28 PM ******/
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
ALTER TABLE [dbo].[mediaspecialist]  WITH CHECK ADD  CONSTRAINT [FK_mediaspecialist_employee] FOREIGN KEY([empid])
REFERENCES [dbo].[employee] ([empid])
GO
ALTER TABLE [dbo].[mediaspecialist] CHECK CONSTRAINT [FK_mediaspecialist_employee]
GO
