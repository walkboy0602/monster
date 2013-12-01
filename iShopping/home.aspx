<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="Server">

    <div class="row">


        <div class="search-bar form-horizontal">
            <div class="form-group">
                <div class="col-sm-2">
                    &nbsp;
                </div>
                <div class="col-sm-10">
                    <div class="input-group col-sm-10">
                        <input type="text" class="form-control input-lg">
                        <span class="input-group-btn">
                            <button type="button" class="btn btn-info btn-lg">
                                <i class="fa fa-search"></i>Go!</button>
                        </span>
                    </div>
                </div>
            </div>
        </div>

        <%--        <ul class="nav nav-tabs">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="#">Help</a></li>
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Dropdown <span class="caret"></span>
                </a>
                <ul class="dropdown-menu" role="menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li class="divider"></li>
                    <li><a href="#">Separated link</a></li>
                </ul>
            </li>
        </ul>--%>

        <div class="search-result-container">

            <!-- Feature -->
            <div class="col-sm-6 col-md-4">
                <a href="#" class="thumbnail-feature">
                    <div class="ribbon-wrapper-blue">
                        <div class="ribbon-blue">Featured</div>
                    </div>
                    <div class="image">
                        <img src="http://static.my.groupon-content.net/05/80/1379491158005.jpg" alt="">
                        <div class="count-image">
                            <i class="fa fa-camera"></i>&nbsp;20
                        </div>
                    </div>
                    <div class="info">
                        <div class="info-title">
                            Title Title Title Title Title Title Title Title Title 
                        </div>

                        <div class="addon-badge">
                            <span class="label label-color-8 new-badge">-35%</span>
                            <span class="label label-color-3 new-badge">New</span>
                            <span class="label label-color-12 new-badge">COD</span>
                        </div>

                        <div class="pricing">
                            <div>
                                <span class="pricing-old">RM24.00</span>
                                <span class="category"><i class="fa fa-tags"></i>Watches & Accessories</span>
                            </div>

                            <div>
                                <span class="pricing-new">RM 10.00</span>
                                <span class="location"><i class="fa fa-map-marker"></i>Kuala Lumpur</span>
                            </div>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-sm-6 col-md-4">
                <a href="#" class="thumbnail-feature">
                    <div class="ribbon-wrapper-blue">
                        <div class="ribbon-blue">Featured</div>
                    </div>
                    <div class="image">
                        <img src="http://assets.newlaunch.ippstatic.com/staging/MY/showunit/640/e10f3aea4f4c4b82add8dd23e94d3ce5.JPG" alt="">
                    </div>
                    <div class="info">
                        <div class="info-title">
                            Title Title Title Title Title Title Title Title Title 
                        </div>
                        <div class="addon-badge">
                            <span class="label label-color-8 new-badge">-35%</span>
                            <span class="label label-color-5 new-badge">Used</span>
                        </div>

                        <div class="pricing">
                            <div>
                                <span class="pricing-old">RM24.00</span>
                                <span class="category"><i class="fa fa-tags"></i>Watches & Accessories</span>
                            </div>

                            <div>
                                <span class="pricing-new">RM 10.00</span>
                                <span class="location"><i class="fa fa-map-marker"></i>Kuala Lumpur</span>
                            </div>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-sm-6 col-md-4">
                <a href="#" class="thumbnail-feature">
                    <div class="ribbon-wrapper-blue">
                        <div class="ribbon-blue">Featured</div>
                    </div>
                    <div class="image">
                        <img src="http://s1.oto.my/upload/image/2013/11/26/100916/s3-4856-CIMG9654.JPG" alt="">
                        <span class="label label-color-8 badge-float">-50%</span>
                    </div>
                    <div class="info">
                        <div class="info-title">
                            Title Title Title Title Title Title Title Title Title 
                        </div>
                        <div class="addon-badge">
                            <span class="label label-color-8 new-badge">-35%</span>
                            <span class="label label-color-3 new-badge">For Sale</span>
                            <span class="label label-color-3 new-badge">New</span>
                        </div>

                        <div class="pricing">
                            <div>
                                <span class="pricing-old">RM24.00</span>
                                <span class="category"><i class="fa fa-tags"></i>Watches & Accessories</span>
                            </div>

                            <div>
                                <span class="pricing-new">RM 10.00</span>
                                <span class="location"><i class="fa fa-map-marker"></i>Kuala Lumpur</span>
                            </div>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-sm-6 col-md-4">
                <a href="#" class="thumbnail-feature">
                    <div class="ribbon-wrapper-blue">
                        <div class="ribbon-blue">Featured</div>
                    </div>
                    <div class="image">
                        <img src="http://static.my.groupon-content.net/01/43/1385113874301.jpg">
                    </div>
                    <div class="info">
                        <div class="info-title">
                            Title Title Title Title Title Title Title Title Title 
                        </div>

                        <div class="addon-badge">
                            <span class="label label-color-8 new-badge">-35%</span>
                            <span class="label label-color-3 new-badge">New</span>
                            <span class="label label-color-3 new-badge">New</span>
                        </div>

                        <div class="pricing">
                            <div>
                                <span class="pricing-old">RM24.00</span>
                                <span class="category"><i class="fa fa-tags"></i>Watches & Accessories</span>
                            </div>

                            <div>
                                <span class="pricing-new">RM 10.00</span>
                                <span class="location"><i class="fa fa-map-marker"></i>Kuala Lumpur</span>
                            </div>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-sm-6 col-md-4">
                <a href="#" class="thumbnail-feature">
                    <div class="ribbon-wrapper-blue">
                        <div class="ribbon-blue">Featured</div>
                    </div>
                    <div class="image">
                        <img src="http://static.my.groupon-content.net/01/43/1385113874301.jpg">
                    </div>
                    <div class="info">
                        <div class="info-title">
                            Title Title Title Title Title Title Title Title Title 
                        </div>

                        <div class="addon-badge">
                            <span class="label label-color-8 new-badge">-35%</span>
                            <span class="label label-color-3 new-badge">New</span>
                            <span class="label label-color-3 new-badge">New</span>
                        </div>

                        <div class="pricing">
                            <div>
                                <span class="pricing-old">RM24.00</span>
                                <span class="category"><i class="fa fa-tags"></i>Watches & Accessories</span>
                            </div>

                            <div>
                                <span class="pricing-new">RM 10.00</span>
                                <span class="location"><i class="fa fa-map-marker"></i>Kuala Lumpur</span>
                            </div>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-sm-6 col-md-4">
                <a href="#" class="thumbnail-feature">
                    <div class="ribbon-wrapper-blue">
                        <div class="ribbon-blue">Featured</div>
                    </div>
                    <div class="image">
                        <img src="http://static.my.groupon-content.net/01/43/1385113874301.jpg">
                    </div>
                    <div class="info">
                        <div class="info-title">
                            Title Title Title Title Title Title Title Title Title 
                        </div>

                        <div class="addon-badge">
                            <span class="label label-color-8 new-badge">-35%</span>
                            <span class="label label-color-3 new-badge">New</span>
                            <span class="label label-color-3 new-badge">New</span>
                        </div>

                        <div class="pricing">
                            <div>
                                <span class="pricing-old">RM24.00</span>
                                <span class="category"><i class="fa fa-tags"></i>Watches & Accessories</span>
                            </div>

                            <div>
                                <span class="pricing-new">RM 10.00</span>
                                <span class="location"><i class="fa fa-map-marker"></i>Kuala Lumpur</span>
                            </div>
                        </div>
                    </div>
                </a>
            </div>


            <!-- Basic -->

            <div class="col-sm-6 col-md-4">
                <a href="#" class="thumbnail basic">
                    <img src="http://static.my.groupon-content.net/01/43/1385113874301.jpg">
                    <div class="count-image">
                        <i class="fa fa-camera"></i>&nbsp;20
                    </div>
                    <div class="info">
                        <div class="title">
                            <span>2012 Toyota 86 2.0 auto 2012 Toyota 86 2.0 auto 2012 Toyota 86 2.0 auto 2012 Toyota 86 2.0 auto</span>
                            <span class="label label-color-5 new-badge">Used</span>
                        </div>

                        <div class="pricing">
                            <div>
                                <span class="pricing-old">RM24.00</span>
                                <span class="category"><i class="fa fa-tags"></i>Watches & Accessories</span>
                            </div>

                            <div>
                                <span class="pricing-new">RM 10.00</span>
                                <span class="location"><i class="fa fa-map-marker"></i>Kuala Lumpur</span>
                            </div>
                        </div>

                    </div>
                </a>
            </div>

            <div class="col-sm-6 col-md-4">
                <a href="#" class="thumbnail basic">
                    <img src="http://static.my.groupon-content.net/01/43/1385113874301.jpg">
                    <%--                    <div class="add">
                        <span class="label label-color-8 new-badge">-35%</span>
                        <span class="label label-color-3 new-badge">New</span>
                    </div>--%>
                    <div class="info">
                        <div class="title">
                            <span>2012 Toyota 86 2.0 auto 2012 Toyota 86 2.0 auto 2012 Toyota 86 2.0 auto 2012 Toyota 86 2.0 auto</span>
                        </div>
                        <div class="pricing">
                            <div>
                                <span class="pricing-old">RM24.00</span>
                                <span class="category"><i class="fa fa-tags"></i>Watches & Accessories</span>
                            </div>

                            <div>
                                <span class="pricing-new">RM10.00</span>
                                <span class="location"><i class="fa fa-map-marker"></i>Kuala Lumpur</span>
                            </div>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-sm-6 col-md-4">
                <a href="#" class="thumbnail basic">
                    <img src="http://static.my.groupon-content.net/01/43/1385113874301.jpg">
                    <div class="info">
                        <div class="title">
                            <span>2012 Toyota 86 2.0 auto 2012 Toyota 86 2.0 auto 2012 Toyota 86 2.0 auto 2012 Toyota 86 2.0 auto</span>
                        </div>

                        <div class="pricing">
                            <div>
                                <span class="pricing-old">RM24.00</span>
                                <span class="category"><i class="fa fa-tags"></i>Watches & Accessories</span>
                            </div>

                            <div>
                                <span class="pricing-new">RM10.00</span>
                                <span class="location"><i class="fa fa-map-marker"></i>Kuala Lumpur</span>
                            </div>
                        </div>

                    </div>
                </a>
            </div>

            <div class="col-sm-6 col-md-4">
                <a href="#" class="thumbnail basic">
                    <img src="http://static.my.groupon-content.net/01/43/1385113874301.jpg">
                    <div class="info">
                        <div class="title">
                            <span>2012 Toyota 86 2.0 auto 2012 Toyota 86 2.0 auto 2012 Toyota 86 2.0 auto 2012 Toyota 86 2.0 auto</span>
                        </div>

                        <div class="pricing">
                            <div>
                                <span class="pricing-old">RM24.00</span>
                                <span class="category"><i class="fa fa-tags"></i>Watches & Accessories</span>
                            </div>

                            <div>
                                <span class="pricing-new">RM10.00</span>
                                <span class="location"><i class="fa fa-map-marker"></i>Kuala Lumpur</span>
                            </div>
                        </div>

                    </div>
                </a>
            </div>

            <div class="col-sm-6 col-md-4">
                <a href="#" class="thumbnail basic">
                    <img src="http://static.my.groupon-content.net/01/43/1385113874301.jpg">
                    <div class="info">
                        <div class="title">
                            <span>2012 Toyota 86 2.0 auto 2012 Toyota 86 2.0 auto 2012 Toyota 86 2.0 auto 2012 Toyota 86 2.0 auto</span>
                        </div>

                        <div class="pricing">
                            <div>
                                <span class="pricing-old">RM24.00</span>
                                <span class="category"><i class="fa fa-tags"></i>Watches & Accessories</span>
                            </div>

                            <div>
                                <span class="pricing-new">RM10.00</span>
                                <span class="location"><i class="fa fa-map-marker"></i>Kuala Lumpur</span>
                            </div>
                        </div>

                    </div>
                </a>
            </div>

            <div class="col-sm-6 col-md-4">
                <a href="#" class="thumbnail basic">
                    <img src="http://assets.newlaunch.ippstatic.com/staging/MY/showunit/640/e10f3aea4f4c4b82add8dd23e94d3ce5.JPG">
                    <div class="info">
                        <div class="title">
                            <span>2012 Toyota 86 2.0 auto 2012 Toyota 86 2.0 auto 2012 Toyota 86 2.0 auto 2012 Toyota 86 2.0 auto</span>
                        </div>

                        <div class="pricing">
                            <div>
                                <span>&nbsp;</span>
                                <span class="category"><i class="fa fa-tags"></i>Watches & Accessories</span>
                            </div>

                            <div>
                                <span class="pricing-default">RM10.00</span>
                                <span class="location"><i class="fa fa-map-marker"></i>Kuala Lumpur</span>
                            </div>
                        </div>

                    </div>
                </a>
            </div>


        </div>

    </div>
</asp:Content>

