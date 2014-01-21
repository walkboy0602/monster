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
using ServiceStack.Text;

public class ReferenceController : ApiController
{
    [HttpGet] 
    [AllowAnonymous]
    public HttpResponseMessage List(ReferenceType refType = ReferenceType.None)
    {
        List<objReference> referenceList = DBReference.GetList(refType);

        return Request.CreateResponse(HttpStatusCode.OK, referenceList);

    }
}
