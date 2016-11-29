using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;

namespace LibraryTracker.Models
{
    public class Book
    {
        public int BookID { get; set; }
        public string Title { get; set; }
        [DisplayName("Publishing Date")]
        public DateTime PublishDate { get; set; }
        public int AuthorID { get; set; }

        public virtual Author Author { get; set; }
        public virtual ICollection<Category> Categories { get; set; }
    }
}