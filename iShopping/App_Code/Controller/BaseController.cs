using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using Framework.BLL;
using Framework.Model;

/// <summary>
/// Summary description for BaseController
/// </summary>
public class BaseController : System.Web.UI.Page
{
    public BaseController() { }

    internal static int UserID { get; set; }
    internal static string Email { get; set; }
    internal static string Firstname { get; set; }
    internal static string Lastname { get; set; }

    protected void Page_PreInit(object sender, EventArgs e)
    {
        GetSession();
    }

    public static void GetSession()
    {
        var session = HttpContext.Current.Session;

        UserID = Convert.ToInt32(session["UserID"]);
        Email = Convert.ToString(session["Email"]);
        Firstname = Convert.ToString(session["Firstname"]);
        Lastname = Convert.ToString(session["Lastname"]);

    }

    public static void SetSession()
    {
        var Session = HttpContext.Current.Session;

        UserBL _UserBL = new UserBL();

        if (Convert.ToInt32(Session["UserID"]) == 0)
        {
            var id = Convert.ToInt32(HttpContext.Current.User.Identity.Name);

            User u = _UserBL.AutoLogin(id);

            if (u != null)
            {
                Session["UserID"] = u.UserID;
                Session["Email"] = u.Email;
                Session["Firstname"] = u.FirstName;
                Session["Lastname"] = u.LastName;
            }
        }
    }

    public static bool AuthCheck()
    {
        if (HttpContext.Current.User.Identity.IsAuthenticated)
        {
            SetSession();
            return true;
        }
        else
        {
            return false;   
        }
    }

    public static byte[] GetBytes(string str)
    {
        byte[] bytes = new byte[str.Length * sizeof(char)];
        System.Buffer.BlockCopy(str.ToCharArray(), 0, bytes, 0, bytes.Length);
        return bytes;
    }
}