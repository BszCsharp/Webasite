﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBoxZahl" runat="server">1</asp:TextBox>

        <br />
        <asp:Button ID="ButtonIncrease" runat="server" Text="Erhöhen" OnClick="ButtonIncrease_Click" />

    </div>
    </form>
</body>
</html>
