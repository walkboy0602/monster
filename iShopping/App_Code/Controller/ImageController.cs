using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Helpers;
using System.Net.Http;
using System.Web.Http;
using Framework;
using Framework.BLL;
using Framework.Model;
using System.Web.Security;
using System.IO;
using System.Threading.Tasks;
using System.Text;
using System.Net.Http.Headers;


/// <summary>
/// Summary description for ImageController
/// </summary>
public class ImageController : ApiController
{
    ImageBL _ImageBL;

	public ImageController()
	{
        _ImageBL = new ImageBL();
	}

    [HttpPost]
    public HttpResponseMessage Delete([FromBody]List<Image> ImageList)
    {
        try
        {
            S3Helper s3 = new S3Helper();

            //foreach (Image img in ImageList)
            //{
            //    _ImageBL.Delete(img.id);
            //}

            return new HttpResponseMessage(HttpStatusCode.OK);
        }
        catch
        {
            throw new HttpResponseException(HttpStatusCode.InternalServerError);
        }
    }


}