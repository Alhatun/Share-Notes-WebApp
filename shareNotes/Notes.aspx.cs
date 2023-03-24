using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pro
{
    public partial class Notes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                gvNotes_SelectedIndexChanged1(sender, e);
            }
        }
        protected void gvNotes_SelectedIndexChanged1(object sender, EventArgs e)
        {
            gvNotes.DataSource = GetUploadList();  // new 
            gvNotes.DataBind();
        }
        protected IEnumerable GetUploadList()

        {

            string folder = Server.MapPath("~/Uploads");// get uploaded folder
            string[] files = Directory.GetFiles(folder); // get all files in folder 
            Array.Sort(files);
            foreach (string file in files)
                yield return Path.GetFileName(file);
        }
    }
}