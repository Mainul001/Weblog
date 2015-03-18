using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebBlog_2
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void NewPostButton_Click(object sender, EventArgs e) {
            Response.Redirect("Create.aspx");
        }

        protected void ViewPostButton_Click(object sender, EventArgs e) {
            Response.Redirect("Article.aspx");
        }
    }
}