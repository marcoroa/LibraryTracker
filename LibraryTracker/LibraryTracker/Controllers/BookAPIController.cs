using LibraryTracker.DAL;
using LibraryTracker.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Runtime.Serialization;
using System.Web.Http;

namespace LibraryTracker.Controllers
{
    [DataContract]
    public class BookAPIController : ApiController
    {
        private LibraryContext db = new LibraryContext();

        [HttpPost]
        [HttpGet]
        public IEnumerable<Book> GetAllBooks()
        {
            return db.Books.ToList();
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id">Id of the category</param>
        /// <returns></returns>
        [HttpPost]
        [HttpGet]
        public IEnumerable<Book> GetBooksByCategory(string id)
        {
            int categoryId = -1;
            if (int.TryParse(id, out categoryId)) {
                var result = db.Books
                    .Where(x => x.Categories
                        .Where(y => y.CategoryID == categoryId)
                        .FirstOrDefault() != null)
                    .ToList();
                return result;
            }
            return new List<Book>();
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id">Id of the author</param>
        /// <returns></returns>
        [HttpPost]
        [HttpGet]
        public IEnumerable<Book> GetBooksByAuthor(string id)
        {
            int authorId = -1;
            if (int.TryParse(id, out authorId))
            {
                var result = (from books in db.Books
                              where books.AuthorID == authorId
                              select books).ToList();
                return result;
            }
            return new List<Book>();
        }
    }
}