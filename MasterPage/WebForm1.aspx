﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MasterPage.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="~/Styles/Site.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="Form1" runat="server">
    <div class="page">
        <div class="header">
            <div class="title">
                <h1>
                    Mi aplicación ASP.NET
                </h1>
            </div>
            <div class="loginDisplay">
                <asp:LoginView ID="HeadLoginView" runat="server" EnableViewState="false">
                    <AnonymousTemplate>
                        [ <a href="~/Account/Login.aspx" ID="HeadLoginStatus" runat="server">Iniciar sesión</a> ]
                    </AnonymousTemplate>
                    <LoggedInTemplate>
                        Pantalla de bienvenida <span class="bold"><asp:LoginName ID="HeadLoginName" runat="server" /></span>!
                        [ <asp:LoginStatus ID="HeadLoginStatus" runat="server" LogoutAction="Redirect" LogoutText="Cerrar sesión" LogoutPageUrl="~/"/> ]
                    </LoggedInTemplate>
                </asp:LoginView>
            </div>
            <div class="clear hideSkiplink">
                <asp:Menu ID="NavigationMenu" runat="server" CssClass="menu" EnableViewState="false" IncludeStyleBlock="false" Orientation="Horizontal">
                    <Items>
                        <asp:MenuItem NavigateUrl="~/Default.aspx" Text="Página principal"/>
                        <asp:MenuItem NavigateUrl="~/About.aspx" Text="Acerca de"/>
                    </Items>
                </asp:Menu>
            </div>
        </div>
        <div class="main">
        </div>
        <div class="clear">
        </div>
    </div>
    <div class="footer">
        
    </div>
    </form>
</body>
</html>