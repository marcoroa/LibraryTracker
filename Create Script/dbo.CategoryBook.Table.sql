USE [LibraryTracker]
GO
/****** Object:  Table [dbo].[CategoryBook]    Script Date: 11/28/2016 10:59:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryBook](
	[Category_CategoryID] [int] NOT NULL,
	[Book_BookID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.CategoryBook] PRIMARY KEY CLUSTERED 
(
	[Category_CategoryID] ASC,
	[Book_BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_Book_BookID]    Script Date: 11/28/2016 10:59:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_Book_BookID] ON [dbo].[CategoryBook]
(
	[Book_BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Category_CategoryID]    Script Date: 11/28/2016 10:59:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_Category_CategoryID] ON [dbo].[CategoryBook]
(
	[Category_CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CategoryBook]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CategoryBook_dbo.Book_Book_BookID] FOREIGN KEY([Book_BookID])
REFERENCES [dbo].[Book] ([BookID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CategoryBook] CHECK CONSTRAINT [FK_dbo.CategoryBook_dbo.Book_Book_BookID]
GO
ALTER TABLE [dbo].[CategoryBook]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CategoryBook_dbo.Category_Category_CategoryID] FOREIGN KEY([Category_CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CategoryBook] CHECK CONSTRAINT [FK_dbo.CategoryBook_dbo.Category_Category_CategoryID]
GO
