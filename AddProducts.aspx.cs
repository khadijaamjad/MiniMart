using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Xml;

namespace MiniMartWeb
{
    public partial class AddProducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //protected void btnSign_Click(object sender, EventArgs e)
        //{

        //}

        protected void btnView_Click(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string n,c;
            int q,p;
            n=name.Text;
            c=company.Text;
            q=Convert.ToInt32(qty.Text);
            p=Convert.ToInt32(pid.Text);
            bool pro=ProdToXML(n,c,q,p);
        }
        public bool ProdToXML(string n, string c, int q, int p)
        {
            bool x = false;
            try
            {
                if (!File.Exists("C:\\Users\\amuni\\Documents\\Visual Studio 2013\\Projects\\MiniMartWeb\\MiniMartWeb\\bin\\Products.xml")) 
                {
    
                    XmlTextWriter w = new XmlTextWriter("C:\\Users\\amuni\\Documents\\Visual Studio 2013\\Projects\\MiniMartWeb\\MiniMartWeb\\bin\\Products.xml", System.Text.Encoding.UTF8);
                    w.WriteStartDocument();
                    w.WriteStartElement("AvailableProducts");
                    w.WriteStartElement("Product");
                    w.WriteElementString("PID", Convert.ToString(p));
                    w.WriteElementString("Name", n);
                    w.WriteElementString("Qty", Convert.ToString(q));
                    w.WriteElementString("Company", c);
                    w.WriteEndElement();
                    w.WriteEndElement();
                    w.WriteEndDocument();
                    w.Flush();
                    w.Close();
                }
                else
                {
                    XmlDocument xd = new XmlDocument();
                    xd.Load("C:\\Users\\amuni\\Documents\\Visual Studio 2013\\Projects\\MiniMartWeb\\MiniMartWeb\\bin\\Products.xml");
                    XmlElement subroot = xd.CreateElement("Product");
                    XmlElement ren = xd.CreateElement("PID");
                    XmlText xt2 = xd.CreateTextNode(Convert.ToString(p));
                    ren.AppendChild(xt2);
                    subroot.AppendChild(ren);
                    xd.DocumentElement.AppendChild(subroot);
                    XmlElement fn=xd.CreateElement("Name");
                    XmlText xt = xd.CreateTextNode(n);
                    fn.AppendChild(xt);
                    subroot.AppendChild(fn);
                    xd.DocumentElement.AppendChild(subroot);
                    XmlElement ln = xd.CreateElement("Qty");
                    XmlText xt1 = xd.CreateTextNode(Convert.ToString(q));
                    ln.AppendChild(xt1);
                    subroot.AppendChild(ln);
                    xd.DocumentElement.AppendChild(subroot);
                    XmlElement ph = xd.CreateElement("Company");
                    XmlText xt3 = xd.CreateTextNode(c);
                    xd.Save("C:\\Users\\amuni\\Documents\\Visual Studio 2013\\Projects\\MiniMartWeb\\MiniMartWeb\\bin\\Products.xml");
                }
            
            x = true;
            }
            catch (Exception)
            {
                //("Error writing  data to file");
            }
            
            return x;
        }
        }
    }
