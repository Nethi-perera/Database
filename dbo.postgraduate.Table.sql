USE [LibrarySYS]
GO
/****** Object:  Table [dbo].[postgraduate]    Script Date: 31-Dec-20 05:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[postgraduate](
	[idcode] [varchar](50) NOT NULL,
	[nic] [char](10) NOT NULL,
	[university] [varchar](50) NULL,
	[researchtype] [varchar](50) NULL,
 CONSTRAINT [PK_postgraduate] PRIMARY KEY CLUSTERED 
(
	[idcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[postgraduate]  WITH CHECK ADD  CONSTRAINT [FK_postgraduate_member] FOREIGN KEY([idcode])
REFERENCES [dbo].[member] ([idcode])
GO
ALTER TABLE [dbo].[postgraduate] CHECK CONSTRAINT [FK_postgraduate_member]
GO
