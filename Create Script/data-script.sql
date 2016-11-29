--Author Table 
INSERT INTO [dbo].[Author] ([FirstName], [LastName], [BirthDate]) VALUES ('Oscar','Wilde','Oct 16 1854 12:00AM')
INSERT INTO [dbo].[Author] ([FirstName], [LastName], [BirthDate]) VALUES ('William','Shakespeare','Apr  1 1764 12:00AM')
INSERT INTO [dbo].[Author] ([FirstName], [LastName], [BirthDate]) VALUES ('Miguel','De Cervantes','Sep 29 1757 12:00AM')
INSERT INTO [dbo].[Author] ([FirstName], [LastName], [BirthDate]) VALUES ('Manuel','Caballero','May 12 1931 12:00AM')

--Book Table
INSERT INTO [dbo].[Book] ([Title], [PublishDate], [AuthorID]) VALUES ('The picture of Dorian Gray','Jul  1 1890 12:00AM', 1)
INSERT INTO [dbo].[Book] ([Title], [PublishDate], [AuthorID]) VALUES ('Salome','Jan  1 1894 12:00AM', 1)
INSERT INTO [dbo].[Book] ([Title], [PublishDate], [AuthorID]) VALUES ('Romeo and Juliet','Jan  1 1791 12:00AM', 2)
INSERT INTO [dbo].[Book] ([Title], [PublishDate], [AuthorID]) VALUES ('Julius Caesar','Jan  1 1799 12:00AM', 2)
INSERT INTO [dbo].[Book] ([Title], [PublishDate], [AuthorID]) VALUES ('Othello','Jan  1 1803 12:00AM', 2)
INSERT INTO [dbo].[Book] ([Title], [PublishDate], [AuthorID]) VALUES ('Don Quijote de la Mancha','Jan  1 1805 12:00AM', 4)
INSERT INTO [dbo].[Book] ([Title], [PublishDate], [AuthorID]) VALUES ('La Galatea','Jan  1 1785 12:00AM', 4)
INSERT INTO [dbo].[Book] ([Title], [PublishDate], [AuthorID]) VALUES ('Los trabajos de Persiles y Sigismunda','Apr 19 1816 12:00AM', 4)
INSERT INTO [dbo].[Book] ([Title], [PublishDate], [AuthorID]) VALUES ('Manual de Infractores','Jun  1 2005 12:00AM', 5)
INSERT INTO [dbo].[Book] ([Title], [PublishDate], [AuthorID]) VALUES ('Agata ojo de Gato','Jan  1 1974 12:00AM', 5)

--Category Table
INSERT INTO [dbo].[Category] ([Name]) VALUES ('Comedy')
INSERT INTO [dbo].[Category] ([Name]) VALUES ('Drama')
INSERT INTO [dbo].[Category] ([Name]) VALUES ('Tragedy')
INSERT INTO [dbo].[Category] ([Name]) VALUES ('Action')
INSERT INTO [dbo].[Category] ([Name]) VALUES ('Suspense')
INSERT INTO [dbo].[Category] ([Name]) VALUES ('Sci-Fi')
INSERT INTO [dbo].[Category] ([Name]) VALUES ('Romance')
INSERT INTO [dbo].[Category] ([Name]) VALUES ('Romantic Comedy')

--CategoryBook Table
INSERT INTO [dbo].[CategoryBook] ([Category_CategoryID],[Book_BookID]) VALUES (2,3)
INSERT INTO [dbo].[CategoryBook] ([Category_CategoryID],[Book_BookID]) VALUES (6,3)
INSERT INTO [dbo].[CategoryBook] ([Category_CategoryID],[Book_BookID]) VALUES (2,4)
INSERT INTO [dbo].[CategoryBook] ([Category_CategoryID],[Book_BookID]) VALUES (3,4)