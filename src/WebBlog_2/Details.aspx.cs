using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

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

        protected void CommentButton_Click(object sender, EventArgs e) {
            SaveComment();
        }

        private bool SaveComment() {
            string connectionString = WebConfigurationManager.ConnectionStrings["ArticleConnectionString"].ConnectionString;

            SqlConnection connection = new SqlConnection(connectionString);
            string query = "INSERT INTO t_comment VALUES( @commentby, @comment, @commentdate, @articleid)";

            SqlCommand command = new SqlCommand(query, connection);

            command.Parameters.AddWithValue("@commentby", NameTextBox.Text);
            command.Parameters.AddWithValue("@comment", CommentTextBox.Text);
            command.Parameters.AddWithValue("@commentdate", DateTime.Now);
            command.Parameters.AddWithValue("@articleid", this.anArticle.Id);

            connection.Open();
            int rowAffected = command.ExecuteNonQuery();
            connection.Close();
            return rowAffected > 0;
        }
    }
}