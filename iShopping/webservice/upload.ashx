<%@ WebHandler Language="C#" Class="upload" %>

using System;
using System.Web;
using System.IO;

public class upload : IHttpHandler {

    public void ProcessRequest(HttpContext context)
    {
        HttpPostedFile postedFile = context.Request.Files["upload"];
        string CKEditorFuncNum = context.Request["CKEditorFuncNum"];

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

        context.Response.Write("<script>window.parent.CKEDITOR.tools.callFunction(" + CKEditorFuncNum + ", \"" + url + "\", \"" + message + "\");</script>");
        context.Response.End();
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}