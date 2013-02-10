<%@ page title="Home Office Reports" language="C#" masterpagefile="~/CRM.master" autoeventwireup="true" enableeventvalidation="false" inherits="Reports_HomeOfficeReports, App_Web_5oe5mrb1" %>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <table id="tblMain" width="100%">     
        <tr>
            <td align="center">
                       <asp:Label ForeColor="Black" ID="lblreportDisplayName" runat="server"></asp:Label>
            </td>   
        <tr>
        <tr>
            <td align="left">
                <asp:ImageButton ImageUrl="~/images/excel.jpg" runat="server" ToolTip="Export To Excel"
                    ID="btnExportExcel" OnClick="btnExportExcel_Click" />
            </td>                        
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView Width="100%" ID="gvReports" runat="server"
                    AutoGenerateColumns="True" DataKeyNames="DataRowID" AllowSorting="true" AllowPaging="true"
                     EnableSortingAndPagingCallback="True" OnRowDataBound="gvReports_DataBound" OnSelectedIndexChanged="gvReports_SelectedIndexChanged"
                    PageSize="20" OnPageIndexChanging="gvReports_PageIndexChanging" OnSorting="gvReports_Sorting"  OnRowCreated="gvReports_RowCreated" >
                    <PagerStyle BackColor="#999999" ForeColor="Blue" CssClass="gvPager" HorizontalAlign="Center" />
                    <Columns>
                        <asp:BoundField DataField="DataRowID" Visible="False" />                        
                        <asp:TemplateField ShowHeader="False" >
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select"
                                    Text="View Detail.."></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                </asp:GridView>
            </td>
             <asp:HiddenField ID="hidFranchiseeID" runat="server" />
        </tr>   
         <tr>
            <td>
                <asp:Label ForeColor="Red" ID="LblStatus" runat="server"></asp:Label>
            </td>
        </tr>               
    </table>
</asp:Content>
