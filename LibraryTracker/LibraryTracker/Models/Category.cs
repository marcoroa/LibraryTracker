﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LibraryTracker.Models
{
    public class Category
    {
        public int CategoryID { get; set; }
        public string Name { get; set; }

        public virtual ICollection<Book> Books { get; set; }
    }
}