<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WUCProducts.ascx.cs" Inherits="GraduationProjct.WUCProducts" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        text-align: center;
        height: 26px;
    }
    .auto-style3 {
    }
    .auto-style4 {
        width: 293px;
    }
</style>

<table class="auto-style1">
    <tr>
        <td class="auto-style2" colspan="3">Welcome Product</td>
    </tr>
    <tr>
        <td class="auto-style4">Add New</td>
        <td>
            <asp:Button ID="btnNew" runat="server" OnClick="btnNew_Click" Text="New" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="Label2" runat="server" Text="Product Name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtProductName" runat="server"></asp:TextBox>
        </td>
        <td rowspan="4">
            <asp:Image ID="imgProduct" runat="server" Height="123px" Width="148px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="Label3" runat="server" Text="Price"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtProductPrice" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="Label4" runat="server" Text="Description"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="Label5" runat="server" Text="Category"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ShopDataSource" DataTextField="Name" DataValueField="Id">
            </asp:DropDownList>
            <asp:SqlDataSource ID="ShopDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="Label7" runat="server" Text="Quantity"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="Label8" runat="server" Text="Image"></asp:Label>
        </td>
        <td>
            <asp:FileUpload ID="productImage" runat="server" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td colspan="3">
            <asp:Label ID="lblMsg" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="2" style="text-align: center">
            <asp:Button ID="btnInsert" runat="server" OnClick="btnInsert_Click" Text="Insert" />
&nbsp;
            <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" />
&nbsp;
            <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3" colspan="2">
            <asp:GridView ID="gdvProduct" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" OnSelectedIndexChanged="gdvProduct_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Select" ShowHeader="True" Text="Select" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>

