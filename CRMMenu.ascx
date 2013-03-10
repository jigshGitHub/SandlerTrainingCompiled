<%@ control language="C#" autoeventwireup="true" inherits="CRMMenu, App_Web_lz0w5nhv" %>
<asp:Panel ID="pnlCrmSubMenu" runat="server" Visible="false">
    <table class="CRMSubMenus" align="center">
        <tr>
            <td align="center">
                <a href="<%= Page.ResolveClientUrl("~/CRM/Companies/Index.aspx") %>">Companies</a>
            </td>
            <td align="center">
                <a href="<%= Page.ResolveClientUrl("~/CRM/Contacts/Index.aspx") %>">Contacts</a>
            </td>
            <td align="center">
                <a href="<%= Page.ResolveClientUrl("~/CRM/Opportunities/Index.aspx") %>">Pipeline</a>
            </td>
            <td align="center">
                <a href="<%= Page.ResolveClientUrl("~/CRM/Documents/Index.aspx") %>">Documents</a>
            </td>
        </tr>
    </table>
</asp:Panel>
