using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace shareNotes
{
    public partial class contactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void BtnSend_Click(object sender, EventArgs e)
        {
            mailMgr myMail = new mailMgr();
            myMail.myFrom = txtSenderEmail.Text;
            myMail.mySubject = TxtSubject.Text;
            myMail.myBody = TextMessage.Text;
            myMail.sendEmailViaGmail();
            lbloutput.Text = myMail.sendEmailViaGmail();
            Clear();
        }
        void Clear()
        {
            txtSenderEmail.Text = "";
            TxtSubject.Text = "";
            TextMessage.Text = "";

        }


    }
}