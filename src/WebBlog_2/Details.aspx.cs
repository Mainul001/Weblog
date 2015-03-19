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
        List<Comment> comments;
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

            //List<string> mylist = new List<string>() { "stealthy", "ninja", "panda" };
            //CommentList.DataSource = mylist;
            //CommentList.DataBind();

            ShowComments();
        }

        protected void CommentButton_Click(object sender, EventArgs e) {
            if (SaveComment()) {
                SuccessLabel.Text = "Comment added successfully";
                Response.Redirect("Details.aspx");
            }

            else {
                SuccessLabel.Text = "Sorry, an error occured";
            }
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

        private void ShowComments() {

            GetCommentFromDatabase();

            foreach (Comment c in comments) {
                TableRow tRow = new TableRow();
                CommentTable.Rows.Add(tRow);
                TableCell tCell = new TableCell();
                tRow.Cells.Add(tCell);
                tCell.Text = c.Comment_By + " on " + c.Comment_Date.ToString() + " wrote:";
                TableRow anothertRow = new TableRow();
                CommentTable.Rows.Add(anothertRow);
                TableCell anothertCell = new TableCell();
                anothertRow.Cells.Add(anothertCell);
                anothertCell.Text = "<p class = \"lead\">" + c.Comment_Body + "</p>";
            }
        }

        private void GetCommentFromDatabase() {
            string connectionString = WebConfigurationManager.ConnectionStrings["ArticleConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);

            string query = "SELECT * FROM t_comment WHERE article_id = @articleid";

            SqlCommand command = new SqlCommand(query, connection);
            
            command.Parameters.AddWithValue("@articleid", anArticle.Id);

            connection.Open();

            SqlDataReader reader = command.ExecuteReader();

            comments = new List<Comment>();

            while (reader.Read()) {
                Comment c = new Comment();
                c.Id = int.Parse(reader["id"].ToString());
                c.Comment_By = reader["comment_by"].ToString();
                c.Comment_Body = reader["comment"].ToString();
                c.Comment_Date = (DateTime) reader["comment_date"];
                comments.Add(c);
            }

            reader.Close();
            connection.Close();
        }
    }
}