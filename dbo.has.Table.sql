USE [LibrarySYS]
GO
/****** Object:  Table [dbo].[has]    Script Date: 31-Dec-20 05:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[has](
	[lno] [varchar](50) NOT NULL,
	[empid] [varchar](50) NOT NULL,
	[cno] [varchar](50) NOT NULL,
	[bisbnno] [varchar](50) NOT NULL,
 CONSTRAINT [PK_has] PRIMARY KEY CLUSTERED 
(
	[lno] ASC,
	[empid] ASC,
	[cno] ASC,
	[bisbnno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[has]  WITH CHECK ADD  CONSTRAINT [FK_has_has] FOREIGN KEY([lno], [empid], [cno], [bisbnno])
REFERENCES [dbo].[has] ([lno], [empid], [cno], [bisbnno])
GO
ALTER TABLE [dbo].[has] CHECK CONSTRAINT [FK_has_has]
GO
