<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="MiniMartWeb.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
   <head runat="server">
    <meta charset="utf-8" />
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.3/jquery-ui.min.js"> </script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="StyleSheet1.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <header><h1> Khareedari.pk</h1></header><br /> 
     <div>
<ul>
        <li><a href="Mainpage.aspx">Home</a></li>
        <li><a href="SignUp.aspx">SignUp</a>          </li>
        <li><a href="SignIn.aspx" class="active">View Account</a>           </li>
        <li><a href="AddProducts.aspx">Add Product</a>            </li>
           <li><a href="ViewProducts.aspx">View Products</a>           </li>
    </ul>
     </div>
    <div class="container" style="margin-left:200px">
    <form id="form1" runat="server">    <div class="ui-widget">
           
        <div class="col-md-12" style="font-weight: bold; font-size: medium; font-family: 'Segoe UI'">Stored User data:&nbsp;<br /> 
                <br /> </div> 
        <div class="col-md-12">
            <asp:GridView ID="dgvRecords" runat="server" CssClass="table">
            </asp:GridView>
            <br /> 
                <br /></div>
           <div class="col-md-12">   <br />
                <asp:Button ID="btnShowData" runat="server" CssClass="btn btn-success" Font-Size="Small" Text="Show Data" OnClick="btnSignIn_Click" />
            </div>
        </div> </form>
   </div>
  <br /> <br />  <footer>Created by: Khadija Amjad</footer>
</body>
</html>
