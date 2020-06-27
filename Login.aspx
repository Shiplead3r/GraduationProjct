<%@ Page Title="" Language="C#" MasterPageFile="~/AnonymousMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GraduationProjct.Login" %>
<%@ Register src="WUCLogin.ascx" tagname="WUCLogin" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <uc1:WUCLogin ID="WUCLogin1" runat="server" />
</asp:Content>
