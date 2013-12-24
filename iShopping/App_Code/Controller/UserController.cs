using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Net.Http;
using System.Web.Http;
using Framework.BLL;
using Framework.Model;
using System.Web.Security;


[Authorize]
public class UserController : ApiController
{
    UserBL _UserBL;

    public UserController()
    {
        _UserBL = new UserBL();
    }

    [HttpPost]
    [ValidateModel]
    [AllowAnonymous]
    public HttpResponseMessage Register([FromBody]User user)
    {
        int AccountID = _UserBL.Register(user);

        if (AccountID > 0)
        {
            User u = _UserBL.AutoLogin(AccountID);

            var session = HttpContext.Current.Session;

            session["AccountID"] = u.AccountID;
            session["LastName"] = u.LastName;
            session["FirstName"] = u.FirstName;
            session["LoggedIn"] = true;

            return new HttpResponseMessage(HttpStatusCode.OK);
        }

        throw new HttpResponseException(HttpStatusCode.NotFound);

    }

    [HttpPost]
    [ValidateModel]
    [AllowAnonymous]
    public HttpResponseMessage Login([FromBody]LoginCredential cred)
    {
         User u = _UserBL.Login(cred);
        
         if (u != null)
         {
             var session = HttpContext.Current.Session;

             session["AccountID"] = u.AccountID;
             session["LastName"] = u.LastName;
             session["FirstName"] = u.FirstName;
             session["Email"] = u.Email;
             session["LoggedIn"] = true;

             FormsAuthentication.SetAuthCookie(u.FirstName, cred.RememberMe);

             //FormsAuthentication.SetAuthCookie(cred.Email, false);

             //FormsAuthenticationTicket objTicket = new FormsAuthenticationTicket(1, u.AccountID.ToString(), DateTime.Now, DateTime.Now.AddMinutes(240), false, u.AccountID.ToString(), FormsAuthentication.FormsCookiePath);

             //// Encrypt the ticket.
             //string encTicket = FormsAuthentication.Encrypt(objTicket);

             //HttpCookie objCookie = null;
             //objCookie = new HttpCookie(".ASPXAUTH");
             //objCookie.Value = FormsAuthentication.Encrypt(objTicket);
             //HttpResponseBase resp = null;
             //resp.Cookies.Add(objCookie);

             //var response = Request.CreateResponse(HttpStatusCode.Moved);
             //response.Headers.Location = new Uri("/search");
             //return response;

             return new HttpResponseMessage(HttpStatusCode.OK);
         }
         else
         {
             return Request.CreateErrorResponse(HttpStatusCode.BadRequest, "The email or password is incorrect.");
         }
    }

    [HttpPost]
    public void Logout()
    {
        FormsAuthentication.SignOut();
    }


}
