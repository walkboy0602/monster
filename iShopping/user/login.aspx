<%@ Page Title="" Language="C#" MasterPageFile="~/ItemMasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="user_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="RightBarContent" runat="Server">
</asp:Content>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="blocky">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="reg-login-info">
                        <h2>Login to Access Amazing Benefits <span class="color">!!!</span></h2>
                        <img src="/img/back2.jpg" alt="" class="img-responsive img-thumbnail" />
                        <p>Duis leo risus, vehicula luctus nunc. Quiue rhoncus, a sodales enim arcu quis turpis. Duis leo risus, condimentum ut posuere ac, vehicula luctus nunc. Quisque rhoncus, a sodales enim arcu quis turpis.</p>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="register-login">
                        <div class="cool-block">
                            <h3>Login</h3>
                            <form class="form-horizontal" role="form" data-ng-controller="LoginController" data-ng-submit="save(form)">
                                <div class="form-group">
                                    <label for="inputEmail1" class="col-lg-2 control-label">Email</label>
                                    <div class="col-lg-10">
                                        <input type="email" class="form-control" id="email" name="email" placeholder="Email" data-ng-model="form.Email" autocomplete="on">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputPassword1" class="col-lg-2 control-label">Password</label>
                                    <div class="col-lg-10">
                                        <input type="password" class="form-control" id="password" name="password" placeholder="Password" data-ng-model="form.Password" autocomplete="on">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-lg-offset-2 col-lg-10">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" data-ng-model="form.RememberMe">
                                                Remember me
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-lg-offset-2 col-lg-7">
                                        <div class="alert alert-{{alert.type}}" data-ng-show="alert.display">
                                            <div data-ng-bind-html-unsafe="alert.message"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-lg-offset-2 col-lg-10">
                                        <button type="submit" class="btn btn-info">Sign in</button>
                                        <button type="reset" class="btn btn-default">Reset</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="sep-bor"></div>
        </div>
    </div>

</asp:Content>

