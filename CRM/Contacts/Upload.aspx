﻿<%@ page title="CRM - Upload Contact" language="C#" masterpagefile="~/CRM.master" autoeventwireup="true" inherits="CRM_Contacts_Upload, App_Web_qg5xc0yw" enableeventvalidation="true" %>

<%@ Register Src="../Pager.ascx" TagName="Pager" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <input id="hdnFrenchiseeID" type="hidden" runat="server" />
    <div id="dialog" title="Upload Data:">
        <asp:Panel ID="pnlFileUpload" runat="server">
            <table>
                <tr>
                    <td>
                        <asp:DropDownList ID="companyList" runat="server">
                        </asp:DropDownList>
                        <asp:Label ID="lblCompanyListRequired" ForeColor="Red" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:FileUpload ID="fileToUpload" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblFileToUpload" ForeColor="Red" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnUpload" runat="server" CssClass="sandlerButton" Text="Upload"
                            OnClick="btnUpload_Click" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </div>
    <script type="text/javascript">
        $(document).ready(function () {
            //            var frenchiseeId = $('#<%=hdnFrenchiseeID.ClientID%>').val();
            //            log(frenchiseeId);
            //            var href = window.location.href.split('/');
            //            var baseUrl = href[0] + '//' + href[2] + '/' + href[3];

            //            var companyList = $('#<%=companyList.ClientID%>');
            //alert($('#<%=showHideDialogFlag.ClientID %>').val());
            if ($('#<%=showHideDialogFlag.ClientID %>').val() == 1) {
                //            $('#uploadCompanyData').click(function () {
                //                $('#dialog').dialog('open');
                //                return false;
                //            });


                //            $('#dialog').dialog('open');
                //            return false;
                $('#dialog').dialog({

                    autoOpen: true,
                    width: 500
                    /*,
                    buttons: {
                    "Ok": function () {
                    $(this).dialog("close");
                    },
                    "Cancel": function () {
                    $(this).dialog("close");
                    }
                    }*/
                });
                //                $.ajax({
                //                    url: baseUrl + "/api/Companies/",
                //                    type: 'GET',
                //                    contentType: 'application/json',
                //                    data: { frenchiseeId: frenchiseeId },
                //                    success: function (data) {
                //                        companyList.append($('<option></option>').val('0').html('Select company'));
                //                        $.each(data.$values, function (i, item) {
                //                            log(item);
                //                            companyList.append($('<option></option>').val(item.COMPANIESID).html(item.COMPANYNAME));
                //                        });
                //                    },
                //                    error: function (xhr, status, somthing) {
                //                        log(status);
                //                    }
                //                });
                $('#dialog').parent().appendTo($("form:first"));
            }
            else {
                $('#dialog').dialog('close')
            }
        });
    </script>
    <asp:HiddenField runat="server" ID="showHideDialogFlag" Value="1" />
    <table id="tblMain" width="100%">
        <tr>
            <td>
                <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td width="100%">
                <asp:GridView Width="100%" ID="gvCompanies" runat="server" AutoGenerateColumns="false">
                    <Columns>
                        <asp:BoundField ItemStyle-HorizontalAlign="Center" HeaderStyle-ForeColor="Blue" DataField="FIRSTNAME"
                            HeaderText="First Name" />
                        <asp:BoundField ItemStyle-HorizontalAlign="Center" HeaderStyle-ForeColor="Blue" DataField="LASTNAME"
                            HeaderText="Last Name" />
                        <asp:BoundField ItemStyle-HorizontalAlign="Center" HeaderStyle-ForeColor="Blue" DataField="PHONE"
                            HeaderText="Phone Number" />
                        <asp:BoundField ItemStyle-HorizontalAlign="Center" HeaderStyle-ForeColor="Blue" DataField="E-mail"
                            HeaderText="Email" />
                        <asp:BoundField ItemStyle-HorizontalAlign="Center" HeaderStyle-ForeColor="Blue" DataField="Errormessage"
                            HeaderText="Message" />
                    </Columns>
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
