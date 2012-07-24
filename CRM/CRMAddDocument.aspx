﻿<%@ page title="CRM" language="C#" masterpagefile="~/CRM.master" autoeventwireup="true" inherits="CRMAddDocument, App_Web_vfk3jxa4" %>

<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI, Version=1.9.0.0, Culture=neutral, PublicKeyToken=24d65337282035f2" %>
<%@ Import Namespace="SandlerRepositories" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <table>
        <tr>
            <th class="tdTC" style="width: 280px" align="left">
                Attach New Document :
            </th>
        </tr>
        <tr>
            <td style="width: 280px">
                <asp:DetailsView ID="dvDocument" runat="server" Height="50px" Width="300px" AutoGenerateRows="False"
                    DefaultMode="Insert" CellPadding="3" BorderStyle="None" BorderWidth="1px" BackColor="White"
                    BorderColor="#999999" GridLines="Vertical" OnItemInserted="dvDocument_ItemInserted"
                    OnModeChanging="dvDocument_ModeChanging" OnItemInserting="dvDocument_ItemInserting">
                    <Fields>
                        <asp:TemplateField HeaderText="Select Opportunity:">
                            <InsertItemTemplate>
                                <asp:DropDownList ID="ddlOpportunity" runat="server" DataSourceID="OpprtunityDS"
                                    DataTextField="Opp_Name" DataValueField="Opp_ID" SelectedValue='<%# Bind("Opp_ID") %>'>
                                </asp:DropDownList>
                            </InsertItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Document Status :">
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtDocStatus" MaxLength="50" Width="380" runat="server" Text='<%# Bind("Document_Status") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvDocStatus" ControlToValidate="txtDocStatus" Display="Static"
                                    InitialValue="" runat="server" ErrorMessage="Please Enter Document Status to proceed.">
                    *
                  </asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Document Loaded :">
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtDocLoaded" MaxLength="50" Width="380" runat="server" Text='<%# Bind("Document_Loaded") %>'></asp:TextBox>
                            </InsertItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Last Modify Date :">
                            <InsertItemTemplate>
                                <ew:CalendarPopup ID="LastModifyDate" Nullable="True" DisplayPrevNextYearSelection="True"
                                    SelectedDate='<%# Bind("Last_Modify_Date") %>' runat="server" AllowArbitraryText="False"
                                    CellPadding="2px" CellSpacing="0px" Culture="English (United States)" JavascriptOnChangeFunction=""
                                    LowerBoundDate="" ShowClearDate="True" UpperBoundDate="12/31/9999 23:59:59" ImageUrl="../images/calendar.gif"
                                    ControlDisplay="TextBoxImage">
                                    <TodayDayStyle BackColor="LightGoldenrodYellow" Font-Names="Verdana,Helvetica,Tahoma,Arial"
                                        Font-Size="XX-Small" ForeColor="Black" />
                                    <WeekendStyle BackColor="LightGray" Font-Names="Verdana,Helvetica,Tahoma,Arial" Font-Size="XX-Small"
                                        ForeColor="Black" />
                                    <OffMonthStyle BackColor="AntiqueWhite" Font-Names="Verdana,Helvetica,Tahoma,Arial"
                                        Font-Size="XX-Small" ForeColor="Gray" />
                                    <WeekdayStyle BackColor="White" Font-Names="Verdana,Helvetica,Tahoma,Arial" Font-Size="XX-Small"
                                        ForeColor="Black" />
                                    <SelectedDateStyle BackColor="Yellow" Font-Names="Verdana,Helvetica,Tahoma,Arial"
                                        Font-Size="XX-Small" ForeColor="Black" />
                                    <MonthHeaderStyle BackColor="Yellow" Font-Names="Verdana,Helvetica,Tahoma,Arial"
                                        Font-Size="XX-Small" ForeColor="Black" />
                                    <HolidayStyle BackColor="White" Font-Names="Verdana,Helvetica,Tahoma,Arial" Font-Size="XX-Small"
                                        ForeColor="Black" />
                                    <GoToTodayStyle BackColor="White" Font-Names="Verdana,Helvetica,Tahoma,Arial" Font-Size="XX-Small"
                                        ForeColor="Black" />
                                    <DayHeaderStyle BackColor="Orange" Font-Names="Verdana,Helvetica,Tahoma,Arial" Font-Size="XX-Small"
                                        ForeColor="Black" />
                                    <ClearDateStyle BackColor="White" Font-Names="Verdana,Helvetica,Tahoma,Arial" Font-Size="XX-Small"
                                        ForeColor="Black" />
                                </ew:CalendarPopup>
                                <asp:RequiredFieldValidator ID="LastContactDateRFV" ControlToValidate="LastModifyDate"
                                    runat="server" ErrorMessage="Please Enter Last Modify Date to proceed.">
            *
        </asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Attached Document:">
                            <InsertItemTemplate>
                                <asp:FileUpload ID="UpLoad" Width="275px" runat="server" />
                            </InsertItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField ShowHeader="False">
                            <InsertItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert"
                                    Text="Add" ForeColor="Blue" Font-Bold="true"></asp:LinkButton>&nbsp;&nbsp;
                                <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel"
                                    Text="Back To Documents" ForeColor="Blue" Font-Bold="true"></asp:LinkButton>
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
            <td style="width: 280px">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" />
            </td>
        </tr>
        <tr>
            <td style="width: 280px">
                <asp:Label ID="lblResult" runat="server" ForeColor="Red"></asp:Label><br />
                <asp:ObjectDataSource ID="OpprtunityDS" runat="server" TypeName="SandlerRepositories.OpportunityRepository"
                    SelectMethod="GetAllForDocument"></asp:ObjectDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
