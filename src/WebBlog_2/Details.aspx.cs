using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebBlog_2
{
    public partial class Details : System.Web.UI.Page
    {
        NewArticle anArticle;
        protected void Page_Load(object sender, EventArgs e)
        {
            try {

                if (Session["Article"] != null) {
                    anArticle = (NewArticle)Session["Article"];
                }


                this.Title.Text = anArticle.Title;
                this.Author.Text = "By " + anArticle.Author;
                this.Date.Text = anArticle.DateAndTime.ToString();
                this.Body.Text = anArticle.Body;

            } catch (Exception ex) {
                this.Title.Text = "Sorry an error occured";
            }
        }
    }
}