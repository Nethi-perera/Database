USE [LibrarySYS]
GO
/****** Object:  Table [dbo].[undergraduate]    Script Date: 31-Dec-20 09:23:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[undergraduate](
	[idcode] [varchar](50) NOT NULL,
	[nic] [char](10) NOT NULL,
	[university] [varchar](50) NULL,
	[program] [varchar](50) NULL,
 CONSTRAINT [PK_undergraduate] PRIMARY KEY CLUSTERED 
(
	[idcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[undergraduate]  WITH CHECK ADD  CONSTRAINT [FK_undergraduate_member] FOREIGN KEY([idcode])
REFERENCES [dbo].[member] ([idcode])
GO
ALTER TABLE [dbo].[undergraduate] CHECK CONSTRAINT [FK_undergraduate_member]
GO
