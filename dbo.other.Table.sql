USE [LibrarySYS]
GO
/****** Object:  Table [dbo].[other]    Script Date: 31-Dec-20 05:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[other](
	[idcode] [varchar](50) NOT NULL,
	[nic] [char](10) NOT NULL,
	[occupation] [varchar](50) NULL,
 CONSTRAINT [PK_other] PRIMARY KEY CLUSTERED 
(
	[idcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[other]  WITH CHECK ADD  CONSTRAINT [FK_other_member] FOREIGN KEY([idcode])
REFERENCES [dbo].[member] ([idcode])
GO
ALTER TABLE [dbo].[other] CHECK CONSTRAINT [FK_other_member]
GO
