using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Framework;
using Framework.BLL;
using Framework.Model;
using System.Text;

public partial class listing_save : BaseController
{
    ListingBL _ListingBL = new ListingBL();

    int ListingID;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack) return;

        if (!AuthCheck())
        {
            Response.Redirect("/user/login");
        }


        int UserID = (int)Session["UserID"];

        //Invalid Listing ID
        Int32.TryParse(Page.RouteData.Values["id"].ToString(), out ListingID);
        if (ListingID <= 0)
        {
            Response.Redirect("~/", true); 
        }

        //Listing not belong to the user
        if (_ListingBL.ValidateListing(ListingID, UserID) == false)
        {
            //TODO:: Create Error Page
            Response.Redirect("~/", true); 
        }

        //ltMainCategory.Text = GetMainCategory();
        //List<objReference> CategoryLv2List = DBReference.GetList(ReferenceType.CategoryLv2);

        //if (CategoryLv2List.Count() != 0)
        //{
        //    ltCatType.Text = CustomControl.GenerateDropDown(CategoryLv2List);
        //}

    }

    private string GetMainCategory()
    {
        StringBuilder sb = new StringBuilder();

        List<objReference> MainCategoryList2 = DBReference.GetList(ReferenceType.MainCategory);

        if (MainCategoryList2.Count() != 0)
        {
            foreach (var item in MainCategoryList2)
            {
                sb.Append("<div class='col-md-3' ng-click='CatLv0Click(" + item.KeyString + ")'>");
                sb.Append("<div class='category'>");
                sb.Append("<i class='" + item.CssClass + "'></i>");
                sb.Append("<div class='category-detail'>");
                sb.Append(item.ValueString);
                sb.Append("</div></div></div>");
            }
        }

        return sb.ToString();
               
    }

}