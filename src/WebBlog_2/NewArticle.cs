using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebBlog_2 {
    public class NewArticle {
        public string Title { get; set; }
        public string Author { get; set; }
        public string Body { get; set; }
        public DateTime DateAndTime { get; set; }

        public NewArticle(string title, string author, string body) {
            this.Title = title;
            this.Author = author;
            this.Body = body;
            this.DateAndTime = DateTime.Now;
        }
    }
}