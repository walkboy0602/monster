<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="save.aspx.cs" Inherits="listing_create" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="Server">

    <div class="row">
        <div class="form-horizontal form">
            <div class="col-md-8">
                <div class="form-group title underline first">
                    <label>
                        Create Ad
                    </label>
                </div>

                <div class="form-group">
                    <div class="col-sm-3 control-label">
                        <small>Category</small>
                        <span class="asterisk">*</span>
                    </div>
                    <div class="col-sm-8">
                        <select class="form-control"></select>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-3 control-label">
                        <small>Summary</small>
                        <span class="asterisk">*</span>
                    </div>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" placeholder="Max 100 characters">
                        <span class="note">* This summary will show on our search results page. Put a meaning name for search optimization</span>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-3 control-label">
                        <small>Description</small>
                        <span class="asterisk">*</span>
                    </div>
                    <div class="col-sm-8">
                        <textarea name="description" class="form-control" rows="5" maxlength="3000" placeholder="Max 3,000 characters"></textarea>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-3 control-label">
                        <small>Price</small>
                        <span class="asterisk">*</span>
                    </div>
                    <div class="col-sm-8">
                        <div class="input-group">
                            <span class="input-group-addon">RM</span>
                            <input type="text" class="form-control" placeholder="Price" id="price" name="price" maxlength="8" onkeypress="return isNumberKey(event)">
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-3 control-label">
                        <small>Warrently Information/ Term and Conditions</small>
                        <span class="asterisk">*</span>
                    </div>
                    <div class="col-sm-8">
                        <textarea name="description" class="form-control" rows="3" maxlength="1000" placeholder="Max 1,000 characters"></textarea>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-3 control-label">
                        <small>Payment Options</small>
                        <span class="asterisk">*</span>
                    </div>
                    <div class="col-sm-8">
                        <label class="checkbox">
                            <input type="checkbox" />
                            <small>Cash On Delivery</small>
                        </label>
                        <label class="checkbox">
                            <input type="checkbox" />
                            <small>Online Payment/Postage</small>
                        </label>
                        <br />
                        <textarea name="description" class="form-control" rows="3" maxlength="1000" placeholder="Payment & Postage Information"></textarea>
                    </div>
                </div>

                <div class="form-group title underline">
                    <label>
                        Seller Details
                    </label>
                </div>

                <div class="form-group">
                    <div class="col-sm-3 control-label">
                        <small>Seller Name</small>
                    </div>
                    <div class="col-sm-8">
                        <p class="form-control-static">Peter Schedule</p>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-3 control-label">
                        <small>Contact</small>
                    </div>
                    <div class="col-sm-8">
                        <p class="form-control-static">012-3456789</p>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-3 control-label">
                        <small>Email</small>
                    </div>
                    <div class="col-sm-8">
                        <p class="form-control-static">email@example.com</p>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-3 control-label">
                        <small>Contact Mehod</small>
                        <span class="asterisk">*</span>
                    </div>
                    <div class="col-sm-8">
                        <select class="form-control">
                            <option value="none">Email and Phone</option>
                            <option value="email">Phone only</option>
                            <option value="phone">Email only</option>
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-3 control-label">
                        <small>Location</small>
                        <span class="asterisk">*</span>
                    </div>
                    <div class="col-sm-8">
                        <select class="form-control">
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
                        <small>Certify</small>
                    </div>
                    <div class="col-sm-8">
                        <label class="checkbox">
                            <input type="checkbox" />
                            <small>XimiWako does not allow pirated goods to be sold throught the site. I hereby certify that the goods I'm selling are original and not pirated.</small>
                        </label>
                    </div>
                </div>

                <div class="underline"></div>

                <div class="form-group">
                        <br /><br />
                        <div class="form-actions">
                        <button type="submit" name="submit" value="draft" class="btn btn-v2"><i class="icon-briefcase icon-white"></i><span>Save Draft</span></button>
                        <button type="submit" name="submit" value="preview" class="btn btn-v2"><i class="icon-file icon-white"></i><span>Save &amp; Preview</span></button>
                        <button id="publish_now" type="submit" name="submit" value="publish" class="btn btn-v2 btn-success"><i class="icon-ok icon-thumbs-up"></i><span>Save &amp; Publish</span></button>
                        <br>
                        <small style="font-size: 10px">Please make sure all images are uploaded to 100% before submitting your listing.</small>
                    </div>
                </div>

            </div>
        </div>

    </div>

</asp:Content>

