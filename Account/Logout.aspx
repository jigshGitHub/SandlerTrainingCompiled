﻿<%@ page language="C#" autoeventwireup="true" inherits="Logout, App_Web_0cvncu1k" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color: #336699">
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="btnLogin" runat="server" Style="position: absolute; left: 592px;
            top: 316px; color: #FFFFFF; background-color: #336699" Text="LOGIN" Font-Bold="true" OnClientClick="window.open('Login.aspx',_blank);window.close();"/>
        <img width="100%" src="<%= Page.ResolveClientUrl("~/images/Logout_page.png") %>" alt="Sandler Logo" />
    </div>
    </form>
</body>
</html>
