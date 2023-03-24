using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pro
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LBtnMyNotes_Click(object sender, EventArgs e)
        {
            Response.Redirect("myNotes.aspx");
        }

        protected void LBtnUserProfile_Click(object sender, EventArgs e)
        {
            Response.Redirect("userProfile.aspx");
        }

        protected void LBtnNotes_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("Notes.aspx");

        }

        protected void LBtnContactUs_Click(object sender, EventArgs e)
        {
            Response.Redirect("contactUs.aspx");
        }

        protected void LBtnUserLogin_Click(object sender, EventArgs e)
        {
           // Response.Redirect("userLogin.aspx");
            Response.Redirect("contactUs.aspx");
        }

        protected void LBtnLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("userLogin.aspx");
        }
    }
}