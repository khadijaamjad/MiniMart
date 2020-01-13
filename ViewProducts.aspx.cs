using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Data;

namespace MiniMartWeb
{
    public partial class ViewProducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //protected void btnSignIn_Click(object sender, EventArgs e)
        //{

        //}

        protected void btnShowData_Click(object sender, EventArgs e)
        {
            XmlReader xrs = XmlReader.Create("C:\\Users\\amuni\\Documents\\Visual Studio 2013\\Projects\\MiniMartWeb\\MiniMartWeb\\bin\\Products.xml", new XmlReaderSettings());
            DataSet dsp = new DataSet();
            dsp.ReadXml(xrs);
            dgvRecords.DataSource = dsp.Tables[0];
            dgvRecords.DataBind();
        }
    }
}