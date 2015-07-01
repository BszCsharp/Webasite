<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Meine 2. ASP-Seite</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-size: 24px">
    Das erste ASP-Beispiel
       <asp:ListBox ID="ListBox1" runat="server" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged"></asp:ListBox> 

    </div>
    </form>
</body>
</html>
