<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <cc1:AutoCompleteExtender ID="AutoCompleteExtender1" TargetControlID="TextBox1"   MinimumPrefixLength="1" EnableCaching="true" CompletionSetCount="1" CompletionInterval="1000"  ServiceMethod="fillgrid" runat="server"></cc1:AutoCompleteExtender>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id">
            <Columns>
                <asp:BoundField DataField="name" HeaderText="name" />
                <asp:BoundField DataField="address" HeaderText="address" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
