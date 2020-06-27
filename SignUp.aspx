<%@ Page Title="" Language="C#" MasterPageFile="~/AnonymousMaster.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="GraduationProjct.SignUp" %>
<%@ Register src="WUCSignUp.ascx" tagname="WUCSignUp" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <uc1:WUCSignUp ID="WUCSignUp1" runat="server" />
</asp:Content>
