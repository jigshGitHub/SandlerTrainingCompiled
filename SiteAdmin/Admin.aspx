﻿<%@ page title="" language="C#" masterpagefile="~/Site.master" autoeventwireup="true" inherits="SiteAdmin_Admin, App_Web_sob2yjch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <table stye="width:100%">
        <tr>
            <td style="width: 20%">
                <div id="adminLinks">
                    <a href="#" id="AdminAppointmentSource">Manage Appointment Source</a>
                </div>
            </td>
            <td>
                <div id="adminContainer">
                </div>
            </td>
        </tr>
    </table>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#adminLinks a').click(function () {
                $('#adminContainer').load('AppointmentSource.ascx');
            });
        });
    </script>
</asp:Content>
