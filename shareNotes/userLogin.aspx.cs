using myClientApp.App_Code;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace shareNotes
{
    public partial class userLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            lblErrorMessege.Visible = false;

        }
        SqlConnection con = new SqlConnection(CRUD.conStr);

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            con.Open();
            string query = "SELECT COUNT(1) FROM studentAccount WHERE username=@username AND password=@password";
            SqlCommand sqlCmd = new SqlCommand(query, con);
            sqlCmd.Parameters.AddWithValue("@username", TxtUsername.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@password", Txtpassword.Text.Trim());
            int count = Convert.ToInt32(sqlCmd.ExecuteScalar());
            if (count == 1)
            {
                Session["username"] = TxtUsername.Text.Trim();
                Session["password"] = Txtpassword.Text.Trim();
                Response.Redirect("Notes.aspx");
            }

            else { lblErrorMessege.Visible = true; }
        }
    }
}