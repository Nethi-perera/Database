USE [LibrarySYS]
GO
/****** Object:  Table [dbo].[librarylocation]    Script Date: 31-Dec-20 05:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[librarylocation](
	[lno] [varchar](50) NOT NULL,
	[location] [varchar](100) NOT NULL,
 CONSTRAINT [PK_librarylocation] PRIMARY KEY CLUSTERED 
(
	[lno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[librarylocation]  WITH CHECK ADD  CONSTRAINT [FK_librarylocation_library] FOREIGN KEY([lno])
REFERENCES [dbo].[library] ([lno])
GO
ALTER TABLE [dbo].[librarylocation] CHECK CONSTRAINT [FK_librarylocation_library]
GO
