using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace WebsiteCth
{
    public partial class Login : System.Web.UI.Page
    {
        string connStr = ConfigurationManager.ConnectionStrings["myCon"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection sqlconn = new SqlConnection(connStr);
            sqlconn.Open();
            DataTable dt = new DataTable();

            SqlCommand myCommand = new SqlCommand("select * from Login where UserID = @UserID and Passwd=@Passwd", sqlconn);
            SqlDataAdapter sda = new SqlDataAdapter(myCommand);
            myCommand.Parameters.Add(new SqlParameter("@UserID", SqlDbType.VarChar, 25));
            myCommand.Parameters.Add(new SqlParameter("@Passwd", SqlDbType.VarChar, 25));

            myCommand.Parameters["@UserID"].Value = TextBox1.Text;
            myCommand.Parameters["@Passwd"].Value = TextBox2.Text;

            sda.Fill(dt);
            int i = myCommand.ExecuteNonQuery();
            if (dt.Rows.Count > 0)
            {
                Session["UserID"] = TextBox1.Text;
                Response.Redirect("Product.aspx");
                Session.RemoveAll();
            }
            else
            {
                TextBox1.Text = "";
                Response.Write("<script>alert('User Name or Password Incorrect')</script>");
            }
            sqlconn.Close();
         }
    }
}