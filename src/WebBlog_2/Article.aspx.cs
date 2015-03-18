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
        List<NewArticle> articles;

        protected void Page_Load(object sender, EventArgs e)
        {
            try {
                GetArticle();
            } catch (Exception ex) {
                this.FirstArticleBody.Text = "Sorry an error occured";
            }
        }

        private void GetArticle() {
            string connectionString = WebConfigurationManager.ConnectionStrings["ArticleConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);

            string query = "SELECT * FROM t_article ORDER BY create_date DESC SET ROWCOUNT 5";

            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();

            SqlDataReader reader = command.ExecuteReader();

            articles = new List<NewArticle>();

            while (reader.Read()) {
                NewArticle anArticle = new NewArticle();
                anArticle.Title = reader["title"].ToString();
                anArticle.Author = reader["author"].ToString();
                anArticle.Body = reader["body"].ToString();
                anArticle.Id = int.Parse(reader["id"].ToString());
                anArticle.DateAndTime = (DateTime)reader["create_date"];
                articles.Add(anArticle);
            }

            reader.Close();
            connection.Close();

            this.FirstArticleTitle.Text = articles[0].Title;
            this.FirstArticleAuthor.Text = "Written by " + articles[0].Author + ",  At " + articles[0].DateAndTime.ToString();
            this.FirstArticleBody.Text = TruncateLongString(articles[0].Body, 250) + "....";

            this.SecondArticleTitle.Text = articles[1].Title;
            this.SecondArticleAuthor.Text = "Written by " + articles[1].Author + ",  At " + articles[1].DateAndTime.ToString();
            this.SecondArticleBody.Text = TruncateLongString(articles[1].Body, 250) + "....";

            this.ThirdArticleTitle.Text = articles[2].Title;
            this.ThirdArticleAuthor.Text = "Written by " + articles[2].Author + ",  At " + articles[2].DateAndTime.ToString();
            this.ThirdArticleBody.Text = TruncateLongString(articles[2].Body, 250) + "....";

            this.FourthArticleTitle.Text = articles[3].Title;
            this.FourthArticleAuthor.Text = "Written by " + articles[3].Author + ",  At " + articles[3].DateAndTime.ToString();
            this.FourthArticleBody.Text = TruncateLongString(articles[3].Body, 250) + "....";

            this.FifthArticleTitle.Text = articles[4].Title;
            this.FifthArticleAuthor.Text = "Written by " + articles[4].Author + ",  At " + articles[4].DateAndTime.ToString();
            this.FifthArticleBody.Text = TruncateLongString(articles[4].Body, 250) + "....";
        }


        public static string TruncateLongString(string str, int maxLength) {
            return str.Substring(0, Math.Min(str.Length, maxLength));
        }

        protected void FirstArticleTitle_Click(object sender, EventArgs e) {
            Session["Article"] = articles[0];
            Response.Redirect("Details.aspx");
        }

        protected void SecondArticleTitle_Click(object sender, EventArgs e) {
            Session["Article"] = articles[1];
            Response.Redirect("Details.aspx");
        }

        protected void ThirdArticleTitle_Click(object sender, EventArgs e) {
            Session["Article"] = articles[2];
            Response.Redirect("Details.aspx");
        }

        protected void FourthArticleTitle_Click(object sender, EventArgs e) {
            Session["Article"] = articles[3];
            Response.Redirect("Details.aspx");
        }

        protected void FifthArticleTitle_Click(object sender, EventArgs e) {
            Session["Article"] = articles[4];
            Response.Redirect("Details.aspx");
        }
    }
}