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
    public partial class userProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                populateForm_Click();
            }
        }
        protected void populateForm_Click()
        {
            string intaccountId = "1";
            string mySql = @"  select username , password from studentAccount
                    where studentAccountId = 1";
            Dictionary<string, object> myPara = new Dictionary<string, object>();
            myPara.Add("@studentAccountId", int.Parse(intaccountId));
            CRUD myCrud = new CRUD();
            SqlDataReader dr = myCrud.getDrPassSql(mySql, myPara);
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    String username = dr["username"].ToString();
                    String password = dr["password"].ToString();
                   
                    TxtUsername.Text = username;
                    Txtpassword.Text = password;
                   
                }
            }
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            
            string intaccountId = "1";
            string strUsername = TxtUsername.Text;
            string strPassword = Txtpassword.Text;
           
            string mySql = @"update studentAccount 
                        set username =@username,password = @password
                        where studentAccountId= 1";
            Dictionary<string, object> myPara = new Dictionary<string, object>();
            myPara.Add("@studentAccountId", int.Parse(intaccountId));
            myPara.Add("@username", strUsername);
            myPara.Add("@password", strPassword);
            CRUD myCrud = new CRUD();
            int rtn = myCrud.InsertUpdateDelete(mySql, myPara);
            populateForm_Click();
        }
    }
}