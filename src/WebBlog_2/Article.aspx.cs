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
    public partial class Article : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetArticle();
        }

        private void GetArticle() {
            string connectionString = WebConfigurationManager.ConnectionStrings["ArticleConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);

            string query = "SELECT * FROM t_article ORDER BY create_date DESC SET ROWCOUNT 5";

            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();

            SqlDataReader reader = command.ExecuteReader();

            List<NewArticle> articles = new List<NewArticle>();

            while (reader.Read()) {
                NewArticle anArticle = new NewArticle();
                anArticle.Title = reader["title"].ToString();
                anArticle.Author = reader["author"].ToString();
                anArticle.Body = reader["body"].ToString();
                anArticle.DateAndTime = (DateTime)reader["create_date"];
                articles.Add(anArticle);
            }

            reader.Close();
            connection.Close();

            this.FirstArticleTitle.Text = articles[0].Title;
            this.FirstArticleBody.Text = articles[0].Body;

            this.SecondArticleTitle.Text = articles[1].Title;
            this.SecondArticleBody.Text = articles[1].Body;

            this.ThirdArticleTitle.Text = articles[2].Title;
            this.ThirdArticleBody.Text = articles[2].Body;

            this.FourthArticleTitle.Text = articles[3].Title;
            this.FourthArticleBody.Text = articles[3].Body;

            this.FifthArticleTitle.Text = articles[4].Title;
            this.FifthArticleBody.Text = articles[4].Body;
        }
    }
}