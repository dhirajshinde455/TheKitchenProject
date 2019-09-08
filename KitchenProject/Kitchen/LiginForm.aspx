<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LiginForm.aspx.cs" Inherits="Kitchen.LiginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>LOGIN FORM</h1>
        <br />
        

        <table>
            <tr>
                <td>USERNAME :</td>
                <td><asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
        </td>
            </tr>
            <tr>
                <td>PASSWORD :</td>
                <td><asp:TextBox ID="txtPassword" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Button ID="btnUserLogin" runat="server" OnClick="btnUserLogin_Click"  Text="USER_LOGIN" />
        </td>
                <td><asp:Button ID="btnAdminLogin" runat="server" OnClick="btnAdminLogin_Click"  Text="ADMIN_LOGIN" />
</td>
            </tr>
            
        </table>





    </form>
</body>
</html>
