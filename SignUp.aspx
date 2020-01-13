<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="MiniMartWeb.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.3/jquery-ui.min.js"> </script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="StyleSheet1.css" rel="stylesheet" />
    <script>
        $(function () {
            var cnt = ["Karachi", "Lahore", "Gujranwala", "Faisalabad", "Multan", "Islamabad", "Rawalpindi", "Hyderabad"];
            $("#city").autocomplete({ source: cnt });
        });
    </script>
    <script>
        $(function () {
            var reg = ["Sindh", "Punjab", "KPK", "Balochistan"];
            $("#region").autocomplete({ source: reg });
        });
    </script>
    <script>
        $(function () {
            var ce = ["@gmail.com", "@outlook.com", "@hotmail.com", "@yahoo.com"];

            $("#email").autocomplete({ source: ce });
        });
    </script>
    <title></title>
   <%-- <style type="text/css">
        .ui-widget {
            width: 815px;
            height: 577px;
            margin-left: 95px;
            margin-right: 207px;
        }
    </style>--%>
</head>
<body>
    <header><h1> Sign Up for Khareedari.pk</h1></header><br /> 
    <div><ul>
        <li><a href="Mainpage.aspx">Home</a></li>
        <li><a href="SignUp.aspx" class="active">SignUp</a>          </li>
        <li><a href="SignIn.aspx">View Account</a>           </li>
        <li><a href="AddProducts.aspx">Add Product</a>            </li>
           <li><a href="ViewProducts.aspx">View Products</a>           </li>
    </ul> </div> <br/>
    <div class="container col-md-12" style="margin-left:150px;">
    <form id="form1" runat="server">
            <div class="col-md-6">  <label for="Name">Name: </label><br />
                <asp:TextBox ID="name" runat="server" CssClass="form-control  col-md-6"></asp:TextBox>
                <br /></div>
            <div class="col-md-6"><label for="Region">Region: </label> 
                <asp:TextBox ID="region" runat="server" CssClass="form-control  col-md-6"></asp:TextBox>
                <br /><br /></div>
            <div class="col-md-6"><br /><label for="Cities">City: </label>&nbsp;<asp:TextBox ID="city" runat="server" CssClass="form-control  col-md-6"></asp:TextBox>
                <br /></div>
          <div class="col-md-6"><br /><label for="Email">Email: </label> 
                <asp:TextBox ID="email1" runat="server" CssClass="form-control  col-md-6"></asp:TextBox>
            <br /><br /> </div> 
         <div class="col-md-6"><br /><label for="Password">Password: </label> 
                <asp:TextBox ID="password" runat="server" CssClass="form-control  col-md-6"></asp:TextBox>
                <br /><br /></div>
            <div class="col-md-6"><br /><label>Domain</label>&nbsp;
                <asp:TextBox ID="email" runat="server" CssClass="form-control  col-md-6"></asp:TextBox>
                <br /><br /></div>
            <div class="col-md-6"> 
               <br /> 
                <br />
                <asp:Button ID="btnSign" runat="server" CssClass="btn btn-success" Font-Size="Small" Text="Sign Up" OnClick="btnSign_Click1" />
                <br />
                <br />
            </div>
</form>
    </div>
    <br />
                <br />
    <footer>Created by: Khadija Amjad</footer>
    <br />
    </body>
</html>
