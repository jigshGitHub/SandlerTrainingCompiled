﻿<%@ page title="My Account - Coach Edit" language="C#" masterpagefile="~/CRM.master" autoeventwireup="true" inherits="Account_Coach_Edit, App_Web_o4biwyel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <input id="hdnCorporateUserID" type="hidden" runat="server" />
    <input id="hdnCoachId" type="hidden" runat="server" />
    <table id="editContainer">
        <tr>
            <th class="tdTC" align="left">
                Edit Coach:
            </th>
        </tr>
        <tr>
            <td style="width: 50%">
                <table style="background-color: White; border-color: #999999; border-width: 1px;
                    border-style: solid; height: 50px; width: 100%; border-collapse: collapse;">
                    <tr style="color: Black; background-color: #EEEEEE; white-space: nowrap;">
                        <td width="20%">
                            First Name
                        </td>
                        <td width="1%">
                            :
                        </td>
                        <td width="70%">
                            <input data-bind="value:firstName" type="text" style="width: 100%" />
                        </td>
                        <td width="9%">
                            <span data-bind="text:firstNameRequired, visible:firstNameRequiredHasError"></span>
                        </td>
                    </tr>
                    <tr style="color: Black; background-color: #DCDCDC; white-space: nowrap;">
                        <td>
                            Last Name
                        </td>
                        <td>
                            :
                        </td>
                        <td>
                            <input data-bind="value:lastName" type="text" style="width: 100%" />
                        </td>
                        <td>
                            <span data-bind="text:lastNameRequired, visible:lastNameRequiredHasError"></span>
                        </td>
                    </tr>
                    <tr style="color: Black; background-color: #EEEEEE; white-space: nowrap;">
                        <td>
                            Address
                        </td>
                        <td>
                            :
                        </td>
                        <td>
                            <input data-bind="value:address" type="text" style="width: 100%" />
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr style="color: Black; background-color: #DCDCDC; white-space: nowrap;">
                        <td>
                            City
                        </td>
                        <td>
                            :
                        </td>
                        <td>
                            <input data-bind="value:city" type="text" style="width: 100%" />
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr style="color: Black; background-color: #EEEEEE; white-space: nowrap;">
                        <td>
                            State
                        </td>
                        <td>
                            :
                        </td>
                        <td>
                            <input data-bind="value:state" type="text" style="width: 100%" />
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr style="color: Black; background-color: #DCDCDC; white-space: nowrap;">
                        <td>
                            Zip
                        </td>
                        <td>
                            :
                        </td>
                        <td>
                            <input data-bind="value:zip" type="text" style="width: 100%" />
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr style="color: Black; background-color: #EEEEEE; white-space: nowrap;">
                        <td>
                            Email
                        </td>
                        <td>
                            :
                        </td>
                        <td>
                            <input data-bind="value:email" type="text" style="width: 100%" />
                        </td>
                        <td>
                            <span data-bind="text:emailRequired, visible:emailRequiredHasError"></span>
                        </td>
                    </tr>
                    <tr style="color: Black; background-color: #DCDCDC; white-space: nowrap;">
                        <td>
                            Email subscription
                        </td>
                        <td>
                            :
                        </td>
                        <td style="width: 100%; float: left">
                            <input data-bind="checked:emailSubscription" type="checkbox" />
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr style="color: Black; background-color: #EEEEEE; white-space: nowrap;">
                        <td>
                            Select region
                        </td>
                        <td>
                            :
                        </td>
                        <td>
                            <select data-bind="options:regions,optionsValue:'ID', optionsText: 'Name',optionsCaption: ' ', value: region">
                            </select>
                        </td>
                        <td>
                            <span data-bind="text:regionRequired, visible:regionRequiredHasError"></span>
                        </td>
                    </tr>
                    <tr style="color: Black; background-color: #DCDCDC; white-space: nowrap;">
                        <td colspan="4">
                            <a href="#" style="color: Blue; font-weight: bold;" data-bind="click:save">Update</a>
                            &nbsp;&nbsp; <a href="Index.aspx" style="font-weight: bold">Cancel</a>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <div id="resultSummary" style="color: Red">
                    <ul>
                    </ul>
                </div>
            </td>
        </tr>
    </table>
    <br />
    <script type="text/javascript">

        function CoachVM() {

            var href = window.location.href.split('/');
            var baseUrl = href[0] + '//' + href[2] + '/' + href[3];
            var self = this;
            self.userNameEnabled = ko.observable(false);
            self.createdBy = ko.observable($('#<%=hdnCorporateUserID.ClientID%>').val());
            self.id = ko.observable($('#<%=hdnCoachId.ClientID%>').val());
            self.firstName = ko.observable('');
            self.firstNameRequired = ko.observable('*');
            self.firstNameRequiredMsg = ko.observable('');
            self.firstNameRequiredHasError = ko.observable(false);
            self.lastName = ko.observable('');
            self.lastNameRequired = ko.observable('*');
            self.lastNameRequiredMsg = ko.observable('');
            self.lastNameRequiredHasError = ko.observable(false);
            self.phoneNumber = ko.observable('');
            self.address = ko.observable('');
            self.city = ko.observable('');
            self.state = ko.observable('');
            self.zip = ko.observable('');
            self.regions = ko.observableArray([]);
            self.region = ko.observable(); // Nothing selected by default
            self.regionRequired = ko.observable('*');
            self.regionRequiredMsg = ko.observable('');
            self.regionRequiredHasError = ko.observable(false);
            self.email = ko.observable('');
            self.emailRequired = ko.observable('*');
            self.emailRequiredMsg = ko.observable('');
            self.emailRequiredHasError = ko.observable(false);
            self.emailSubscription = ko.observable(true);
            self.userName = ko.observable();
            self.validationErrors = ko.observableArray([]);

            $.ajax({
                url: baseUrl + "/api/Regions/Get/",
                type: 'GET',
                contentType: 'application/json',
                data: { id: self.id, parameter: 'Coach' },
                success: function (data) {
                    //log(data);
                    $.each(data.$values, function (i, item) {
                        self.regions.push(item);
                    });
                },
                error: function (xhr, status, somthing) {
                    log(status);
                }
            });

            $.ajax({
                url: baseUrl + "/api/Coach/",
                type: 'GET',
                contentType: 'application/json',
                data: { id: self.id },
                success: function (data) {
                    self.firstName((data.FirstName == undefined) ? '' : data.FirstName);
                    self.lastName((data.LastName == undefined) ? '' : data.LastName);
                    self.phoneNumber(data.PhoneNumber);
                    self.address(data.ADDRESS);
                    self.city(data.City);
                    self.state(data.State);
                    self.zip(data.Zip);
                    self.region(data.RegionID);
                    self.email((data.Email == undefined) ? '' : data.Email);
                    self.emailSubscription(data.IsEmailSubscription);
                    self.userName(data.UserName);
                },
                error: function (xhr, status, somthing) {
                    log(status);
                }
            });

            self.save = function () {
                self.validationErrors([]);
                self.firstNameRequiredHasError(false);
                self.lastNameRequiredHasError(false);
                self.regionRequiredHasError(false);
                self.emailRequiredHasError(false);

                $('#resultSummary ul').empty();
                if (self.firstName() == '') {
                    self.firstNameRequiredHasError(true);
                    self.firstNameRequiredMsg('First Name is required');
                    self.validationErrors.push(self.firstNameRequiredMsg());
                }

                if (self.lastName() == '') {
                    self.lastNameRequiredHasError(true);
                    self.lastNameRequiredMsg('Last Name is required');
                    self.validationErrors.push(self.lastNameRequiredMsg());
                }

                if (self.region() == undefined) {
                    self.regionRequiredHasError(true);
                    self.regionRequiredMsg('Region is required');
                    self.validationErrors.push(self.regionRequiredMsg());
                }

                if (self.email() == '') {
                    self.emailRequiredHasError(true);
                    self.emailRequiredMsg('Email is required');
                    self.validationErrors.push(self.emailRequiredMsg());
                }

                if (self.validationErrors() == '') {
                    var json = JSON.stringify({
                        ADDRESS: self.address(),
                        City: self.city(),
                        FirstName: self.firstName(),
                        LastName: self.lastName(),
                        PhoneNumber: self.phoneNumber(),
                        State: self.state(),
                        Zip: self.zip(),
                        CreatedByCorporateID: self.createdBy(),
                        UserName: self.firstName() + '.' + self.lastName(),
                        RegionID: self.region(),
                        Email: self.email(),
                        IsEmailSubscription: self.emailSubscription(),
                        ID: self.id()
                    });

                    $.ajax({
                        url: baseUrl + "/api/Coach/",
                        type: "POST",
                        data: json,
                        dataType: "json",
                        contentType: "application/json; charset=utf-8",
                        success: function (response) {
                            log(response.UserName);
                            $('#resultSummary ul').append('<li>Data being updated.</li>');
                        },
                        error: function (response, errorText) {
                        }
                    });
                }
                else {
                    $.each(self.validationErrors(), function (i, item) {
                        log(item);
                        $('#resultSummary ul').append('<li>' + item + '</li>');
                    });

                }

            };
        }
        $(document).ready(function () {
            ko.applyBindings(new CoachVM());
        });
    </script>
</asp:Content>
