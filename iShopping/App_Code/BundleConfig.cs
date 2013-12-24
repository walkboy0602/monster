using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.UI;

namespace iShopping
{
    public class BundleConfig
    {
        // For more information on Bundling, visit http://go.microsoft.com/fwlink/?LinkID=303951
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/WebFormsJs").Include(
                            "~/Scripts/WebForms/WebForms.js",
                            "~/Scripts/WebForms/WebUIValidation.js",
                            "~/Scripts/WebForms/MenuStandards.js",
                            "~/Scripts/WebForms/Focus.js",
                            "~/Scripts/WebForms/GridView.js",
                            "~/Scripts/WebForms/DetailsView.js",
                            "~/Scripts/WebForms/TreeView.js",
                            "~/Scripts/WebForms/WebParts.js"));

            // Order is very important for these files to work, they have explicit dependencies
            bundles.Add(new ScriptBundle("~/bundles/MsAjaxJs").Include(
                    "~/Scripts/WebForms/MsAjax/MicrosoftAjax.js",
                    "~/Scripts/WebForms/MsAjax/MicrosoftAjaxApplicationServices.js",
                    "~/Scripts/WebForms/MsAjax/MicrosoftAjaxTimer.js",
                    "~/Scripts/WebForms/MsAjax/MicrosoftAjaxWebForms.js"));

            // Use the Development version of Modernizr to develop with and learn from. Then, when you’re
            // ready for production, use the build tool at http://modernizr.com to pick only the tests you need
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                            "~/Scripts/modernizr-*"));

            bundles.Add(new ScriptBundle("~/bundles/common").Include(
                "~/Scripts/global.js",
                "~/Scripts/plugin/holder.js"
                ));

            bundles.Add(new ScriptBundle("~/bundles/script").Include(
                "~/Scripts/js/jquery.js",
                "~/Scripts/js/bootstrap.min.js",
                "~/Scripts/js/ddlevelsmenu.js", //dropdown menu
                "~/Scripts/js/jquery.carouFredSel-6.2.1-packed.js", //CaroFredSel
                "~/Scripts/js/jquery.countdown.min.js", //Countdown
                "~/Scripts/js/jquery.navgoco.min.js", //Navco
                "~/Scripts/js/filter.js", //Filter for suport page
                "~/Scripts/js/respond.min.js", //Respond JS for IE8
                "~/Scripts/js/html5shiv.js", //HTML5 Support for IE
                "~/Scripts/js/jquery.validationEngine.js", //Validation Engine
                "~/Scripts/js/custom.js"
                ));

            //Angular
            bundles.Add(new ScriptBundle("~/bundles/angular").Include(
                 "~/Scripts/angular/angular.js",
                 "~/Scripts/angular/angular-sanitize.js",
                 "~/Scripts/angular/apps.js",
                 "~/Scripts/angular/api.js",
                 "~/Scripts/angular/ui-bootstrap-tpls-0.6.0.js",
                 "~/Scripts/angular/user.js"
                 ));

            ScriptManager.ScriptResourceMapping.AddDefinition(
                "respond",
                new ScriptResourceDefinition
                {
                    Path = "~/Scripts/respond.min.js",
                    DebugPath = "~/Scripts/respond.js",
                });
        }
    }
}