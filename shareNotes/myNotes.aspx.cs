using myClientApp.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Collections;


namespace shareNotes
{
    public partial class myNotes : System.Web.UI.Page

    {
        protected void Page_Load(object sender, EventArgs e)

        {
            if (!IsPostBack)
            {

                gvNotes_SelectedIndexChanged1(sender, e);
            }
           

        }
        

        protected void btnAdd_Click(object sender, EventArgs e)
        {

            ProcessMultiUploads();
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
            clearMsg();
        }

        protected void ProcessMultiUploads()
        {

            int rtn = 0;
            string noteTitle = txtTitle.Text;
            noteTitle = string.IsNullOrEmpty(noteTitle) ? "note" : noteTitle;
            string myPath = Path.Combine(Server.MapPath("~/Uploads"));
            //int uploadIndex = 0;
            string fileName = "";
            if (FileUpload.HasFiles)
            {
                foreach (HttpPostedFile postedFile in FileUpload.PostedFiles)
                {
                    fileName = Path.Combine(Server.MapPath("~/Uploads"),
                     noteTitle + ".pdf");//postedFile.FileName;
                    //uploadIndex = fileName.IndexOf("Uploads");
                    if (File.Exists(fileName))
                        File.Delete(fileName);
                    FileUpload.SaveAs(fileName);
                }
                lblOutput.Text = "Your files has been uploaded Successfully!";
                InsertDocumentsToDb(noteTitle);
            }
        }

        protected void InsertDocumentsToDb(string noteTitle)  // upload doc to db
        {

            foreach (HttpPostedFile postedFile in FileUpload.PostedFiles)
            {
                string filename = Path.GetFileName(noteTitle + ".pdf");
                string floction = "Uploads/";
                string pathStr = System.IO.Path.Combine(floction, filename);

                using (Stream fs = postedFile.InputStream)
                {
                    using (BinaryReader br = new BinaryReader(fs))
                    {
                        string intaccountId = "1";
                        byte[] bytes = br.ReadBytes((Int32)fs.Length);
                        CRUD DocInsert = new CRUD();  // added Nov 2017 
                        string mySql = @"insert into notefile(studentAccountId ,fileData,fileloction,fileName)
                                    values (@studentAccountId ,@fileData,@fileloction,@fileName)";
                        Dictionary<string, Object> p = new Dictionary<string, object>();
                        //p.Add("@TaskId", "get the value ");
                        // added Nov 2017
                        p.Add("@fileName", filename);
                        p.Add("@fileloction", pathStr);
                        p.Add("@fileData", bytes);
                        p.Add("@studentAccountId", int.Parse(intaccountId));
                        DocInsert.InsertUpdateDelete(mySql, p);

                    }
                }
            }

        }


        protected void clearMsg()
        {
            lblOutput.Text = "";
            txtTitle.Text = "";
            TextDelete.Text = "";
        }
        // drid view :
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
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string fileName = "";
            string noteTitle = TextDelete.Text;
            foreach (HttpPostedFile postedFile in FileUpload.PostedFiles)
            {
                fileName = Path.Combine(Server.MapPath("~/Uploads"),
                 noteTitle + ".pdf");

                if (File.Exists(fileName))
                    File.Delete(fileName);
                gvNotes_SelectedIndexChanged1(sender, e);

            }
            DeketeDocumentsFromDb();
            clearMsg();
        }
        protected void DeketeDocumentsFromDb()
        {
            string StrfileName = TextDelete.Text + ".pdf";
            CRUD myCrud = new CRUD();
            string mySql = @"delete notefile where fileName = @fileName";
            Dictionary<string, object> myPara = new Dictionary<string, object>();
            myPara.Add("@fileName", StrfileName);
            int rtn = myCrud.InsertUpdateDelete(mySql, myPara);

        }
    }
}