using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Routing;
using Microsoft.AspNet.FriendlyUrls;

namespace iShopping
{
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            var settings = new FriendlyUrlSettings();
            settings.AutoRedirectMode = RedirectMode.Permanent;

            routes.MapPageRoute("save-listing-id", //Route name
                "listing/save/{id}",  //URL with parameters
                "~/listing/save.aspx", //Web Form page
                false, null, new RouteValueDictionary { { "id", @"\d+" } });

            routes.EnableFriendlyUrls(settings);
        }
    }
}