<%@ page title="ROI" language="C#" masterpagefile="~/CRM.master" autoeventwireup="true" inherits="ROI, App_Web_re5fa2j4" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <asp:Wizard ID="wzROI" runat="server" DisplaySideBar="false" Width="80%">
        <WizardSteps>
            <asp:TemplatedWizardStep ID="submitROIData" runat="server">
                <ContentTemplate>
                    <asp:UpdatePanel ID="updPnl" runat="server">
                        <ContentTemplate>
                            <table style="background-color: White; border-color: #999999; border-width: 1px;
                                border-style: solid; width: 100%">
                                <tr>
                                    <td align="left" colspan="2">
                                        <b>
                                            <asp:Label ID="lblViewTitle" runat="server">Perform Return On Investment:</asp:Label>
                                        </b>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Label ID="lblResult" runat="server" ForeColor="Red"></asp:Label>
                                    </td>
                                </tr>
                                <tr style="color: Black; background-color: #EEEEEE;">
                                    <td style="width: 25%">
                                        Company:
                                    </td>
                                    <td style="width: 75%">
                                        <asp:DropDownList ID="drpLstCompanies" runat="server" AutoPostBack="true" OnDataBound="ddlCreateDefaultSelection"
                                            OnSelectedIndexChanged="drpLstCompanies_SelectedIndexChanged">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr style="color: Black; background-color: #DCDCDC">
                                    <td>
                                        Contacts:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="drpLstContacts" AutoPostBack="true" OnDataBound="ddlCreateDefaultSelection"
                                            runat="server" OnSelectedIndexChanged="drpLstContacts_SelectedIndexChanged">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <b>
                                            <asp:Label ID="lblAsIsSelectionTitle" runat="server">This is the Gap between your "As-Is" and "To-Be":</asp:Label>
                                        </b>
                                    </td>
                                </tr>
                                <tr style="color: Black; background-color: #EEEEEE">
                                    <td>
                                        Sales Cycle Time
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtBxSCTGap" runat="server" Enabled="false"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr style="color: Black; background-color: #DCDCDC">
                                    <td>
                                        Sales Efficiency
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtBxSEGap" runat="server" Enabled="false"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr style="color: Black; background-color: #EEEEEE">
                                    <td>
                                        Sales Qualification
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtBxSQGap" runat="server" Enabled="false"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr style="color: Black; background-color: #DCDCDC">
                                    <td>
                                        Training Cost Savings
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtBxTCSGap" runat="server" Enabled="false"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr style="color: Black; background-color: #EEEEEE">
                                    <td>
                                        Quota Achievement
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtBxQAGap" runat="server" Enabled="false"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr style="color: Black; background-color: #DCDCDC">
                                    <td>
                                        Est. Benifits Gained
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtBxEBGGap" runat="server" Enabled="false"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <b>
                                            <asp:Label ID="lblExpenditurTitle" runat="server">Enter Estimated Sales Training Expenditure for 3 Years</asp:Label>
                                        </b>
                                    </td>
                                </tr>
                                <tr style="color: Black; background-color: #DCDCDC">
                                    <td>
                                        Expenditure - Year1
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtBxYear1" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr style="color: Black; background-color: #EEEEEE">
                                    <td>
                                        Expenditure - Year2
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtBxYear2" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr style="color: Black; background-color: #DCDCDC">
                                    <td>
                                        Expenditure - Year3
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtBxYear3" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </ContentTemplate>
                <CustomNavigationTemplate>
                    <table width="100%">
                        <tr>
                            <td>
                                <a href="GapAnalysisCreate.aspx">Edit: Gap Analysis Record</a>
                            </td>
                            <td>
                                <asp:LinkButton ID="lnkNextStep" runat="server" CommandArgument="1" CommandName="viewROI"
                                    OnCommand="lnlNextStep_Click" Visible="True">View: ROI Report</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </CustomNavigationTemplate>
            </asp:TemplatedWizardStep>
            <asp:TemplatedWizardStep ID="plotChart" runat="server">
                <ContentTemplate>
                    <table style="background-color: White; width: 100%">
                        <tr>
                            <td>
                                <b>
                                    <asp:Label ID="lblViewTitle" runat="server">View ROI Report:</asp:Label>
                                </b>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 100%">
                                <table style="width: 100%">
                                    <tr>
                                        <td style="width: 20%">
                                            <table style="height: 400px">
                                                <tr>
                                                    <td align="center">
                                                        <b>Training Expense - Year 1</b>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center" style="font-weight: bold; font-size: medium">
                                                        <asp:Label ID="lblYear1" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center">
                                                        <b>Training Expense - Year 3</b>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center" style="font-weight: bold; font-size: medium">
                                                        <asp:Label ID="lblYear2" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center">
                                                        <b>Training Expense - Year 3</b>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center" style="font-weight: bold; font-size: medium">
                                                        <asp:Label ID="lblYear3" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td style="width: 80%">
                                            <div id="chartContainer" runat="server">
                                            </div>
                                        </td>
                                        <td align="center">
                                            <asp:Label ID="lblSaveStatus" runat="server" ForeColor="red"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
                <CustomNavigationTemplate>
                    <table width="100%">
                        <tr>
                            <td>
                                <a href="GapAnalysisCreate.aspx">Edit: Gap Analysis Record</a>
                            </td>
                            <td>
                                <a href="#" onclick="alert('ROI record saved.')">Save:ROI Record</a>
                            </td>
                        </tr>
                    </table>
                </CustomNavigationTemplate>
            </asp:TemplatedWizardStep>
        </WizardSteps>
    </asp:Wizard>
</asp:Content>
