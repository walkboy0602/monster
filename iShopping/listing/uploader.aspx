<%@ Page Language="C#" AutoEventWireup="true" CodeFile="uploader.aspx.cs" Inherits="listing_uploader" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Image Upload</title>
    <webopt:BundleReference runat="server" Path="~/Content/css/item" />
</head>
<body data-ng-app="shopApp">

    <div class="well well-white upload-box">
        <form name="formUpload" method="post" fileupload enctype="multipart/form-data" action="/api/listing/uploads" data-ng-controller="ImageController">
            <div class="img-container">

                <img data-ng-src="{{cover.Src}}" data-ng-show="cover.Src" class="img-thumbnail cover" title="Cover Image" />

                <div class="label-tips" data-ng-show="!files.length">
                    <strong class="label-addnew">Click 'Add Image' to attach photos.</strong>
                    <span>Or drag & drop your photos here.</span>
                </div>

                <label class="sub-thumbnail" data-ng-repeat="file in files">
                    <input type="checkbox" data-ng-model="file.checked" data-ng-show="mode=='edit'" class="pull-right ng-valid ng-dirty" style="position: relative;right: 18px;" />
                    <img data-ng-src="{{file.Src}}" class="sub-image" />
                </label>
            </div>
            <div class="pull-right button">
                <span class="btn btn-primary btn-small fileinput-button" data-ng-show="mode=='add'">
                    <i class="fa fa-plus"></i>
                    <input name="image" type="file" multiple />
                    <span>Add Image</span>
                </span>

                <button class="btn btn-default btn-small" type="button" data-ng-click="edit()" data-ng-show="mode=='add'">
                    <i class="fa fa-edit"></i>
                    <span>Edit Image</span>
                </button>

                 <button class="btn btn-danger btn-small" type="button" data-ng-click="delete()" data-ng-show="mode=='edit'">
                    <i class="fa fa-trash-o"></i>
                    <span>Delete Image</span>
                </button>

                <button class="btn btn-default btn-small" type="button" data-ng-click="done()" data-ng-show="mode=='edit'">
                    <i class="fa fa-save"></i>
                    <span>Done</span>
                </button>
            </div>
        </form>
    </div>
    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/script") %>
        <%: Scripts.Render("~/bundles/angular") %>
        <%: Scripts.Render("~/bundles/upload") %>
    </asp:PlaceHolder>
</body>
</html>
