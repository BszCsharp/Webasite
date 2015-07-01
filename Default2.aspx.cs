using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    int zahl = 20;
    protected void Page_Load(object sender, EventArgs e)
    {
         TextBoxZahl.Text = zahl.ToString();
    }
    protected void ButtonIncrease_Click(object sender, EventArgs e)
    {
        Int32 z = Convert.ToInt32(TextBoxZahl.Text);
        z++;
        TextBoxZahl.Text = z.ToString();
        if (z % 2 == 1)
        {
            TextBoxZahl.BackColor = System.Drawing.Color.Yellow;
        }
        else TextBoxZahl.BackColor = System.Drawing.Color.Green; 
    }
}