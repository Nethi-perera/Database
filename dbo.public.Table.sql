USE [LibrarySYS]
GO
/****** Object:  Table [dbo].[public]    Script Date: 31-Dec-20 05:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[public](
	[lno] [varchar](50) NOT NULL,
	[details] [varchar](50) NULL,
 CONSTRAINT [PK_public] PRIMARY KEY CLUSTERED 
(
	[lno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[public]  WITH CHECK ADD  CONSTRAINT [FK_public_library] FOREIGN KEY([lno])
REFERENCES [dbo].[library] ([lno])
GO
ALTER TABLE [dbo].[public] CHECK CONSTRAINT [FK_public_library]
GO
