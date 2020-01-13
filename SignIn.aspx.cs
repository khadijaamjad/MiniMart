using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Xml;
using System.Data;

namespace MiniMartWeb
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            XmlReader xr = XmlReader.Create("C:\\Users\\amuni\\Documents\\Visual Studio 2013\\Projects\\MiniMartWeb\\MiniMartWeb\\bin\\SignUp.xml", new XmlReaderSettings());
            DataSet ds = new DataSet();
            ds.ReadXml(xr);
            dgvRecords.DataSource = ds.Tables[0];
            dgvRecords.Visible = true;
            dgvRecords.DataBind();
        }
    }
}