﻿<%@ Import Namespace="Sandler.UI.ChartStructure" %>
<%@ control language="C#" autoeventwireup="true" inherits="Menu, App_Web_aza2rrj1" %>
<div class="clear hideSkiplink">
    <table border="0">
        <tr>
            <td>
                <asp:Image ImageUrl="~/images/header_logo.png" runat="server" ID="Image1" />
            </td>
            <td style="padding-top: 2.5em">
                <ul class="dropdown">
                    <li><a id="anchorDASHBOARD" runat="server" href="Default.aspx">DASHBOARD</a></li>
                    <li><a id="anchorCHART" runat="server" href="#">REPORTS</a><ul class="sub_menu">
                        <li><a href="<%=  Page.ResolveClientUrl("~/" + ChartHelper.GeneratePageLink("","NewAppointmentsBySourceMonth"))  %>">
                            New Appointments By Source (By Month)</a></li>
                        <li><a href="<%=  Page.ResolveClientUrl("~/" + ChartHelper.GeneratePageLink("","NewClientsByProductTypeMonth"))  %>">
                            New Clients By Product Type (By Month)</a></li>
                        <li><a href="<%=  Page.ResolveClientUrl("~/" + ChartHelper.GeneratePageLink("","NewClientQuantityAverageContractPriceByMonth"))  %>">
                            New Client Quantity & Average Contract Price (By Month)</a></li>
                        <li><a href="<%=  Page.ResolveClientUrl("~/" + ChartHelper.GeneratePageLink("","ClassHeadcountByCourseIndustryMonth"))  %>">
                            Class Headcount By Course & Industry (By Month)</a></li>
                        <li><a href="<%=  Page.ResolveClientUrl("~/" + ChartHelper.GeneratePageLink("","AverageLengthTimeActiveClientsByIndustry"))  %>">
                            Average Length of Time for Active Clients (By Industry)</a></li>
                        <li><a href="<%=  Page.ResolveClientUrl("~/" + ChartHelper.GeneratePageLink("","ActualDollarsBookedComparisonGoal"))  %>">
                            Actual Dollars Booked and Comparison to Goal (By Month)</a></li></ul>
                    </li>
                    <li><a href="~/CRM/Companies/Index.aspx" id="anchorCRM" runat="server">CRM</a></li>
                    <li><a id="anchorMyAccount" runat="server" href="#">My Account</a><ul class="sub_menu">
                        <li><a href="<%=  Page.ResolveClientUrl("~/Account/ChangePassword.aspx") %>">Change
                            Password</a></li>
                        <li><a href="<%=  Page.ResolveClientUrl("~/Email/BlastEmail.aspx") %>">Send Email</a></li>
                        <li><a href="<%=  Page.ResolveClientUrl("~/Calendar/Index.aspx") %>">My Calendar</a></li><li>
                            <a id="manageCoachAnchor" runat="server" visible="false">Manage Coach</a></li>
                        <li><a id="manageFranchiseeAnchor" runat="server" visible="false">Manage Franchisee</a></li>
                        <li><a id="manageFranchiseeUserAnchor" runat="server" visible="false">Manage Franchisee
                            User</a></li>
                        <li><a id="manageEmailSubscription" runat="server" visible="false">Manage Email Subscription</a></li>
                    </ul>
                    </li>
                    <li><a href="#" class="disableLink">BENCHMARKS</a> </li>
                    <li><a href="#" class="disableLink">PRODUCTS</a> </li>
                    <!--<li><a href="~/Account/Logout.aspx" id="anchorLogout" runat="server">LOGOUT</a>
                    </li>-->
                </ul>
            </td>
        </tr>
    </table>
</div>
