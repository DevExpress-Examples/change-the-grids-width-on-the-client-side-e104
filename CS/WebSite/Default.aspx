<%-- BeginRegion TagPrefix and page properties --%>
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Grid_ChangeWidthOnClient_ChangeWidthOnClient" %>
<%@ Register Assembly="DevExpress.Web.v13.1" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.v13.1" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dxwgv" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%-- EndRegion --%>


<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Change grid width on the client</title>
<script language="javascript" type="text/javascript">
function ChangeGridWidth(sel) {
    document.getElementById("gridContainer").style.width = sel.value;
}
</script>
</head>
<body>
    <form id="form1" runat="server">
    
    Change the grid size: <select onchange="ChangeGridWidth(this)">
        <option value="400px">400px</option>
        <option value="500px">500px</option>
        <option value="600px">600px</option>
        <option value="50%" selected="selected">50%</option>
        <option value="75%">75%</option>
        <option value="100%">100%</option>
    </select>
    <br />
    <div id="gridContainer" style="width:50%">
    <dxwgv:ASPxGridView ID="grid" ClientInstanceName="grid" runat="server" DataSourceID="AccessDataSource1" KeyFieldName="OrderID" 
        Width="100%" AutoGenerateColumns="False">
        <Columns>
            <%-- BeginRegion Auto Generated Columns --%>
            <dxwgv:GridViewDataColumn FieldName="CompanyName" VisibleIndex="0">
            </dxwgv:GridViewDataColumn>
            <dxwgv:GridViewDataColumn FieldName="Country" VisibleIndex="3">
            </dxwgv:GridViewDataColumn>
            <dxwgv:GridViewDataColumn FieldName="Quantity" VisibleIndex="5" Name="Quantity">
            </dxwgv:GridViewDataColumn>
            <%-- EndRegion --%>
            <dxwgv:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="4">
                <PropertiesTextEdit DisplayFormatString="c">
                </PropertiesTextEdit>
            </dxwgv:GridViewDataTextColumn>
        </Columns>
    </dxwgv:ASPxGridView>
    </div>
    <%-- BeginRegion DataSource --%>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/nwind.mdb"
        SelectCommand="SELECT [Customers.CompanyName] AS CompanyName, [City], [Region], [Country], [Salesperson], [OrderID], [OrderDate], [ProductID], [ProductName], [UnitPrice], [Quantity], [Discount], [ExtendedPrice], [Freight] FROM [Invoices]">
    </asp:AccessDataSource>
    <%-- EndRegion --%>
    </form>
</body>
</html>
