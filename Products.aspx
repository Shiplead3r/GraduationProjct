<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="GraduationProjct.Products" %>
<%@ Register src="WUCProducts.ascx" tagname="WUCProducts" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <uc1:WUCProducts ID="WUCProducts1" runat="server" />
</asp:Content>
