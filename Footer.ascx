﻿<%@ control language="C#" autoeventwireup="true" inherits="Footer, App_Web_yu1nba0j" %>
<table width="100%">
    <tr>
        <td align="right" valign="top" style="width: 20%">
            Powered by <a style="color: White" href="http://www.minedsystems.com" target="_blank">
                Mined Systems, Inc.</a> ®
        </td>
        <td align="left" valign="top" style="width: 5%">
            <img src="<%= Page.ResolveClientUrl("~/Images/MSIPieChart.png")%>" />
        </td>
        <td align="center" style="width: 25%">
            <asp:LinkButton ID="lnkPrivacy" runat="server" CausesValidation="false" ForeColor="White"
                Text="Privacy Statement"></asp:LinkButton>
        </td>
        <td align="right" style="width: 50%">
            Copyright© 2011-2012 Mined Systems Metrics Intelligence. All rights reserved.
        </td>
    </tr>
</table>
