<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddProducts.aspx.cs" Inherits="MiniMartWeb.AddProducts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.3/jquery-ui.min.js"> </script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="StyleSheet1.css" rel="stylesheet" /><title></title>
</head>
<body>
   <header><h1>Khareedari.pk</h1></header><br />
      <ul>
        <li><a href="Mainpage.aspx">Home</a></li>
        <li><a href="SignUp.aspx">SignUp</a>          </li>
        <li><a href="SignIn.aspx">View Account</a>           </li>
        <li><a href="AddProducts.aspx" class="active">Add Product</a>            </li>
           <li><a href="ViewProducts.aspx">View Products</a>           </li>
    </ul>
    <div class="container" style="margin-left:200px">
        <h3>Add products</h3>
    <form id="form1" runat="server">    <div class="ui-widget">
            <div class="col-md-6">  <label for="Name">Name: </label><br />
                <asp:TextBox ID="name" runat="server" CssClass="form-control  col-md-6" Width="340px"></asp:TextBox>
                <br /><br /><br /> </div>
            <div class="col-md-6"><label for="Qty">Quantity: </label> <br />
                <asp:TextBox ID="qty" type="number" runat="server" CssClass="form-control  col-md-6" Width="340px"></asp:TextBox>
                <br /><br /><br /></div>
            <div class="col-md-6"><label for="Company">Company: </label><br />
                <asp:TextBox ID="company" runat="server" CssClass="form-control  col-md-6" Width="340px"></asp:TextBox>
                <br /><br /></div>
          <div class="col-md-6"><label for="company">PID: </label> <br />
                <asp:TextBox ID="pid" type="number" runat="server" CssClass="form-control  col-md-6" Width="340px"></asp:TextBox>
            <br /><br /> </div> 
           <div class="col-md-6"> </div> <div class="col-md-6"> 
                <br />&nbsp;&nbsp;&nbsp; 
                <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-primary" Font-Size="Small"   Text="Add Product" OnClick="btnAdd_Click" Width="160px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:Button ID="btnView" runat="server" CssClass="btn btn-warning" Font-Size="Small"   Text="View Products" OnClick="btnView_Click" Width="160px" />
            </div>
        <div class="col-md-6"> 
            </div>
        </div> </form>
    </div><br />
    <footer>Created by: Khadija Amjad</footer>
</body>
</html>
