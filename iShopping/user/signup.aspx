<%@ Page Title="" Language="C#" MasterPageFile="~/ItemMasterPage.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="user_signup" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="Server">

    <div class="container">
        <div class="row col-md-8">
            <div class="register-login">
                <div class="cool-block" data-ng-controller="RegisterController">
                    <form id="registerForm" class="form form-horizontal" data-ng-submit="save(form)">

                        <div class="col-md-12">

                            <div class="alert alert-{{alert.type}}" data-ng-show="alert.display">
                                <div data-ng-bind-html-unsafe="alert.message"></div>
                            </div>

                            <div class="form-group title underline first">
                                <label>
                                    Login Details
                                </label>
                            </div>

                            <div class="form-group">
                                <div class="col-sm-4 control-label">
                                    <small>Email </small>

                                </div>
                                <div class="col-sm-8">
                                    <input type="email" class="form-control" id="inputEmail3" placeholder="Email" data-ng-model="form.Email">
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-sm-4 control-label">
                                    <small>Password </small>

                                </div>
                                <div class="col-sm-8">
                                    <input type="password" class="form-control" id="inputPassword3" placeholder="Password" data-ng-model="form.Password">
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-sm-4 control-label">
                                    <small>Confirm Password </small>

                                </div>
                                <div class="col-sm-8">
                                    <input type="password" class="form-control" placeholder="Password" data-ng-model="form.cPassword">
                                </div>
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="form-group title underline">
                                <label>
                                    Personal Information
                   
                                </label>
                            </div>

                            <div class="form-group">
                                <div class="col-sm-4 control-label">
                                    <small>First Name </small>

                                </div>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" placeholder="First Name" data-ng-model="form.FirstName">
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-sm-4 control-label">
                                    <small>Last Name </small>

                                </div>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" placeholder="Last Name" data-ng-model="form.LastName">
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-sm-4 control-label">
                                    <small>Mobile Phone </small>

                                </div>
                                <div class="col-sm-8">
                                    <div class="input-group">
                                        <div class="input-group-btn">
                                            <select class="form-control" style="width: 80px;" data-ng-model="form.PhonePrefix">
                                                <option value="" selected="selected"></option>
                                                <option value="010">010</option>
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
                                        <input type="text" class="form-control" placeholder="e.g. 3456789" data-ng-model="form.PhoneNo">
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="col-md-12">
                            <div class="underline"></div>
                            <div class="form-group">
                                <div class="col-sm-8 col-sm-push-3">
                                    <div class="control-group">
                                        <label class="checkbox">
                                            <input type="checkbox" />
                                            <small>I have read and agree to the Term of Service</small>
                                        </label>
                                    </div>
                                    <div class="control-group">
                                        <button type="submit" class="btn btn-info col-sm-4 col-sm-push-2">Submit</button>
                                    </div>
                                </div>

                            </div>

                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

