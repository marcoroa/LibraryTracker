using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;

namespace LibraryTracker.Models
{
    public class Author
    {
        public int AuthorID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        [DisplayName("Author's Name")]
        public string AuthorName { get { return this.FirstName + " " + this.LastName; } }

        public DateTime BirthDate { get; set; }

        public virtual ICollection<Book> Books { get; set; }
    }
}