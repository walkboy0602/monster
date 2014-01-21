using System;
using System.Collections;
using System.Collections.Generic;
using System.Web;
public partial class Admin_ClearCache : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        IDictionaryEnumerator IDenum = HttpContext.Current.Cache.GetEnumerator();
        while (IDenum.MoveNext())
        {
            HttpContext.Current.Cache.Remove(IDenum.Key.ToString());
            lblMsg.Text = lblMsg.Text + IDenum.Key.ToString() + " cache removed.<br />";
        }
    }
}