using LibraryTracker.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace LibraryTracker.DAL
{
    public class LibraryInitializer : System.Data.Entity.DropCreateDatabaseIfModelChanges<LibraryContext>
    {
        protected override void Seed(LibraryContext context)
        {
            var authors = new List<Author>
            {
            new Author{AuthorID = 1, FirstName="Oscar", LastName= "Wilde", BirthDate = DateTime.Parse("1854-10-16")},
            new Author{AuthorID = 2, FirstName="William", LastName= "Shakespeare", BirthDate = DateTime.Parse("1764-04-01")},
            new Author{AuthorID = 3, FirstName="Miguel", LastName= "De Cervantes", BirthDate = DateTime.Parse("1757-09-29")}
            };
            authors.ForEach(s => context.Authors.Add(s));
            context.SaveChanges();
            var books = new List<Book>
            {
            new Book{BookID = 1, Title="The picture of Dorian Gray", PublishDate=DateTime.Parse("1890-07-01"), AuthorID = 1},
            new Book{BookID = 2, Title="Salome", PublishDate=DateTime.Parse("1894-01-01"), AuthorID = 1},
            new Book{BookID = 3, Title="Romeo and Juliet", PublishDate=DateTime.Parse("1591-01-01"), AuthorID = 2},
            new Book{BookID = 4, Title="Julius Caesar", PublishDate=DateTime.Parse("1599-01-01"), AuthorID = 2},
            new Book{BookID = 5, Title="Othello", PublishDate=DateTime.Parse("1603-01-01"), AuthorID = 2},
            new Book{BookID = 6, Title="Don Quijote de la Mancha", PublishDate=DateTime.Parse("1605-01-01"), AuthorID = 3},
            new Book{BookID = 7, Title="La Galatea", PublishDate=DateTime.Parse("1585-01-01"), AuthorID = 3},
            new Book{BookID = 8, Title="Los trabajos de Persiles y Sigismunda", PublishDate=DateTime.Parse("1616-04-19"), AuthorID = 3},
            };

            books.ForEach(s => context.Books.Add(s));
            context.SaveChanges();
            var categories = new List<Category>
            {
            new Category{CategoryID = 1, Name = "Comedy"},
            new Category{CategoryID = 2, Name = "Drama"},
            new Category{CategoryID = 3, Name = "Tragedy"},
            new Category{CategoryID = 4, Name = "Action"},
            new Category{CategoryID = 5, Name = "Suspense"},
            new Category{CategoryID = 6, Name = "Sci-Fi"},
            new Category{CategoryID = 7, Name = "Romance"}
            };
            categories.ForEach(s => context.Categories.Add(s));
            context.SaveChanges();
        }
    }
}