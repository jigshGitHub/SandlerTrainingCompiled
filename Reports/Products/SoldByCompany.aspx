﻿<%@ page title="Reports-ProductsSoldByCompany" language="C#" masterpagefile="~/CRM.master" autoeventwireup="true" inherits="Reports_Products_SoldByCompany, App_Web_wpvdm5kb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div id="dialog" title="Report: Product Sold By Company">
        <table>
            <tr>
                <td>
                    <asp:DropDownList ID="companyList" runat="server" Visible="false">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="button" id="btnGetReport" class="sandlerButton" value="Get Report" />
                </td>
            </tr>
        </table>
    </div>
    <div id="chartContainer" style="display: none; text-align: center">
        <asp:Image ID="ajaxLoadNotificationImage" runat="server" ImageUrl="~/images/indicator_medium.gif" />Please
        wait...</div>
    <div id="chartContainer1" style="display: none; text-align: center">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/indicator_medium.gif" />Please
        wait...</div>
    <script type="text/javascript">
        $(document).ready(function () {
            var href = window.location.href.split('/');
            var baseUrl = href[0] + '//' + href[2] + '/' + href[3];
            var companyList = $('#<%=companyList.ClientID %>');

            chartIds = chartIds.split('_');

            $('#dialog').dialog({

                autoOpen: false,
                width: 500,
                modal:true

            });

            $('#dialog').parent().appendTo($("form:first"));
            if (drillBy == '') {
                $('#dialog').dialog('open');
            }
            else {
                chartContainer.style.display = "block";
                loadChart(chartIds[0], drillBy, searchParameter, 'chartContainer', 'myChartId');
                chartContainer1.style.display = "block";
                loadChart(chartIds[1], drillBy, searchParameter, 'chartContainer1', 'myChartId1');
            }
            $('#btnGetReport').click(function () {
                if (companyList.val() > 0) {

                    $('#dialog').dialog('close');
                    chartContainer.style.display = "block";
                    loadChart(chartIds[0], '', companyList.val(), 'chartContainer', 'myChartId');                    
                }
            });

            function loadChart(chartId, drillBy, companyId, chartContainer, myChartId) {
                $.ajax({
                    url: baseUrl + "/api/Chart/",
                    type: 'GET',
                    contentType: 'application/json',
                    data: { id: '', strChartIds: chartId, strChartSubType: chartSubType, strDrillBy: drillBy, strUserName: userName, strSearchParameter: companyId },
                    success: function (data) {
                        log(data);
                        var myChart = new FusionCharts(baseUrl + '/FusionChartLib/' + data.SWF, myChartId, chartWidth, chartHeight, '0', '1');
                        myChart.setXMLData(data.ChartXML);
                        myChart.render(chartContainer);
                    }
                });
            }
        });</script>
</asp:Content>
