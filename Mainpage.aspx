<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mainpage.aspx.cs" Inherits="MiniMartWeb.Mainpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8" />
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.3/jquery-ui.min.js"> </script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="StyleSheet1.css" rel="stylesheet" /><title></title>
    <script>
        $(document).ready(function () {
            $("#btn1").click(function () {
                $(".his").slideToggle("slow");
            });
        });
    </script>
    <script>
        $(document).ready(function () {
            $("#btn2").click(function () {
                $(".goal").slideToggle("slow");
            });
        });
    </script>
    <script>
        $(document).ready(function () {
            $("#btn3").click(function () {
                $(".cntc").slideToggle("slow");
            });
        });
    </script>

</head>
<body>
    <header><h1> Khareedari.pk </h1></header><br />
    <ul>
        <li><a href="Mainpage.aspx" class="active">Home</a></li>
        <li><a href="SignUp.aspx">SignUp</a>          </li>
        <li><a href="SignIn.aspx">View Account</a>           </li>
        <li><a href="AddProducts.aspx">Add Product</a>            </li>
           <li><a href="ViewProducts.aspx">View Products</a>           </li>
    </ul>
    <img src="shjd.jpg" style="margin-left:300px; width:830px;height:450px;"/>
    <h3>About us</h3>
    <div style="margin-left:300px;">
        <button id="btn1" class="btn btn-warning"> History </button> <button id="btn2" class="btn btn-primary"> Goal </button> <button id="btn3" class="btn btn-info"> Contact information</button>
        <h4 >History</h4> 
        <div class="his">
           Khareedari.pk was launched in 2004 by XYZ, ABC and MNO. The idea behind Khareedari.pk was to provide services
            to our people like buying goods and grocery online and getting them delivered the same day. Khareedari.pk was launched in 2004 by XYZ, ABC and MNO. The idea behind Khareedari.pk was to provide services
            to our people like buying goods and grocery online and getting them delivered the same day.
             Khareedari.pk was launched in 2004 by XYZ, ABC and MNO. The idea behind Khareedari.pk was to provide services
            to our people like buying goods and grocery online and getting them delivered the same day. Khareedari.pk was launched in 2004 by XYZ, ABC and MNO. The idea behind Khareedari.pk was to provide services
            to our people like buying goods and grocery online and getting them delivered the same day.
        </div>
        <h4 >Goal</h4>
        <div class="goal">
            Pleasing our customers has always been our goal. We aim to provide you the fastes and most reliable online
            shopping experience in Pakistan. No matter where you are, we are always at your service.
                Pleasing our customers has always been our goal. We aim to provide you the fastes and most reliable online
            shopping experience in Pakistan. No matter where you are, we are always at your service.
             Pleasing our customers has always been our goal. We aim to provide you the fastes and most reliable online
            shopping experience in Pakistan. No matter where you are, we are always at your service.
        </div>
        <h4 >Contact information</h4><div class="cntc">
            Reach us at: info@khareedari.pk     |    www.facebook.com/khareedaripk    |      instagram.com/khareedari.pk

        </div>
        <br />
    </div>

    <footer>Created By: Khadija Amjad</footer>
</body>
</html>
