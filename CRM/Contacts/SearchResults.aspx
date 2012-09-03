﻿<%@ page title="" language="C#" masterpagefile="~/CRM.master" autoeventwireup="true" inherits="CRM_Contacts_SearchResults, App_Web_qg5xc0yw" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Import Namespace="SandlerRepositories" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<table id="tblMain" width="100%">
        
     <tr>
       <th class="tdTC" align="left">Search Results : Contact</th>
     </tr>
        <tr>
            <td><asp:Label ID="lblInfo" runat="server" ForeColor="Red"></asp:Label> </td>
            <td align="right">
                <a runat="server" id="searchAnchor" href="Search.aspx">Back to Contact Search</a>
                <asp:ImageButton ImageUrl="~/images/excel.jpg" runat="server"  ToolTip="Export To Excel"  ID="btnExportExcel" onclick="btnExportExcel_Click"  />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;
            </td>
        </tr>  
        <tr>
            <td colspan="2">
            <asp:GridView Width="100%" ID="gvContacts" runat="server" DataSourceID="SearchContactDS"
                    AutoGenerateColumns="False" DataKeyNames="contactsid" AllowSorting="true" AllowPaging="true"
                    PageSize="20" OnSelectedIndexChanged="gvContacts_SelectedIndexChanged" OnDataBound="gvContacts_DataBound">
                    <PagerStyle BackColor="#999999" ForeColor="Blue" CssClass="gvPager" HorizontalAlign="Center" />
                    <Columns>
                        <asp:BoundField DataField="contactsid" Visible="False" />
                        <asp:BoundField ItemStyle-HorizontalAlign="Center" DataField="FullName" HeaderText="Name"
                            HeaderStyle-ForeColor="Blue" SortExpression="FullName" />
                        <asp:BoundField ItemStyle-HorizontalAlign="Center" DataField="Phone" HeaderText="Phone"
                            HeaderStyle-ForeColor="Blue" SortExpression="Phone" />
                        <asp:BoundField ItemStyle-HorizontalAlign="Center" DataField="Email" HeaderText="E-mail"
                            HeaderStyle-ForeColor="Blue" SortExpression="Email" />
                        <asp:BoundField ItemStyle-HorizontalAlign="Center" DataField="COMPANYNAME" HeaderText="Company"
                            HeaderStyle-ForeColor="Blue" SortExpression="COMPANYNAME" />
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
        <%--For Export to Excel--%>
        <tr id="trExport" runat="server" visible="false">
            <td colspan="2">
            <div id="Report" runat="server">
            <asp:GridView Width="100%" ID="gvContactsExport" runat="server" DataSourceID="SearchContactDS"
                    AutoGenerateColumns="False" DataKeyNames="contactsid"> 
                    <Columns>
                        <asp:BoundField DataField="contactsid" Visible="False" />
                        <asp:BoundField ItemStyle-HorizontalAlign="Center" DataField="FullName" HeaderText="Name" HeaderStyle-ForeColor="Blue" SortExpression="FullName" />
                        <asp:BoundField ItemStyle-HorizontalAlign="Center" DataField="Phone" HeaderText="Phone"   HeaderStyle-ForeColor="Blue" SortExpression="Phone" />
                        <asp:BoundField ItemStyle-HorizontalAlign="Center" DataField="Email" HeaderText="E-mail"  HeaderStyle-ForeColor="Blue" SortExpression="Email" />
                        <asp:BoundField ItemStyle-HorizontalAlign="Center" DataField="COMPANYNAME" HeaderText="Company" HeaderStyle-ForeColor="Blue" SortExpression="COMPANYNAME" />
                        <%--For Export to Excel--%>
                        <asp:BoundField ItemStyle-HorizontalAlign="Center" HeaderStyle-ForeColor="Blue" DataField="NewApptDesp" HeaderText="New Appointment?"/>
                        <asp:BoundField ItemStyle-HorizontalAlign="Center" HeaderStyle-ForeColor="Blue" DataField="ApptSourceName" HeaderText="Appt Source"/> 
                        <asp:BoundField ItemStyle-HorizontalAlign="Center" HeaderStyle-ForeColor="Blue" DataField="IsRegisteredForTraining" HeaderText="Registered for Training?"/>
                        <asp:BoundField ItemStyle-HorizontalAlign="Center" HeaderStyle-ForeColor="Blue" DataField="CourseName" HeaderText="Course"/> 
                        <asp:BoundField ItemStyle-HorizontalAlign="Center" HeaderStyle-ForeColor="Blue" DataField="CourseTrainingDate" HeaderText="Course Training Date" DataFormatString="{0:d}" />
                        <asp:BoundField ItemStyle-HorizontalAlign="Center" HeaderStyle-ForeColor="Blue" DataField="DiscussionTopic" HeaderText="Discussion Topic"/> 
                        <asp:BoundField ItemStyle-HorizontalAlign="Center" HeaderStyle-ForeColor="Blue" DataField="ActionStep" HeaderText="Action Step"/> 
                        <asp:BoundField ItemStyle-HorizontalAlign="Center" HeaderStyle-ForeColor="Blue" DataField="LAST_CONTACT_DATE" HeaderText="Last Contact Date" DataFormatString="{0:d}" />
                        <asp:BoundField ItemStyle-HorizontalAlign="Center" HeaderStyle-ForeColor="Blue" DataField="NEXT_CONTACT_DATE" HeaderText="Next Contact Date" DataFormatString="{0:d}" />
                        <asp:BoundField ItemStyle-HorizontalAlign="Center" HeaderStyle-ForeColor="Blue" DataField="IsEmailSubscription" HeaderText="Blast Email Subscription?"/>
                        <asp:BoundField ItemStyle-HorizontalAlign="Center" HeaderStyle-ForeColor="Blue" DataField="NeedCallBack" HeaderText="Need Call Back?"/>
                    </Columns>
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                </asp:GridView>
            </div> 
            </td>
        </tr>
        <tr>
            <td><asp:Label ForeColor="Red" ID="LblStatus" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>
                <asp:ObjectDataSource ID="SearchContactDS" runat="server" TypeName="SandlerRepositories.ContactsRepository" SelectMethod="GetAllForSearch"></asp:ObjectDataSource>
                <asp:HiddenField ID="hidContactID" runat="server" />
            </td>
        </tr>
    </table>

</asp:Content>
