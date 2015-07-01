<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Vorlage.aspx.cs" Inherits="Vorlage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BSZ für Wirtschaft und Datenverarbeitung</title>
    <style type="text/css">
        .style1
        {
            width: 789px;
            height: 97px;
        }
        html
        {
            height: 100%;
        }
        body
        {
            height: 100%;
        }
        #outerDiv
        {
            margin: 0 auto;
            padding: 0;
            width: 790px;
            min-height: 100%; 
            background-image: url('Images/Background.jpg');
        }
        #footer
        {
            margin: 0 auto;
            padding: 0;
            clear: both;
            width: 790px;
            font-size: xx-small;
            text-align: center;
            padding: 4px 0px 4px 0;
            background-color: #336699;
            color: #FFFFFF;
        }
        #mainColumn
        {
            float: right;
            padding: 0 0 0 0px;
            margin: 5px 5px 5px 5px;
            padding: 5px;
            min-height: 80%;
            width: 570px;
            background-color: White;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="outerDiv">
        <div id="Div1">
            <img alt="" class="style1" src="Images/Header2.png" />
        </div>
        <div id="mainColumn">
         
        </div>
        <div id="footer">
            (C) BSZ
        </div>
    </div>
    </form>
</body>
</html>