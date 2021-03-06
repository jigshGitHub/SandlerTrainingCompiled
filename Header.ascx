﻿<%@ control language="C#" autoeventwireup="true" inherits="Header, App_Web_epqesjz1" %>
<%@ Register Src="Menu.ascx" TagName="Menu" TagPrefix="uc1" %>
<div class="loginDisplay" style="display: block">
    <asp:LoginView ID="HeadLoginView" runat="server" EnableViewState="false">
        <AnonymousTemplate>
            <!--[ <a href="~/Account/Login.aspx" id="HeadLoginStatus" runat="server">Log In</a>
                        ]-->
        </AnonymousTemplate>
        <LoggedInTemplate>
            Welcome <span class="bold">
                <asp:LoginName ID="HeadLoginName" runat="server" />
            </span>! [
            <asp:LoginStatus ID="HeadLoginStatus" runat="server" LogoutAction="Redirect" LogoutText="Log Out"
                OnLoggingOut="HeadLoginStatus_LoggingOut" />
            ]
        </LoggedInTemplate>
    </asp:LoginView>
    <br />
    <a href="#" title="Need Assistance?  Call SPM Customer Service at: 202-601-2570"><img src="<%= Page.ResolveClientUrl("~/images/Helpline.png") %>" alt="" />
    </a>&nbsp;<a href="#" title="View SPM User Guide"><img src="<%= Page.ResolveClientUrl("~/images/SPM Guide.png") %>" alt="" /></a>
</div>
<uc1:Menu ID="Menu1" runat="server" />
