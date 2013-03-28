﻿<%@ page title="HomeOffice - View Franchisee" language="C#" masterpagefile="~/CRM.master" autoeventwireup="true" inherits="CRM_HomeOffice_Index, App_Web_4jlm1q2x" %>

<%@ Import Namespace="SandlerRepositories" %>
<%@ Register Src="../EntityMenu.ascx" TagName="EntityMenu" TagPrefix="uc1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
 <table id="tblMain" width="100%">
        <tr>
            <td align="right" colspan="2">
                <uc1:EntityMenu ID="franchiseeMenu" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:ImageButton ImageUrl="~/images/excel.jpg" runat="server" ToolTip="Export To Excel"
                    ID="btnExportExcel" onclick="btnExportExcel_Click" />&nbsp;
                    <asp:Label runat="server" Text="Export To Excel" ID="lblExportToExcel"></asp:Label>
            </td>
            <td align="center" style="font-size:large"><b>All Sandler Franchisees, Master Franchisees, Coaches and Associates</b></td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:TextBox runat="server" ID="txtGridSearch"></asp:TextBox>
                <asp:Button runat="server" ID="btnGridSearch" Text="Search" />
                <asp:GridView Width="100%" ID="gvFranchisees" runat="server" DataSourceID="SearchFranchiseeDS"
                    AutoGenerateColumns="False" DataKeyNames="ID" AllowSorting="true" AllowPaging="true"
                    PageSize="20" OnSelectedIndexChanged="gvFranchisees_SelectedIndexChanged" 
                    OnDataBound="gvFranchisees_DataBound">
                    <PagerStyle BackColor="#999999" ForeColor="Blue" CssClass="gvPager" HorizontalAlign="Center" />
                    <Columns>
                        <asp:BoundField DataField="ID" Visible="False" />
                        <asp:BoundField ItemStyle-HorizontalAlign="Left"  HeaderStyle-HorizontalAlign="Left" HeaderStyle-ForeColor="Blue" DataField="Last Name" HeaderText="Last Name" SortExpression="Last Name" />
                        <asp:BoundField ItemStyle-HorizontalAlign="Left"  HeaderStyle-HorizontalAlign="Left" HeaderStyle-ForeColor="Blue" DataField="First Name" HeaderText="First Name" SortExpression="First Name" />
                        <asp:BoundField ItemStyle-HorizontalAlign="Left"  HeaderStyle-HorizontalAlign="Left" HeaderStyle-ForeColor="Blue" DataField="Franchise Name" HeaderText="Franchise Name" SortExpression="Franchise Name" />
                        <asp:BoundField ItemStyle-HorizontalAlign="Left"  HeaderStyle-HorizontalAlign="Left" HeaderStyle-ForeColor="Blue" DataField="Primary Office Email" HeaderText="Primary Office Email"  SortExpression="Primary Office Email" />
                        <asp:BoundField ItemStyle-HorizontalAlign="Left"  HeaderStyle-HorizontalAlign="Left" HeaderStyle-ForeColor="Blue" DataField="OfficePhone" HeaderText="Contact Number" SortExpression="OfficePhone"/>
                        <asp:BoundField ItemStyle-HorizontalAlign="Left"  HeaderStyle-HorizontalAlign="Left" HeaderStyle-ForeColor="Blue" DataField="LastUpdatedDate" HeaderText="Last Updated" DataFormatString="{0:d}" SortExpression="LastUpdatedDate" />
                        <asp:TemplateField ShowHeader="False">
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
        </tr>
       
        <tr>
            <td>
                <asp:Label ForeColor="Red" ID="LblStatus" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:ObjectDataSource ID="SearchFranchiseeDS" runat="server" TypeName="SandlerRepositories.FranchiseesRepository" SelectMethod="sp_GetAllFranchisees" OnSelecting="SearchFranchiseeDS_Selecting"
                FilterExpression="([Franchise Name] LIKE '%{0}%') OR ([Last Name] LIKE '%{0}%') OR ([First Name] LIKE '%{0}%') OR ([Primary Office Email] LIKE '%{0}%') OR (OfficePhone LIKE '%{0}%')">
                  <FilterParameters>
                        <asp:ControlParameter ControlID="txtGridSearch" PropertyName="Text" Type="String" />
                  </FilterParameters>
                  <SelectParameters><asp:Parameter Name="_user"  /></SelectParameters>
                </asp:ObjectDataSource>
                <asp:HiddenField ID="hidFranchiseeID" runat="server" />
            </td>
        </tr>
    </table>
</asp:Content>

