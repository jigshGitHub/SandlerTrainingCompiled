<%@ page title="" language="C#" masterpagefile="~/CRM.master" autoeventwireup="true" inherits="Reports_Products_SoldByCompany, App_Web_fficv35j" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div id="dialog" title="Report: Product Sold By Company">
        <table>
            <tr>
                <td>
                    <asp:DropDownList ID="companyList" runat="server">
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
    <div id="chartContainer" style="display: none">
        <asp:Image ID="ajaxLoadNotificationImage" runat="server" ImageUrl="~/images/indicator_medium.gif" />Please
        wait...</div>
    <script type="text/javascript">
        $(document).ready(function () {
            var href = window.location.href.split('/');
            var baseUrl = href[0] + '//' + href[2] + '/' + href[3];
            var companyList = $('#<%=companyList.ClientID %>');
            $('#dialog').dialog({

                autoOpen: true,
                width: 500

            });

            $('#dialog').parent().appendTo($("form:first"));
            $('#btnGetReport').click(function () {
                if (companyList.val() > 0) {
                    
                    /*
                    $.ajax({
                    url: baseUrl + "/api/Chart/",
                    type: 'GET',
                    contentType: 'application/json',
                    data: { id: '', strChartIds: chartIds, strChartSubType: chartSubType, strDrillBy: '', strUserName: userName, strGaId: gaId },
                    success: function (data) {
                    log(data);
                    var myChart = new FusionCharts(baseUrl + '/FusionChartLib/' + data.SWF, 'myChartId', chartWidth, chartHeight, '0', '1');
                    myChart.setXMLData(data.ChartXML);
                    myChart.render('chartContainer');
                    }
                    });
                    */
                }
            });
        });</script>
</asp:Content>
