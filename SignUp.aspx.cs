using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.IO;

namespace MiniMartWeb
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSign_Click(object sender, EventArgs e)
        {
           
        }
        public bool WriteToFile(string n,string em,string d,string p, string c,string r)
    {
            bool x = false;
            try
            {
                if (!File.Exists("C:\\Users\\amuni\\Documents\\Visual Studio 2013\\Projects\\MiniMartWeb\\MiniMartWeb\\bin\\SignUp.xml")) 
                {
                    //File.Create("SignUp.xml");
                    XmlTextWriter w = new XmlTextWriter("C:\\Users\\amuni\\Documents\\Visual Studio 2013\\Projects\\MiniMartWeb\\MiniMartWeb\\bin\\SignUp.xml", System.Text.Encoding.UTF8);
                    w.WriteStartDocument();
                    w.WriteStartElement("AccountInfo");
                    w.WriteStartElement("User");
                    w.WriteElementString("Name", n);
                    w.WriteElementString("Email", em);
                    w.WriteElementString("Domain", d);
                    w.WriteElementString("City", c);
                    w.WriteElementString("Region", r);
                    w.WriteElementString("Password", p);
                    w.WriteEndElement();
                    w.WriteEndElement();
                    w.WriteEndDocument();
                    w.Flush();
                    w.Close();
                }
                else
                {
                    XmlDocument xd = new XmlDocument();
                    xd.Load("C:\\Users\\amuni\\Documents\\Visual Studio 2013\\Projects\\MiniMartWeb\\MiniMartWeb\\bin\\SignUp.xml");
                    XmlElement subroot = xd.CreateElement("User");
                    XmlElement ren = xd.CreateElement("Name");
                    XmlText xt2 = xd.CreateTextNode(n);
                    ren.AppendChild(xt2);
                    subroot.AppendChild(ren);
                    xd.DocumentElement.AppendChild(subroot);
                    XmlElement fn=xd.CreateElement("Email");
                    XmlText xt = xd.CreateTextNode(em);
                    fn.AppendChild(xt);
                    subroot.AppendChild(fn);
                    xd.DocumentElement.AppendChild(subroot);
                    XmlElement ln = xd.CreateElement("Domain");
                    XmlText xt1 = xd.CreateTextNode(d);
                    ln.AppendChild(xt1);
                    subroot.AppendChild(ln);
                    xd.DocumentElement.AppendChild(subroot);
                    XmlElement ph = xd.CreateElement("City");
                    XmlText xt3 = xd.CreateTextNode(c);
                    ph.AppendChild(xt3);
                    subroot.AppendChild(ph);
                    xd.DocumentElement.AppendChild(subroot);
                    XmlElement cn = xd.CreateElement("Region");
                    XmlText xt4 = xd.CreateTextNode(r);
                    cn.AppendChild(xt4);
                    subroot.AppendChild(cn);
                    xd.DocumentElement.AppendChild(subroot);
                    XmlElement iy = xd.CreateElement("Password");
                    XmlText xt5 = xd.CreateTextNode(p);
                    iy.AppendChild(xt5);
                    subroot.AppendChild(iy);
                    xd.DocumentElement.AppendChild(subroot);
                    xd.Save("C:\\Users\\amuni\\Documents\\Visual Studio 2013\\Projects\\MiniMartWeb\\MiniMartWeb\\bin\\SignUp.xml");
                }
            
            x = true;
            }
            catch (Exception)
            {
                //("Error writing student data to file");
            }
            
            return x;
        }

        protected void btnSign_Click1(object sender, EventArgs e)
        {
            string n, em, d, p, c, r;
            n = name.Text;
            em = email1.Text;
            d = email.Text;
            p = password.Text;
            c = city.Text;
            r = region.Text;
            bool su = WriteToFile(n, em, d, p, c, r);
        }

    }
    }