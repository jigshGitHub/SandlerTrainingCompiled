﻿<%@ page title="CRM - Search - Company" language="C#" masterpagefile="~/CRM.master" autoeventwireup="true" enableeventvalidation="false" inherits="CRM_Companies_Search, App_Web_rfi4kqfj" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Import Namespace="SandlerRepositories" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
<asp:UpdatePanel ID="updPnl" runat="server">
    <ContentTemplate>
   <table id="tblSearchCriteria">
    <tr>
       <th class="tdTC" align="left">
                Search Company : Please enter/select at least one criteria to search.
       </th>
     </tr>
     <tr><td><asp:Label ID="lblResult" runat="server" ForeColor="Red"></asp:Label></td></tr>
     <tr>
            <td>
                <asp:DetailsView ID="dvCompany" runat="server" Width="400px" AutoGenerateRows="False"
                    DefaultMode="Insert" CellPadding="3" BorderStyle="None"
                    BorderWidth="1px" BackColor="White" BorderColor="#999999" GridLines="Vertical"
                    OnModeChanging="dvCompany_ModeChanging" 
                    OnItemInserting="dvCompany_ItemInserting" ondatabound="dvCompany_DataBound">
                    <Fields>
                        <asp:TemplateField HeaderText="Company Name :">
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtCompName" MaxLength="50" Width="380" runat="server"></asp:TextBox>
                            </InsertItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Company Ownership :">
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtOwnership" MaxLength="50" Width="380" runat="server"></asp:TextBox>
                            </InsertItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Company Description :">
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtCompanyDescription" MaxLength="50" Width="380" runat="server"></asp:TextBox>
                            </InsertItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="Address :">
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtAddress" MaxLength="150" Width="380" runat="server"></asp:TextBox>
                            </InsertItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="City :">
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtCity" MaxLength="50" Width="380" runat="server"></asp:TextBox>
                            </InsertItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="State :">
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtState" MaxLength="50" Width="380" runat="server"></asp:TextBox>
                            </InsertItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="Zip :">
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtZip"  MaxLength="7"  Width="380" runat="server"></asp:TextBox>
                            </InsertItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Country :">
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtCountry"  MaxLength="50" Width="380" runat="server"></asp:TextBox>
                            </InsertItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Same Billing Address?:">
                            <InsertItemTemplate>
                                <asp:ListBox ID="lstBillingAdrs" SelectionMode="Multiple" runat="server" Rows="2" Width="280" DataSourceID="BillingAddressDS" DataTextField="BillingDescription" DataValueField="BillingValue"></asp:ListBox>
                            </InsertItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Billing Address :">
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtBillingAddress" MaxLength="150" Width="380" runat="server"></asp:TextBox>
                            </InsertItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Billing City :">
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtBillingCity" MaxLength="50" Width="380" runat="server"></asp:TextBox>
                            </InsertItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Billing State :">
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtBillingState" MaxLength="50" Width="380" runat="server"></asp:TextBox>
                            </InsertItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="Billing Zip :">
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtBillingZip"  MaxLength="7"  Width="380" runat="server"></asp:TextBox>
                            </InsertItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Billing Country :">
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtBillingCountry"  MaxLength="50" Width="380" runat="server"></asp:TextBox>
                            </InsertItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="POC Last Name :">
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtPOCLastName" MaxLength="50" Width="380" runat="server"></asp:TextBox>
                            </InsertItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="POC First Name :">
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtPOCFirstName" MaxLength="50" Width="380" runat="server"></asp:TextBox>
                            </InsertItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="POC Phone :">
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtPOCPhone" MaxLength="50" Width="380" runat="server"></asp:TextBox>
                            </InsertItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="POC Department :">
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtPOCDepartment" MaxLength="50" Width="380" runat="server"></asp:TextBox>
                            </InsertItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="POC Email :">
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtPOCEmail" MaxLength="50" Width="380" runat="server"></asp:TextBox>
                            </InsertItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="POC Fax :">
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtPOCFax" MaxLength="50" Width="380" runat="server"></asp:TextBox>
                            </InsertItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Assistant's Last Name :">
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtAssistantLastName" MaxLength="50" Width="380" runat="server"></asp:TextBox>
                            </InsertItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Assistant's First Name :">
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtAssistantFirstName" MaxLength="50" Width="380" runat="server"></asp:TextBox>
                            </InsertItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Assistant's Phone :">
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtAssistantPhone" MaxLength="50" Width="380" runat="server"></asp:TextBox>
                            </InsertItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="New Company?:">
                            <InsertItemTemplate>
                                <asp:ListBox ID="lstAccount" SelectionMode="Multiple" runat="server"  Rows="2" Width="280" DataSourceID="NewItemInfoDS" DataTextField="Description" DataValueField="Value"></asp:ListBox>
                            </InsertItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="Company's Website :">
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtWebsite" Width="380" runat="server"></asp:TextBox>
                            </InsertItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Employee Quantity :">
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtEmpQuantity" Width="380" onkeypress="EnterOnlyNumeric()"  runat="server"></asp:TextBox>
                            </InsertItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Company Value Goal :">
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtComValueGoal" onkeypress="EnterOnlyNumeric()" Width="380" runat="server"></asp:TextBox>
                            </InsertItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="Industry:">
                            <InsertItemTemplate>
                                <asp:ListBox ID="lstIndustry" SelectionMode="Multiple" runat="server"  Rows="5"  Width="280" DataSourceID="IndustryDS" DataTextField="IndustryTypeName" DataValueField="IndID"></asp:ListBox>
                            </InsertItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Sandler Rep Last Name :">
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtRepLastName" MaxLength="50" Width="380" runat="server"></asp:TextBox>
                            </InsertItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Sandler Rep First Name :">
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtRepFirstName" MaxLength="50" Width="380" runat="server"></asp:TextBox>
                            </InsertItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Discussion Topic :">
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtDisTopic" Width="380" runat="server"></asp:TextBox>
                            </InsertItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Action Step :">
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtActStep" Width="380" runat="server"></asp:TextBox>
                            </InsertItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Last Contact Date :">
                            <InsertItemTemplate>
                                <asp:TextBox ID="LastContactDate" runat="server" />&nbsp;<asp:Image ID="calanderImageLCD" runat="server" ImageUrl="~/images/calendar.gif" ImageAlign="Middle" />
                                <asp:CalendarExtender ID="CalendarExtender1"  runat="server" TargetControlID="LastContactDate" PopupButtonID="calanderImageLCD" CssClass="calendar"></asp:CalendarExtender>
                            </InsertItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Next Contact Date :">
                            <InsertItemTemplate>
                                <asp:TextBox ID="NextContactDate" runat="server" />&nbsp;<asp:Image ID="calanderImageNCD" runat="server" ImageUrl="~/images/calendar.gif" ImageAlign="Middle" />
                                <asp:CalendarExtender ID="CalendarExtender2"  runat="server" TargetControlID="NextContactDate" PopupButtonID="calanderImageNCD" CssClass="calendar"></asp:CalendarExtender>
                             </InsertItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Creation Date :">
                            <InsertItemTemplate>
                                <asp:TextBox ID="CreationDate" runat="server" />&nbsp;<asp:Image ID="calanderImageCRD" runat="server" ImageUrl="~/images/calendar.gif" ImageAlign="Middle" />
                                <asp:CalendarExtender ID="CalendarExtender3"  runat="server" TargetControlID="CreationDate" PopupButtonID="calanderImageCRD" CssClass="calendar"></asp:CalendarExtender>
                             </InsertItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Notes :">
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtNotes" Width="380" runat="server"></asp:TextBox>
                            </InsertItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField ShowHeader="False">
                            <InsertItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert"
                                    Text="Search" ForeColor="Blue" Font-Bold="true"></asp:LinkButton>&nbsp;&nbsp;
                                <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel"
                                    Text="Clear" ForeColor="Blue" Font-Bold="true"></asp:LinkButton>
                            </InsertItemTemplate>
                        </asp:TemplateField>
                    </Fields>
                    <FieldHeaderStyle Wrap="False" />
                    <HeaderStyle Wrap="False" BackColor="DarkRed" Font-Bold="True" ForeColor="White" />
                    <InsertRowStyle Wrap="False" />
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                </asp:DetailsView>
            </td>
        </tr>
        <tr>
            <td>
                <asp:ObjectDataSource ID="IndustryDS" runat="server" TypeName="SandlerRepositories.CompaniesRepository" SelectMethod="GetAllIndustries"></asp:ObjectDataSource>
                <asp:ObjectDataSource ID="NewItemInfoDS" runat="server" TypeName="SandlerRepositories.CompaniesRepository" SelectMethod="GetNewItemOptions"></asp:ObjectDataSource>
                <asp:ObjectDataSource ID="BillingAddressDS" runat="server" TypeName="SandlerRepositories.CompaniesRepository" SelectMethod="GetBillingOptions"></asp:ObjectDataSource>
             </td>
        </tr>
     </table> 
     </ContentTemplate>
     </asp:UpdatePanel>  
</asp:Content>

