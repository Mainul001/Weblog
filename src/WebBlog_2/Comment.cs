using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebBlog_2 {
    public class Comment {
        public int Id { get; set; }
        public string Comment_By { get; set; }
        public string Comment_Body { get; set; }
        public DateTime Comment_Date { get; set; }
        public int Article_Id { get; set; }
    }
}