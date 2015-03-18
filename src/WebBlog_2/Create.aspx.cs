using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Windows.Input;
using System.Web.UI.WebControls;
using System.ComponentModel;
using System.Web.Configuration;
using System.Data.SqlClient;

namespace WebBlog_2
{
    public partial class Create : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //string content = this.htmlEditorTxt.Text;
            //ArticleTempLabel.Text = content;

            NewArticle anArticle = new NewArticle(TitleTextBox.Text, AuthorTextBox.Text, htmlEditorTxt.Text);
            if (SaveArticle(anArticle)) {
                ArticleTempLabel.Text = "Article saved successfully";
                Button1.Text = "Article saved successfully";
            }

            else {
                ArticleTempLabel.Text = "An error occured, please try again";
            }
        }

        private bool SaveArticle(NewArticle anArticle) {
            
            string connectionString = WebConfigurationManager.ConnectionStrings["ArticleConnectionString"].ConnectionString;

            SqlConnection connection = new SqlConnection(connectionString);

            string query = String.Format("INSERT INTO t_article VALUES('{0}','{1}', '{2}', '{3}')", anArticle.Title, anArticle.Body,
                anArticle.Author, anArticle.DateAndTime);

            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            int rowAffected = command.ExecuteNonQuery();
            connection.Close();
            return rowAffected > 0;
        }
    }
}