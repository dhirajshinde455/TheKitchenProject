<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddFoodItems.aspx.cs" Inherits="Kitchen.AddFoodItems" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <h1>Food List </h1>
        <asp:GridView ID="grdFoodItem" border runat="server" BorderColor="#DEDFDE" BorderStyle="None" CellPadding="4" ForeColor="Black" GridLines="Vertical" BackColor="White" BorderWidth="1px" Width="501px">
            <AlternatingRowStyle BackColor="White" />
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>

        <h1>Insert Food Item</h1>

        
        <table>
            <tr>
                <td> Id :   </td>
                <td> <asp:TextBox ID="txtId" runat="server"></asp:TextBox>   </td>
            </tr>
            <tr>
                <td>  Food Name :   </td>
                <td>  <asp:TextBox ID="txtName" runat="server"></asp:TextBox>  </td>
            </tr>
            <tr>
                <td>  Food Ingrediants:  </td>
                <td>  <asp:TextBox ID="txtIngrediants" runat="server"></asp:TextBox>  </td>
            </tr>
            <tr>
                <td>   Special_Notes : </td>
                <td>  <asp:TextBox ID="txtSplNotes" runat="server"></asp:TextBox>  </td>
            </tr>
            <tr>
                <td>  Catageory :  </td>
                <td>  <asp:TextBox ID="txtCatageory" runat="server"></asp:TextBox>  </td>
            </tr>
            <tr>
                <td>  Price :  </td>
                <td>  <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>  </td>
            </tr>

        </table>







        
        <asp:Button ID="btnInsert" runat="server" Text="Insert Food" OnClick="btnInsert_Click" />




    </div>
    </form>
</body>
</html>
