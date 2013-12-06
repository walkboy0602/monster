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

        <div class="col-md-12">
            <div class="btn-group">
                <a href="#" id="list" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-th-list"></span>List
                </a>
                <a href="#" id="grid" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-th"></span>Grid</a>
            </div>
        </div>

        <div class="search-result-container">

            <!-- Feature -->
            <div class="col-md-4 item list-group-item">
                <a href="#" class="thumbnail-feature">
                    <div class="ribbon-wrapper-blue">
                        <div class="ribbon-blue">Featured</div>
                    </div>
                    <img class="group list-group-image" src="http://pictures.my.ippstatic.com/developers/images/showunit/640/1062918410f44bf2889adfb912a964f3.jpg">
                    <div class="caption">
                        <h4 class="group inner list-group-item-heading">Product title</h4>
                        <p class="group inner list-group-item-text">
                            Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
                        sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
                        </p>
                        <div class="row">
                            <div class="col-xs-12 col-md-6">
                                <p class="lead">
                                    $21.000
                                </p>
                            </div>
                            <div class="col-xs-12 col-md-6">
                                <button class="btn btn-success" href="http://www.jquery2dotnet.com">Add to cart</button>
                            </div>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-md-4 item list-group-item">
                <a href="#" class="thumbnail-feature">
                    <div class="ribbon-wrapper-blue">
                        <div class="ribbon-blue">Featured</div>
                    </div>
                    <img class="group list-group-image" src="http://pictures.my.ippstatic.com/developers/images/showunit/640/1062918410f44bf2889adfb912a964f3.jpg">
                    <div class="caption">
                        <h4 class="group inner list-group-item-heading">Product title</h4>
                        <p class="group inner list-group-item-text">
                            Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
                        sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
                        </p>
                        <div class="row">
                            <div class="col-xs-12 col-md-6">
                                <p class="lead">
                                    $21.000
                                </p>
                            </div>
                            <div class="col-xs-12 col-md-6">
                                <button class="btn btn-success" href="http://www.jquery2dotnet.com">Add to cart</button>
                            </div>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-md-4 item list-group-item">
                <a href="#" class="thumbnail-feature">
                    <div class="ribbon-wrapper-blue">
                        <div class="ribbon-blue">Featured</div>
                    </div>
                    <img class="group list-group-image" src="http://pictures.my.ippstatic.com/developers/images/showunit/640/1062918410f44bf2889adfb912a964f3.jpg">
                    <div class="caption">
                        <h4 class="group inner list-group-item-heading">Product title</h4>
                        <p class="group inner list-group-item-text">
                            Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
                        sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
                        </p>
                        <div class="row">
                            <div class="col-xs-12 col-md-6">
                                <p class="lead">
                                    $21.000
                                </p>
                            </div>
                            <div class="col-xs-12 col-md-6">
                                <button class="btn btn-success" href="http://www.jquery2dotnet.com">Add to cart</button>
                            </div>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-md-4 item list-group-item">
                <a href="#" class="thumbnail-feature">
                    <div class="ribbon-wrapper-blue">
                        <div class="ribbon-blue">Featured</div>
                    </div>
                    <img class="group list-group-image" src="http://pictures.my.ippstatic.com/developers/images/showunit/640/1062918410f44bf2889adfb912a964f3.jpg">
                    <div class="caption">
                        <h4 class="group inner list-group-item-heading">Product title</h4>
                        <p class="group inner list-group-item-text">
                            Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
                        sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
                        </p>
                        <div class="row">
                            <div class="col-xs-12 col-md-6">
                                <p class="lead">
                                    $21.000
                                </p>
                            </div>
                            <div class="col-xs-12 col-md-6">
                                <button class="btn btn-success" href="http://www.jquery2dotnet.com">Add to cart</button>
                            </div>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-md-4 grid-group-item">
                <a href="#" class="thumbnail-feature">
                    <div class="ribbon-wrapper-blue">
                        <div class="ribbon-blue">Featured</div>
                    </div>
                    <div class="image">
                        <img src="http://pictures.my.ippstatic.com/developers/images/housepicture/640/1d620dc3781d47a68ac798ab80460bec.jpg">
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

            <div class="col-md-4 grid-group-item">
                <a href="#" class="thumbnail-feature">
                    <div class="ribbon-wrapper-blue">
                        <div class="ribbon-blue">Featured</div>
                    </div>
                    <div class="image">
                        <img src="http://pictures.my.ippstatic.com/developers/images/housepicture/640/1d620dc3781d47a68ac798ab80460bec.jpg">
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

            <div class="col-md-4 grid-group-item">
                <a href="#" class="thumbnail-feature">
                    <div class="ribbon-wrapper-blue">
                        <div class="ribbon-blue">Featured</div>
                    </div>
                    <div class="image">
                        <img src="http://pictures.my.ippstatic.com/development/propertyshowcase/740/82cd0c7817d940c599d61f7f11db4781.jpg">
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

            <div class="col-md-3 grid-group-item">
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

            <div class="col-md-3 grid-group-item">
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

            <div class="col-md-3 grid-group-item">
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

            <div class="col-md-3 grid-group-item">
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

            <div class="col-md-3 grid-group-item">
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

            <div class="col-md-3 grid-group-item">
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

