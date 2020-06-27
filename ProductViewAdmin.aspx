<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ProductViewAdmin.aspx.cs" Inherits="GraduationProjct.ProductView" %>
<%@ Register src="WUCProductView.ascx" tagname="WUCProductView" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <uc1:WUCProductView ID="WUCProductView1" runat="server" />
</asp:Content>
