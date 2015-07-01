<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BSZ.aspx.cs" Inherits="BSZ" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BSZ für Wirtschaft und Datenverarbeitung</title>
    <style type="text/css">
        .style1 {
            width: 789px;
            height: 97px;
        }

        html {
            height: 100%;
        }

        body {
            height: 100%;
        }

        #outerDiv {
            margin: 0 auto;
            padding: 0;
            width: 790px;
            min-height: 100%;
            background-image: url('Images/Background.jpg');
        }

        #footer {
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

        #mainColumn {
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
                <img alt="" class="style1" src="Images/Schuleneu.jpg" />
            </div>

            <div id="mainColumn">
                <p>
                    <asp:LinkButton ID="LinkButton1" runat="server" OnCommand="Link_Command" CommandName="Ausbildung">Ausbildung</asp:LinkButton>
                    -
                    <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Events" OnCommand="Link_Command">Veranstaltungen</asp:LinkButton>
                    -
                    <asp:LinkButton ID="LinkButton3" runat="server" CommandName="SelectedEvents" OnCommand="Link_Command">ausgewählte Veranstaltungen</asp:LinkButton>
                </p>
                <p>
                    Über unsere Schule
                </p>
                <asp:MultiView ID="MultiViewBSZ" runat="server" ActiveViewIndex="0">
                    <asp:View ID="ViewAusbildung" runat="server">
                        Städtische Berufsfachschule für Büroberufe
                         3-jährige Berufsausbildung (Vollzeitunterricht) zum/zur Kaufmann/Kauffrau für Büromanagement
                         halbjähriges Praktikum in Betrieben der Region im 3. Ausbildungsjahr 
                        <br />
                        <hr />
                        Städtische Fachschule für IT-Berufe<br />
                         3-jährige Berufsausbildung (Vollzeitunterricht) <br />
                        zum/zur Informatikkaufmann/-kauffrau<br />
                        Fachinformatiker/in - Anwendungsentwicklung - <br />
                        halbjähriges Praktikum in Betrieben der Region im 3. Ausbildungsjahr
                        <br />
                        <hr />
                        Städt. Beufsfachschule für kaufm. Assistenten<br />
                         2-jährige Berufsausbildung (Vollzeitunterricht) zum/zur <br />
                         Staatlich geprüften Kaufmännischen Assistenten/in 
                    </asp:View>
                    <asp:View ID="ViewEvents" runat="server">
                        <asp:CheckBoxList ID="CheckBoxListEvents" runat="server">
                        </asp:CheckBoxList>
                        <asp:LinkButton ID="LinkButtonAuswahl" runat="server" OnClick="LinkButtonAuswahl_Click">auswählen</asp:LinkButton>
                    </asp:View>
                    <asp:View ID="ViewSelectedEvents" runat="server">
                        <asp:Repeater ID="RepeaterEvents" runat="server">
                            <HeaderTemplate>
                                ausgewählte Veranstaltung<br />
                                <ul>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <li><%# Container.DataItem %></li>
                            </ItemTemplate>
                            <FooterTemplate>
                                </ul>
                                Sie erhalten eine Einladung<br />
                            </FooterTemplate>
                        </asp:Repeater>
                    </asp:View>
                </asp:MultiView>
            </div>
            <div id="footer">
                (C) BSZ
            </div>
        </div>
    </form>
</body>
</html>
