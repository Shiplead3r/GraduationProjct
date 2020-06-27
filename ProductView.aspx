<%@ Page Title="" Language="C#" MasterPageFile="~/MemberMaster.Master" AutoEventWireup="true" CodeBehind="ProductView.aspx.cs" Inherits="GraduationProjct.ProductView" %>
<%@ Register src="WUCProductView.ascx" tagname="WUCProductView" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <uc1:WUCProductView ID="WUCProductView1" runat="server" />
</asp:Content>
