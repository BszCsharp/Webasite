using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
public partial class BSZ : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            String fname = Server.MapPath(@"App_Data\Veranstaltungen.txt");
            StreamReader reader = File.OpenText(fname);
            String zeile;
            while (!reader.EndOfStream)
            {
                zeile = reader.ReadLine();
                CheckBoxListEvents.Items.Add(zeile);
            }

            reader.Close();
            //CheckBoxListEvents.Items.Add("Informationsabend Bürokommunikation");
            //CheckBoxListEvents.Items.Add("Informationsabend Kaufm. Assistenten");
            //CheckBoxListEvents.Items.Add("Workshop: Bau einer Homepage");


        }

    }

    protected void Link_Command(object sender, CommandEventArgs e)
    {
        String viewName = "View" + e.CommandName;
        Control c = MultiViewBSZ.FindControl(viewName);
        if (!c.Equals(null))
        {
            View v = (View)c;
            MultiViewBSZ.SetActiveView(v);
        }
    }

    protected void LinkButtonAuswahl_Click(object sender, EventArgs e)
    {
        List<String> liAuswahl = new List<string>();
        foreach (ListItem l in CheckBoxListEvents.Items)
        {
            if (l.Selected)
            {
                liAuswahl.Add(l.Text);
            }
        }
        RepeaterEvents.DataSource = liAuswahl;
        RepeaterEvents.DataBind();
        if (liAuswahl.Count > 0)
        {
            // aktivieren der View der ausgew. Events
            MultiViewBSZ.SetActiveView(this.ViewSelectedEvents);
        }
    }
}