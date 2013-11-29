<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="user_signup" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="Server">

    <div class="row">

        <div class="form-horizontal signup-form ">
            <div class="col-md-8">

                <div class="form-group title underline first">
                    <label>
                        Login Details
                    </label>
                </div>

                <div class="form-group">
                    <div class="col-sm-3 control-label">
                        <small>Email </small>
                        <span class="asterisk">*</span>
                    </div>
                    <div class="col-sm-8">
                        <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-3 control-label">
                        <small>Password </small>
                        <span class="asterisk">*</span>
                    </div>
                    <div class="col-sm-8">
                        <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-3 control-label">
                        <small>Comfirm Password </small>
                        <span class="asterisk">*</span>
                    </div>
                    <div class="col-sm-8">
                        <input type="password" class="form-control" placeholder="Password">
                    </div>
                </div>
            </div>

            <div class="col-md-8">
                <div class="form-group title underline">
                    <label>
                        Personal Information
                    </label>
                </div>

                <div class="form-group">
                    <div class="col-sm-3 control-label">
                        <small>First Name </small>
                        <span class="asterisk">*</span>
                    </div>
                    <div class="col-sm-8">
                        <input type="email" class="form-control" placeholder="Email">
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-3 control-label">
                        <small>Last Name </small>
                        <span class="asterisk">*</span>
                    </div>
                    <div class="col-sm-8">
                        <input type="email" class="form-control" placeholder="Email">
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-3 control-label">
                        <small>Mobile Phone </small>
                        <span class="asterisk">*</span>
                    </div>
                    <div class="col-sm-8">
                        <div class="input-group">
                            <div class="input-group-btn">
                                <select class="form-control" style="width: 80px;">
                                    <option value="">--- Select one ---</option>
                                    <option value="010" selected="selected">010</option>
                                    <option value="011">011</option>
                                    <option value="012">012</option>
                                    <option value="013">013</option>
                                    <option value="014">014</option>
                                    <option value="015">015</option>
                                    <option value="016">016</option>
                                    <option value="017">017</option>
                                    <option value="018">018</option>
                                    <option value="019">019</option>
                                </select>
                            </div>
                            <span class="input-group-addon">-</span>
                            <input type="email" class="form-control" placeholder="e.g. 3456789">
                        </div>
                    </div>
                </div>

            </div>

            <div class="col-md-8">
                <div class="underline"></div>
                <div class="form-group">
                    <div class="col-sm-3 control-label">
                        &nbsp;
                    </div>
                    <div class="col-sm-8">
                        <label class="checkbox">
                            <input type="checkbox" />
                                <small>I have read and agree to the Term of Service</small>
                        </label>
                    </div>
                </div>

            </div>

        </div>

    </div>


</asp:Content>

