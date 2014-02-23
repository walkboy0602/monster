<%@ Page Title="" Language="C#" MasterPageFile="~/ItemMasterPage.master" AutoEventWireup="true" CodeFile="save.aspx.cs" Inherits="listing_save" %>

<asp:Content ID="Content1" ContentPlaceHolderID="RightBarContent" runat="Server">
</asp:Content>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="Server">

    <div class="container" data-ng-controller="ListingCreateCtrl">

        <div class="row">

            <div class="tab-content col-md-12">

                <!-- Sale Type -->
                <div id="sale" class="listing tab-pane  fade in active" data-ng-show="saleTypes != null">
                    <div class="row wrap-box">
                        <h3>What do you want to sale?</h3>

                        <div data-ng-repeat="t in saleTypes">
                            <div class="col-md-3" data-ng-click='setCategory(t.KeyString, t.ValueString)'>
                                <a href="#detail">
                                    <div class="category" data-ng-class="getClass(t.KeyString)" data-ng-model="form.SaleType">
                                        <i data-ng-if="t.CssClass !== null" data-ng-class="t.CssClass"></i>
                                        <i data-ng-if="t.CssClass === null" class="fa fa-5x fa-truck"></i>
                                        <div class="category-detail">
                                            {{ t.ValueString }}
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>


                <!-- Details -->
                <div id="detail" class="listing tab-pane fade in " data-ng-controller="ListingDetailCtrl">

                    <div class="row wrap-box">
                        <h3>My Item Photos</h3>
                        <div class="col-md-8 col-md-push-2">
                            <iframe id="imageuploader" width="100%" height="250px" frameborder="0" scrolling="no" ></iframe>
                        </div>
                    </div>

                    <div class="row wrap-box">
                        <h3>{{selected_type}} - Details</h3>
                        <form id="form" class="form-horizontal form">
                            <div class="col-md-10 col-md-push-1">

                                <% //Category %>
                                <div class="form-group">
                                    <div class="col-sm-3 control-label">
                                        <b>Category</b>
                                        <span class="asterisk">*</span>
                                    </div>
                                    <div class="col-sm-8">
                                        <select data-ng-model="form.CategoryType" class="form-control validate[required]" data-ng-options="p.KeyString as p.ValueString group by p.ParentValue for p in categories | orderBy: 'ParentValue'">
                                            <option value="">-- Please select --</option>
                                        </select>
                                    </div>
                                </div>

                                <% //Title %>
                                <div class="form-group">
                                    <div class="col-sm-3 control-label">
                                        <b>Title</b>
                                        <span class="asterisk">*</span>
                                    </div>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control validate[required]" data-ng-model="form.Title" placeholder="Max 100 characters" />
                                    </div>
                                </div>

                                <% //Description %>
                                <div class="form-group">
                                    <div class="col-sm-3 control-label">
                                        <b>Description</b>
                                        <span class="asterisk">*</span>
                                    </div>
                                    <div class="col-sm-8">
                                        <textarea name="description" class="form-control ck-editor" id="editor1" data-ng-model="form.Description" rows="5" maxlength="3000"></textarea>
                                    </div>
                                </div>

                                <% //Price %>
                                <div class="form-group">
                                    <div class="col-sm-3 control-label">
                                        <b>Price</b>
                                        <span class="asterisk">*</span>
                                    </div>
                                    <div class="col-sm-8">
                                        <div class="input-group">
                                            <span class="input-group-addon">RM</span>
                                            <input type="text" class="form-control validate[required]" placeholder="Price" data-ng-model="form.Price" id="price" name="price" maxlength="8" onkeypress="return isDecimal(event)" />
                                        </div>
                                    </div>
                                </div>

                                <% //Warrently %>
                                <div class="form-group">
                                    <div class="col-sm-3 control-label">
                                        <b>Warrently</b>
                                        <span class="asterisk">*</span>
                                    </div>
                                    <div class="col-sm-8">
                                        <div class="form-inline">
                                            <label class="radio inline">
                                                <input type="radio" data-ng-model="form.isWarrently" value="1" />
                                                <span>Yes</span>
                                            </label>
                                            &nbsp;
                                            <label class="radio inline">
                                                <input type="radio" data-ng-model="form.isWarrently" value="0" checked="checked" />
                                                <span>No</span>
                                            </label>
                                        </div>
                                    </div>
                                </div>

                                <% //Warrently Desc %>
                                <div class="form-group">
                                    <div class="col-sm-8 col-sm-push-3">
                                        <textarea data-ng-show="form.isWarrently" data-ng-model="form.WarrentyDesc" name="description" class="form-control" rows="3" maxlength="1000" placeholder="Enter Warrently Information / Term and condition"></textarea>
                                    </div>
                                </div>

                                <% //Dealing Method %>
                                <div class="form-group">
                                    <div class="col-sm-3 control-label">
                                        <b>Dealing Method</b>
                                        <span class="asterisk">*</span>
                                    </div>
                                    <div class="col-sm-8">
                                        <label class="checkbox">
                                            <input type="checkbox" value="cod" data-ng-model="form.COD" />
                                            <span>Cash On Delivery</span>
                                        </label>
                                        <label class="checkbox">
                                            <input type="checkbox" value="onpay" data-ng-model="form.OnPay" />
                                            <span>Online Payment/Postage</span>
                                        </label>
                                    </div>
                                </div>

                                <% //Payment Information %>
                                <div class="form-group">
                                    <div class="col-sm-8 col-sm-push-3">
                                        <textarea class="form-control" data-ng-show="form.OnPay" data-ng-model="form.PaymentDescription" rows="3" maxlength="1000" placeholder="Payment & Postage Information"></textarea>
                                    </div>
                                </div>

                                <% //Buttons %>
                                <div class="form-group">
                                    <div class="col-sm-3">
                                        <a href="#sale" data-toggle="tab" data-ng-click="prev()" class="btn btn-large btn-info">
                                            <i class="fa fa-chevron-left"></i>
                                            <span>Previous</span>
                                        </a>
                                    </div>
                                    <div class="col-sm-6 col-sm-push-8">
                                        <a href="#contact" data-ng-click="next()" class="btn btn-large btn-info">
                                            <span>Next</span>
                                            <i class="fa fa-chevron-right"></i>
                                        </a>
                                    </div>
                                </div>

                            </div>
                        </form>
                    </div>
                </div>


                <!-- Contacts -->
                <div id="contact" class="listing tab-pane fade in" data-ng-controller="ListingContactCtrl">
                    <div class="row wrap-box">
                        <h3>Your Details</h3>
                        <div class="form-horizontal form">
                            <div class="col-md-10 col-md-push-1">

                                <div class="form-group">
                                    <div class="col-sm-3 control-label">
                                        <b>Seller Name</b>
                                    </div>
                                    <div class="col-sm-8">
                                        <p class="form-control-static">Peter Schedule</p>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-sm-3 control-label">
                                        <b>Contact</b>
                                    </div>
                                    <div class="col-sm-8">
                                        <p class="form-control-static">012-3456789</p>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-sm-3 control-label">
                                        <b>Email</b>
                                    </div>
                                    <div class="col-sm-8">
                                        <p class="form-control-static">email@example.com</p>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-sm-3 control-label">
                                        <b>Contact Method</b>
                                        <span class="asterisk">*</span>
                                    </div>
                                    <div class="col-sm-8">
                                        <select class="form-control" data-ng-init="form.ContactMethod='both'" data-ng-model="form.ContactMethod">
                                            <option value="both">Email and Phone</option>
                                            <option value="email">Phone only</option>
                                            <option value="phone">Email only</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-sm-3 control-label">
                                        <b>Location</b>
                                        <span class="asterisk">*</span>
                                    </div>
                                    <div class="col-sm-8">
                                        <select class="form-control" data-ng-model="form.Location">
                                            <option value="">--- Select one ---</option>
                                            <option value="1">Kuala Lumpur</option>
                                            <option value="2">Selangor</option>
                                            <option value="3">Pulau Pinang</option>
                                            <option value="4">Melaka</option>
                                            <option value="5">Johor</option>
                                            <option value="6">Kedah</option>
                                            <option value="7">Negeri Sembilan</option>
                                            <option value="8">Terengganu</option>
                                            <option value="9">Kelantan</option>
                                            <option value="10">Pahang</option>
                                            <option value="11">Perak</option>
                                            <option value="12">Perlis</option>
                                            <option value="13">Sabah</option>
                                            <option value="14">Sarawak</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-sm-3 control-label">
                                        <b>Certify</b>
                                    </div>
                                    <div class="col-sm-8">
                                        <label class="checkbox">
                                            <input type="checkbox" class="validate[required]" />
                                            <b>MonsterItem.com does not allow pirated goods to be sold throught the site. I hereby certify that the goods I'm selling are original and not pirated.</b>
                                        </label>
                                    </div>
                                </div>

                                <div class="underline"></div>

                                <div class="form-group">
                                    <br />
                                    <br />
                                    <div class="col-sm-3">
                                        <a href="#detail" data-toggle="tab" class="btn btn-large btn-info">
                                            <i class="fa fa-chevron-left"></i>
                                            <span>Previous</span>
                                        </a>
                                    </div>
                                    <div class="form-actions col-sm-8 col-sm-push-4">
                                        <button type="submit" name="submit" value="draft" class="btn btn-v2"><i class="icon-briefcase icon-white"></i><span>Save Draft</span></button>
                                        <button type="submit" name="submit" value="preview" class="btn btn-v2"><i class="icon-file icon-white"></i><span>Save &amp; Preview</span></button>
                                        <button id="publish_now" type="submit" data-ng-click="save()" name="submit" value="publish" class="btn btn-success"><i class="icon-ok icon-thumbs-up"></i><span>Save &amp; Publish</span></button>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-sm-8 col-sm-push-2">
                                        <div class="alert alert-{{alert.type}}" data-ng-show="alert.display">
                                            <div data-ng-bind-html="alert.message"></div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>

                <!-- Result -->
                <div id="successtab" class="listing tab-pane fade in" data-ng-controller="ListingDetailCtrl">
                    <div class="row wrap-box">
                        <div class="form-group">
                            <div class="form-actions col-sm-8 col-sm-push-4">
                                <h3>Thank you, you have successfully posted your item.</h3>
                                <br />
                                <button type="button" class="btn btn-info"><i class="icon-file icon-white"></i><span>Post a new Item</span></button>
                                <button type="button" class="btn btn-info"><i class="icon-ok icon-thumbs-up"></i><span>View all listing</span></button>
                                <button type="button" class="btn btn-info"><i class="icon-ok icon-thumbs-up"></i><span>Edit this listing</span></button>
                            </div>
                            <a href="#successtab" data-ng-hide="true" data-toggle="tab"></a>
                        </div>
                    </div>
                </div>


            </div>

        </div>
    </div>

</asp:Content>


<asp:Content ID="addScript" ContentPlaceHolderID="addScript" runat="Server">
    <%: Scripts.Render("~/bundles/listing") %>
</asp:Content>
