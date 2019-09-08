<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Kitchen_Home.aspx.cs" Inherits="Kitchen.Kitchen_Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>FOOD ITEMS</h1>
        <br />
        
        <asp:GridView ID="grdFoodItem" runat="server" CellPadding="4" ForeColor="Black" GridLines="Vertical" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" Height="176px" Width="409px">
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
        
        <br />
        
        <h1>Purchase Item</h1>
        
        <br />
        <h4>Select Item To Purchase : </h4><br />
        
        <asp:DropDownList ID="ddlFoodItems" runat="server"> 
            
        </asp:DropDownList>
        <br />


        <br />
        <br />
        <h4>Select Quantity :</h4><br />

        <asp:DropDownList ID="ddlQuantity" runat="server">
            <asp:ListItem Selected="True">1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
        </asp:DropDownList>


        <br />
        <br />
        <asp:Button ID="btnAddCart" runat="server" Text="Add to Cart " OnClick="btnAddCart_Click" />

        <br />
        <br />

        <h1>Your Purchase Cart :</h1> 

        <asp:GridView ID="grdCart" runat="server" CellPadding="4" ForeColor="Black" GridLines="Vertical" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" Width="393px">
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


        <br />
        <h3>Your Total Bill :</h3>
        <asp:Label ID="lblTotalBill" runat="server" ></asp:Label>


        <br />
        <br />
        <asp:Button ID="btnPayment" runat="server" Text="PAY" OnClick="btnPayment_Click" />


    </div>
    </form>
</body>
</html>
