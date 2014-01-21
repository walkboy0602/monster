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
        
            bundles.Add(new ScriptBundle("~/bundles/common").Include(
                "~/Scripts/global.js",
                "~/Scripts/plugin/holder.js"
                ));

            bundles.Add(new ScriptBundle("~/bundles/script").Include(
                "~/Scripts/js/jquery.js",
                "~/Scripts/js/plugin/bootstrap-select.js", //boostrap dropdown
                "~/Scripts/js/bootstrap.min.js",
                "~/Scripts/js/ddlevelsmenu.js", //dropdown menu
                "~/Scripts/js/jquery.carouFredSel-6.2.1-packed.js", //CaroFredSel
                "~/Scripts/js/jquery.countdown.min.js", //Countdown
                "~/Scripts/js/jquery.navgoco.min.js", //Navco
                "~/Scripts/js/respond.min.js", //Respond JS for IE8
                "~/Scripts/js/html5shiv.js", //HTML5 Support for IE
                "~/Scripts/js/languages/jquery.validationEngine-en.js", //Validation Engine English
                "~/Scripts/js/jquery.validationEngine.js", //Validation Engine
                "~/Scripts/js/underscore.js", //
                "~/Scripts/js/custom.js"
                ));

            //Angular
            bundles.Add(new ScriptBundle("~/bundles/angular").Include(
                 "~/Scripts/angular/1.2.9/angular.js",
                 "~/Scripts/angular/1.2.9/angular-route.js",
                 "~/Scripts/angular/1.2.9/angular-sanitize.js",
                 "~/Scripts/angular/angular-bootstrap-select.js",
                 "~/Scripts/angular/apps.js",
                 "~/Scripts/angular/api.js",
                 "~/Scripts/angular/directive.js",
                 "~/Scripts/angular/ui-bootstrap-tpls-0.6.0.js",
                 "~/Scripts/angular/user.js",
                 "~/Scripts/angular/listing.js"
                 ));

            //CK-Editor
            bundles.Add(new ScriptBundle("~/bundles/ckeditor").Include(
                "~/Scripts/js/ckeditor/ckeditor.js"
                ));


        }
    }
}