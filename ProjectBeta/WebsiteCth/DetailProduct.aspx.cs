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
    public partial class DetailProduct : System.Web.UI.Page
    {
        string connStr = ConfigurationManager.ConnectionStrings["myCon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
                Response.Redirect("Login.aspx");
            if (!IsPostBack)
            {
                DisplayRecord();
            }  
        }
        public DataTable DisplayRecord()
        {
            SqlDataAdapter Adp = new SqlDataAdapter("select * from Product", connStr);
            DataTable Dt = new DataTable();
            Adp.Fill(Dt);
            grid1.DataSource = Dt;
            grid1.DataBind();
            return Dt;
        }
        protected void OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            GridViewRow row = grid1.Rows[e.NewEditIndex];
            int NIK = Convert.ToInt32(grid1.DataKeys[e.NewEditIndex].Values[0]);         
            Response.Redirect("UpdateProduct.aspx?ID="+NIK);
        }
   
        protected void grid1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = grid1.SelectedRow;      
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Login.aspx");
        }

    }
}