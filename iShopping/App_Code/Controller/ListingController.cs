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

public class ListingController : ApiController
{
    ListingBL _ListingBL;
    ImageBL _ImageBL;

    public ListingController()
    {
        _ListingBL = new ListingBL();
        _ImageBL = new ImageBL();
    }


    [HttpGet]
    public HttpResponseMessage Get([FromUri]int id)
    {
        Listing objListing = new Listing();
        

        if (BaseController.AuthCheck())
        {
            objListing.id = id;
            objListing.UserID = (int)HttpContext.Current.Session["UserID"];
            objListing = _ListingBL.Get(objListing);
            objListing.Image = _ImageBL.Get(id);

        }

        return Request.CreateResponse(HttpStatusCode.OK, objListing);
    }

    [HttpPost]
    public HttpResponseMessage Create([FromBody]Listing objListing)
    {
        return new HttpResponseMessage(HttpStatusCode.OK);
    }


    [HttpPost]
    [ValidateModel]
    public HttpResponseMessage Save([FromBody]Listing objListing)
    {
        if (BaseController.AuthCheck())
        {
            objListing.UserID = (int)HttpContext.Current.Session["UserID"];
            if (_ListingBL.Save(objListing))
            {
                return new HttpResponseMessage(HttpStatusCode.OK);
            }
        }

        throw new HttpResponseException(HttpStatusCode.InternalServerError);

    }

    [HttpPost]
    public HttpResponseMessage Remove()
    {
        try
        {
            //S3Helper s3 = new S3Helper();

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


    //Multiple Uploads
    [HttpPost]
    public async Task<HttpResponseMessage> Uploads()
    {
        // Check if the request contains multipart/form-data.
        if (!Request.Content.IsMimeMultipartContent())
        {
            throw new HttpResponseException(HttpStatusCode.UnsupportedMediaType);
        }

        string root = HttpContext.Current.Server.MapPath("~/App_Data");
        var provider = new MultipartFormDataStreamProvider(root);

        try
        {
            StringBuilder sb = new StringBuilder(); // Holds the response body

            // Read the form data and return an async task.
            await Request.Content.ReadAsMultipartAsync(provider);

            Listing objListing = new Listing();
            Image objImage = new Image();

            int id = 0;
            DateTime createdate = DateTime.MinValue;

            string formData_ID = provider.FormData.GetValues("id")[0];
            string formData_CreateDate = provider.FormData.GetValues("CreateDate")[0];

            bool status = false;
            int year = 0, month = 0, day = 0;

            if (!string.IsNullOrEmpty(formData_ID) && Int32.TryParse(formData_ID, out id))
            {
                objListing.id = id;
            }

            if (!string.IsNullOrEmpty(formData_CreateDate) && DateTime.TryParse(formData_CreateDate, out createdate))
            {
                objListing.CreateDate = createdate;

                year = objListing.CreateDate.Year;
                month = objListing.CreateDate.Month;
                day = objListing.CreateDate.Day;

                S3Helper s3 = new S3Helper();

                var image = WebImage.GetImageFromRequest();
                var hashName = s3.Hash(image.FileName, objListing.id);

                string imageURL = string.Join("/", new string[] { s3.env, "listing", 
                    year.ToString(), month.ToString(), day.ToString(), objListing.id.ToString(), "####size####", hashName });

                byte[] fileBytes = image.GetBytes();

                byte[] s0 = s3.CreateImage(fileBytes, image.FileName, 56, 42);
                status = s3.UploadToS3(s0, imageURL.Replace("####size####", "s0"));

                byte[] s1 = s3.CreateImage(fileBytes, image.FileName, 200, 150);
                status = s3.UploadToS3(s1, imageURL.Replace("####size####", "s1"));

                byte[] s2 = s3.CreateImage(fileBytes, image.FileName, 640, 480);
                status = s3.UploadToS3(s2, imageURL.Replace("####size####", "s2"));

                if (status)
                {
                    objImage = _ImageBL.SaveImage(objListing.id, hashName, imageURL);
                    objImage.Src = s3.cloudfront_cdn + "/" + imageURL;
                }

            }
            return Request.CreateResponse(HttpStatusCode.OK, objImage);
        }
        catch (System.Exception e)
        {
            return Request.CreateErrorResponse(HttpStatusCode.InternalServerError, e);
        }
    }

    [HttpPost]
    public HttpResponseMessage Upload()
    {
        Listing objListing = new Listing();
        //get image from request
        var image = WebImage.GetImageFromRequest();
        bool status = false;
        int year = 0, month = 0, day = 0;

        S3Helper s3 = new S3Helper();

        if (objListing.CreateDate != DateTime.MinValue)
        {
            year = objListing.CreateDate.Year;
            month = objListing.CreateDate.Month;
            day = objListing.CreateDate.Day;
        }

        string s3Path = string.Join("/", new string[] { "objListing", year.ToString(), month.ToString(), day.ToString(), objListing.id.ToString() });


        var fullPath = Path.Combine(Path.GetTempPath() + image.FileName);
        var imageNameWithHash = s3.Hash(image.FileName, objListing.id);

        s3Path = s3Path + imageNameWithHash;

        var s1 = image.Resize(640, 480, true).Save(fullPath);
        status = s3.UploadToS3(fullPath, Path.Combine(s3Path + "-s1"));

        var s2 = image.Resize(240, 160, true).Save(fullPath);
        status = s3.UploadToS3(fullPath, Path.Combine(s3Path + "-s2"));

        //var response = new HttpResponseMessage()
        //{
        //    Content = new StringContent(sb.ToString())
        //};

        //response.Content.Headers.ContentType = new MediaTypeHeaderValue("application/json");
        //return response;

        return new HttpResponseMessage(HttpStatusCode.OK);
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
                byte[] fileData = null;

                using (var binaryReader = new BinaryReader(postedFile.InputStream))
                {
                    fileData = binaryReader.ReadBytes(postedFile.ContentLength);
                }

                string url = ""; // url to return
                string message = ""; // pop up message after success, put empty to skip it
                S3Helper aws = new S3Helper();
                string path = aws.env + "/test/" + aws.Hash(postedFile.FileName);
                if (aws.UploadToS3(fileData, path))
                {
                    // do not put any message so it will directly move to preview page once sucessful
                    url = aws.cloudfront_cdn + "/" + path;
                }
                else
                {
                    // buffer length is 0
                    message = "Failed to upload image, please try to upload a valid image file again.";
                }

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
