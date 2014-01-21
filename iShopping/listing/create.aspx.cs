using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Framework.BLL;

public partial class listing_create : BaseController
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!AuthCheck())
        {
            Response.Redirect("/user/login");
        }

        ListingBL _ListingBL = new ListingBL();

        int listingID = _ListingBL.Create((int)Session["UserID"]);

        if (listingID > 0)
        {
            Response.Redirect("/listing/save/" + listingID);
        }
    }
}