<%@ page title="CRM" language="C#" masterpagefile="~/CRM.master" autoeventwireup="true" inherits="CRMDocuments, App_Web_essflbce" %>
<%@ Import Namespace="SandlerRepositories" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

<table>

<tr>
<td><b>View Documents:</b></td>
<td align="right" colspan="2">
    <asp:LinkButton id="btnAddDocument" runat="server" Font-Size="Large" onclick="btnAddDocument_Click" ForeColor="blue">Attach New Document</asp:LinkButton>
</td>
</tr>
<tr>
<td><label for="ddlCompany"><b>Select Company :</b></label>
    <asp:DropDownList ID="ddlCompany" runat="server" DataSourceID="CompanyDS" AutoPostBack="True" DataTextField="COMPANYNAME" DataValueField="COMPANIESID" ondatabound="ddlCompany_DataBound" 
        onselectedindexchanged="ddlCompany_SelectedIndexChanged"></asp:DropDownList></td>
    <td style="Width:30"></td>
    <td align="right"><label for="ddlOpportunity"><b>Select Opportunity :</b></label>
    <asp:DropDownList ID="ddlOpportunity" runat="server" DataSourceID="OpprtunityDS" AutoPostBack="True" DataTextField="OppName"  DataValueField="OppsID" ondatabound="ddlOpportunity_DataBound" 
            onselectedindexchanged="ddlOpportunity_SelectedIndexChanged"></asp:DropDownList>
</td></tr>

<tr><td colspan="3">

<asp:GridView  Width="100%" ID="gvDocuments" runat="server" DataSourceID="DocumentsDS" AutoGenerateColumns="False" DataKeyNames="docsid" AllowSorting="True" AllowPaging="True" PageSize="20"
 onselectedindexchanged="gvDocuments_SelectedIndexChanged"  ondatabound="gvDocuments_DataBound">
         <PagerStyle BackColor="#999999" ForeColor="Blue" HorizontalAlign="Center" />
<Columns> 
    <asp:TemplateField HeaderText="Document Name" SortExpression="DocName">
        <ItemTemplate>
            <asp:HyperLink ID="ModuleLink" runat="server" Target="_blank" ForeColor="Blue" NavigateUrl='<%# Eval("DocName", "Documents\\{0}") %>' Text='<%# Eval("DocName") %>'></asp:HyperLink>
         </ItemTemplate>
        <ItemStyle HorizontalAlign="Center" />
    </asp:TemplateField>
    
    <asp:BoundField DataField="docsid" visible="False"/>

    <asp:BoundField  ItemStyle-HorizontalAlign="Center"  DataField="CompanyName"  HeaderStyle-ForeColor="Blue" HeaderText="Company Name" SortExpression="CompanyName" >
      <ItemStyle HorizontalAlign="Center"></ItemStyle>
    </asp:BoundField>

    <asp:BoundField  ItemStyle-HorizontalAlign="Center"  DataField="OppName"  HeaderStyle-ForeColor="Blue" HeaderText="Opportunity Name" SortExpression="OppName" >
      <ItemStyle HorizontalAlign="Center"></ItemStyle>
    </asp:BoundField>
    
    <asp:BoundField  ItemStyle-HorizontalAlign="Center"  DataField="DocStatusText" HeaderText="Document Status"  HeaderStyle-ForeColor="Blue" SortExpression="DocStatusText" >
      <ItemStyle HorizontalAlign="Center"></ItemStyle>
    </asp:BoundField>
    
    <asp:BoundField  ItemStyle-HorizontalAlign="Center"  DataField="updateddate" HeaderText="Last Modify Date"  HeaderStyle-ForeColor="Blue" SortExpression="updateddate" DataFormatString="{0:d}" >
      <ItemStyle HorizontalAlign="Center"></ItemStyle>
    </asp:BoundField>
    
    <asp:TemplateField ShowHeader="False">
         <ControlStyle ForeColor="Maroon" />
         <ItemTemplate>
             <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select"
                 Text="View Detail.."></asp:LinkButton>
         </ItemTemplate>
     </asp:TemplateField>
    
</Columns> 
</asp:GridView> 


</td></tr>


<tr><td colspan="3"><asp:Label  ForeColor="Red" ID="LblStatus" runat="server"></asp:Label></td></tr>

<tr><td colspan="3">
<asp:ObjectDataSource ID="CompanyDS" Runat="server" TypeName="SandlerRepositories.CompaniesRepository" SelectMethod="GetCompaniesForDDL"></asp:ObjectDataSource>
<asp:ObjectDataSource ID="DocumentsDS" Runat="server" TypeName="SandlerRepositories.DocumentsRepository" SelectMethod="GetByOppsId">
   <SelectParameters>
          <asp:ControlParameter ControlID ="ddlOpportunity" Name="OppsID" Type="Int32" />
   </SelectParameters>
</asp:ObjectDataSource> 

</td></tr>
<tr><td colspan="3">
<asp:ObjectDataSource ID="OpprtunityDS" Runat="server" TypeName="SandlerRepositories.OpportunityRepository" SelectMethod="GetByCompId">
   <SelectParameters>
          <asp:ControlParameter ControlID ="ddlCompany" Name="COMPANIESID" Type="Int32" />
   </SelectParameters>
</asp:ObjectDataSource>  
<asp:HiddenField ID="hidDocumentID" runat="server" />
</td>
</tr>
</table>
</asp:Content>

