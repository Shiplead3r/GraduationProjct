<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WUCProductView.ascx.cs" Inherits="GraduationProjct.WUCProductView" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        font-size: large;
    }
</style>

<table class="auto-style1">
    <tr>
        <td class="auto-style2"><strong>Products</strong></td>
    </tr>
    <tr>
        <td>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="ProductsDataSource" GridLines="Both" RepeatColumns="4" style="text-align: center" OnItemCommand="DataList1_ItemCommand">
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" style="font-weight: 700" Text='<%# Eval("Name") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Image ID="Image1" runat="server" Height="116px" ImageUrl='<%# "~\\imagepro\\"+Eval("CategoryId").ToString().Trim()+"-"+Eval("Name").ToString().Trim()+".jpg" %>' Width="137px" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Price")+"$" %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="Description"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="ProductsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
        </td>
    </tr>
</table>

