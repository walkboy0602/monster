using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net;
using System.Net.Http;
using System.Web;
using System.Web.Http;
using System.Web.Http.Controllers;
using System.Web.Http.Filters;
using System.Web.Http.ModelBinding;


public class ValidateModelAttribute : ActionFilterAttribute
{
    public override void OnActionExecuting(HttpActionContext actionContext)
    {
        StringBuilder ErrorMessage = new StringBuilder();

        if (actionContext.ModelState.IsValid == false)
        {
            ErrorMessage.Append("<ul>");
            foreach (KeyValuePair<string, ModelState> state in actionContext.ModelState)
            {
                if (state.Value.Errors.Count > 0)
                {
                    ErrorMessage.Append("<li>" + state.Value.Errors[0].ErrorMessage + "</li>");
                }
            }
            ErrorMessage.Append("</ul>");

            actionContext.Response = actionContext.Request.CreateErrorResponse(
                HttpStatusCode.BadRequest, ErrorMessage.ToString());
        }
    }
}

//Example of overidden Form Authentication
public class CustomAuthorize : AuthorizeAttribute
{
    public override void OnAuthorization(HttpActionContext actionContext)
    {
        actionContext.Response = actionContext.Request.CreateErrorResponse(HttpStatusCode.Unauthorized, "Unauthorized");
    }
}