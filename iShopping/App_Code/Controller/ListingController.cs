using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Net.Http;
using System.Web.Http;
using Framework;
using Framework.BLL;
using Framework.Model;
using System.Web.Security;
using System.IO;

public class ListingController : ApiController
{
    ListingBL _ListingBL;

    public ListingController()
    {
        _ListingBL = new ListingBL();   
    }

    public HttpResponseMessage Create([FromBody]Listing listing)
    {
        return new HttpResponseMessage(HttpStatusCode.OK);
    }

    [HttpPost]
    [ValidateModel]
    public HttpResponseMessage Save([FromBody]Listing listing)
    {
        if (BaseController.AuthCheck())
        {
            listing.UserID = (int)HttpContext.Current.Session["UserID"];
            if (_ListingBL.Save(listing))
            {
                return new HttpResponseMessage(HttpStatusCode.OK);
            }
        }

        throw new HttpResponseException(HttpStatusCode.InternalServerError);

    }

    [HttpPost]
    public HttpResponseMessage UploadImage([FromUri]string CKEditorFuncNum, string CKEditor, string langCode)
    {
        HttpResponseMessage result = null;
        string output = string.Empty;
        var httpRequest = HttpContext.Current.Request;
        if (httpRequest.Files.Count > 0)
        {
            var docfiles = new List<string>();
            foreach (string file in httpRequest.Files)
            {
                var postedFile = httpRequest.Files[file];
                //byte[] fileData = null;

                //using (var binaryReader = new BinaryReader(postedFile.InputStream))
                //{
                //    fileData = binaryReader.ReadBytes(postedFile.ContentLength);
                //}

                //string url = ""; // url to return
                //string message = ""; // pop up message after success, put empty to skip it
                //S3Helper aws = new S3Helper();
                //string path = aws.env + "/test/" + aws.Hash(postedFile.FileName);
                //if (aws.UploadToS3(fileData, path))
                //{
                //    // do not put any message so it will directly move to preview page once sucessful
                //    url = aws.cloudfront_cdn + "/" + path;
                //}
                //else
                //{  
                //    // buffer length is 0
                //    message = "Failed to upload image, please try to upload a valid image file again.";
                //}

                var filePath = HttpContext.Current.Server.MapPath("~/image/" + postedFile.FileName);
                postedFile.SaveAs(filePath);


                // return string to httppost ajax request
                output = "<script>window.parent.CKEDITOR.tools.callFunction(" + CKEditorFuncNum + ", \"" + filePath + "\");</script>";

           
                //docfiles.Add(filePath);
            }

            HttpResponseMessage response = Request.CreateResponse(System.Net.HttpStatusCode.OK, output);
            response.Content.Headers.ContentType = new System.Net.Http.Headers.MediaTypeHeaderValue("text/plain");
            return response;

        }
        else
        {
            result = Request.CreateResponse(HttpStatusCode.BadRequest);
            return result;
        }


    }
}
