using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

public partial class timezone : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        StringBuilder sb = new StringBuilder();

        foreach (TimeZoneInfo z in TimeZoneInfo.GetSystemTimeZones())
        {
            sb.Append(z.Id + "</br>");
        }

        sb.Append("UTC " + DateTime.UtcNow + "</br>");
        sb.Append("NOW " + DateTime.Now + "</br>");
        ltTest.Text = sb.ToString();
    }
}