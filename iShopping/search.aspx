<%@ Page Title="" Language="C#" MasterPageFile="~/ItemMasterPage.master" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="search" %>

<%@ Register TagPrefix="leftBar" TagName="LeftBar" Src="~/Controls/LeftBar.ascx" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="Server">

    <!-- Page title -->
    <div class="page-title">
        <div class="container">
            <h2><i class="fa fa-desktop color"></i>Laptops & Desktops <small>Subtext for header</small></h2>
            <hr />
        </div>
    </div>
    <!-- Page title -->

    <!-- Page content -->

    <div class="shop-items">
        <div class="container">

            <div class="row">

                <div class="col-md-12">

                    <!-- Breadcrumb -->
                    <ul class="breadcrumb">
                        <li><a href="index.html">Home</a> <span class="divider"></span></li>
                        <li><a href="items.html">Smartphone</a> <span class="divider"></span></li>
                        <li class="active">Apple</li>
                    </ul>

                    <!-- Items List starts -->

                    <div class="row">

                        <div class="col-md-3 col-sm-3 col-xs-6">
                            <div class="item">
                                <!-- Use the below link to put HOT icon -->
                                <div class="item-icon"><span>HOT</span></div>
                                <!-- Item image -->
                                <div class="item-image">
                                    <a href="/detail.aspx">
                                        <img src="http://static.my.groupon-content.net/01/43/1385113874301.jpg" alt="" class="img-responsive" /></a>
                                </div>
                                <!-- Item details -->
                                <div class="item-details">
                                    <!-- Name -->
                                    <h5><a href="/detail.aspx">HTC One V</a></h5>
                                    <div class="clearfix"></div>
                                    <!-- Para. Note more than 2 lines. -->
                                    <p>Something about the product goes here. Not More than 2 lines.</p>
                                    <hr />
                                    <!-- Price -->
                                    <div class="price">
                                        <span class="price-old">$119.50</span>
                                        <span class="price-new">$196</span>
                                    </div>
                                    <div class="shortlist">
                                        <a class="fa fa-heart" onclick="addToWishList('40');" data-placement="top" data-toggle="tooltip" data-original-title="Add to Wish List"></a>
                                    </div>
                                    <div class="website">
                                        <a class="fa fa-shopping-cart" onclick="addToCompare('36');" data-placement="top" data-toggle="tooltip" data-original-title="Visit Shop"></a>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>

                        </div>

                        <div class="col-md-3 col-sm-3 col-xs-6">
                            <div class="item">
                                <!-- Item image -->
                                <div class="item-image">
                                    <a href="/detail.aspx">
                                        <img src="img/items/3.png" alt="" class="img-responsive" /></a>
                                </div>
                                <!-- Item details -->
                                <div class="item-details">
                                    <!-- Name -->
                                    <h5><a href="/detail.aspx">Dell One V</a></h5>
                                    <!-- Para. Note more than 2 lines. -->
                                    <p>Something about the product goes here. Not More than 2 lines.</p>
                                    <hr />
                                    <!-- Price -->
                                    <div class="price">
                                        <span class="price-old">RM330</span>
                                        <span class="price-new">RM264</span>
                                    </div>
                                    <div class="shortlist">
                                        <a class="fa fa-heart" onclick="addToWishList('40');" data-placement="top" data-toggle="tooltip" data-original-title="Add to Wish List"></a>
                                    </div>
                                    <div class="website">
                                        <a class="fa fa-shopping-cart" onclick="addToCompare('36');" data-placement="top" data-toggle="tooltip" data-original-title="Visit Shop"></a>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-3 col-sm-3 col-xs-6">
                            <div class="item">
                                <!-- Item image -->
                                <div class="item-image">
                                    <a href="/detail.aspx">
                                        <img src="img/items/4.png" alt="" class="img-responsive" /></a>
                                </div>
                                <!-- Item details -->
                                <div class="item-details">
                                    <!-- Name -->
                                    <h5><a href="/detail.aspx">Cannon One V</a></h5>
                                    <!-- Para. Note more than 2 lines. -->
                                    <p>Something about the product goes here. Not More than 2 lines.</p>
                                    <hr />
                                    <!-- Price -->
                                    <div class="item-price pull-left">$160</div>
                                    <!-- Add to cart -->
                                    <div class="pull-right"><a href="#" class="btn btn-danger btn-sm">Add to Cart</a></div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-3 col-sm-3 col-xs-6">
                            <div class="item">

                                <!-- Item image -->
                                <div class="item-image">
                                    <a href="/detail.aspx">
                                        <img src="img/items/5.png" alt="" class="img-responsive" /></a>
                                </div>
                                <!-- Item details -->
                                <div class="item-details">
                                    <!-- Name -->
                                    <h5><a href="/detail.aspx">Samsung One V</a></h5>
                                    <!-- Para. Note more than 2 lines. -->
                                    <p>Something about the product goes here. Not More than 2 lines.</p>
                                    <hr />
                                    <!-- Price -->
                                    <div class="item-price pull-left">$300</div>
                                    <!-- Add to cart -->
                                    <div class="pull-right"><a href="#" class="btn btn-danger btn-sm">Add to Cart</a></div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-3 col-sm-3 col-xs-6">
                            <div class="item">
                                <div class="item-icon"><span>HOT</span></div>
                                <!-- Item image -->
                                <div class="item-image">
                                    <a href="/detail.aspx">
                                        <img src="img/items/6.png" alt="" class="img-responsive" /></a>
                                </div>
                                <!-- Item details -->
                                <div class="item-details">
                                    <!-- Name -->
                                    <h5><a href="/detail.aspx">Micromax One V</a></h5>
                                    <!-- Para. Note more than 2 lines. -->
                                    <p>Something about the product goes here. Not More than 2 lines.</p>
                                    <hr />
                                    <!-- Price -->
                                    <div class="item-price pull-left">$240</div>
                                    <!-- Add to cart -->
                                    <div class="pull-right"><a href="#" class="btn btn-danger btn-sm">Add to Cart</a></div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-3 col-sm-3 col-xs-6">
                            <div class="item">
                                <!-- Item image -->
                                <div class="item-image">
                                    <a href="/detail.aspx">
                                        <img src="img/items/7.png" alt="" class="img-responsive" /></a>
                                </div>
                                <!-- Item details -->
                                <div class="item-details">
                                    <!-- Name -->
                                    <h5><a href="/detail.aspx">Nokia One V</a></h5>
                                    <!-- Para. Note more than 2 lines. -->
                                    <p>Something about the product goes here. Not More than 2 lines.</p>
                                    <hr />
                                    <!-- Price -->
                                    <div class="item-price pull-left">$50</div>
                                    <!-- Add to cart -->
                                    <div class="pull-right"><a href="#" class="btn btn-danger btn-sm">Add to Cart</a></div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>


                        <div class="col-md-3 col-sm-3 col-xs-6">
                            <div class="item">

                                <!-- Item image -->
                                <div class="item-image">
                                    <a href="/detail.aspx">
                                        <img src="img/items/8.png" alt="" class="img-responsive" /></a>
                                </div>
                                <!-- Item details -->
                                <div class="item-details">
                                    <!-- Name -->
                                    <h5><a href="/detail.aspx">Samsung One V</a></h5>
                                    <!-- Para. Note more than 2 lines. -->
                                    <p>Something about the product goes here. Not More than 2 lines.</p>
                                    <hr />
                                    <!-- Price -->
                                    <div class="item-price pull-left">$300</div>
                                    <!-- Add to cart -->
                                    <div class="pull-right"><a href="#" class="btn btn-danger btn-sm">Add to Cart</a></div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-3 col-sm-3 col-xs-6">
                            <div class="item">
                                <div class="item-icon"><span>HOT</span></div>
                                <!-- Item image -->
                                <div class="item-image">
                                    <a href="/detail.aspx">
                                        <img src="img/items/9.png" alt="" class="img-responsive" /></a>
                                </div>
                                <!-- Item details -->
                                <div class="item-details">
                                    <!-- Name -->
                                    <h5><a href="/detail.aspx">Micromax One V</a></h5>
                                    <!-- Para. Note more than 2 lines. -->
                                    <p>Something about the product goes here. Not More than 2 lines.</p>
                                    <hr />
                                    <!-- Price -->
                                    <div class="item-price pull-left">$240</div>
                                    <!-- Add to cart -->
                                    <div class="pull-right"><a href="#" class="btn btn-danger btn-sm">Add to Cart</a></div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-3 col-sm-3 col-xs-6">
                            <div class="item">
                                <!-- Item image -->
                                <div class="item-image">
                                    <a href="/detail.aspx">
                                        <img src="img/items/10.png" alt="" class="img-responsive" /></a>
                                </div>
                                <!-- Item details -->
                                <div class="item-details">
                                    <!-- Name -->
                                    <h5><a href="/detail.aspx">Nokia One V</a></h5>
                                    <!-- Para. Note more than 2 lines. -->
                                    <p>Something about the product goes here. Not More than 2 lines.</p>
                                    <hr />
                                    <!-- Price -->
                                    <div class="item-price pull-left">$50</div>
                                    <!-- Add to cart -->
                                    <div class="pull-right"><a href="#" class="btn btn-danger btn-sm">Add to Cart</a></div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <!-- Items List ends -->

                     <!-- Pagination -->
                    <div class="row">
                        <div class="col-md-12">
                           
                            <ul class="pagination">
                                <li><a href="#">&laquo;</a></li>
                                <li><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                                <li><a href="#">&raquo;</a></li>
                            </ul>
                        </div>
                    </div>

                </div>

            </div>

            <div class="sep-bor"></div>
        </div>
    </div>


    <!-- Recent posts CarouFredSel Starts -->

    <div class="recent-posts blocky">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <!-- Section title -->
                    <div class="section-title">
                        <h4><i class="fa fa-desktop color"></i>&nbsp;Whats New in Our Company</h4>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <div class="my_carousel">

                                <div class="carousel_nav pull-right">
                                    <!-- Carousel navigation -->
                                    <a class="prev" id="car_prev" href="#"><i class="fa fa-chevron-left"></i></a>
                                    <a class="next" id="car_next" href="#"><i class="fa fa-chevron-right"></i></a>
                                </div>

                                <ul id="carousel_container">
                                    <!-- Carousel item -->
                                    <li>
                                        <a href="#">
                                            <img src="img/items/2.png" alt="" class="img-responsive" /></a>
                                        <div class="carousel_caption">
                                            <h5><a href="#">Duis estsum placerat</a></h5>
                                            <p>Something about the product goes here. Not More than 2 lines.</p>
                                            <a href="#" class="btn btn-info btn-sm"><i class="fa fa-shopping-cart"></i>Buy for $199</a>
                                        </div>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <img src="img/items/3.png" alt="" class="img-responsive" /></a>
                                        <div class="carousel_caption">
                                            <h5><a href="#">Maecenas estsum odio</a></h5>
                                            <p>Something about the product goes here. Not More than 2 lines.</p>
                                            <a href="#" class="btn btn-info btn-sm"><i class="fa fa-shopping-cart"></i>Buy for $199</a>
                                        </div>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <img src="img/items/4.png" alt="" class="img-responsive" /></a>
                                        <div class="carousel_caption">
                                            <h5><a href="#">Proin estsum accumsan</a></h5>
                                            <p>Something about the product goes here. Not More than 2 lines.</p>
                                            <a href="#" class="btn btn-info btn-sm"><i class="fa fa-shopping-cart"></i>Buy for $199</a>
                                        </div>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <img src="img/items/5.png" alt="" class="img-responsive" /></a>
                                        <div class="carousel_caption">
                                            <h5><a href="#">Lorem estsum ipsum</a></h5>
                                            <p>Something about the product goes here. Not More than 2 lines.</p>
                                            <a href="#" class="btn btn-info btn-sm"><i class="fa fa-shopping-cart"></i>Buy for $199</a>
                                        </div>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <img src="img/items/6.png" alt="" class="img-responsive" /></a>
                                        <div class="carousel_caption">
                                            <h5><a href="#">Praesent estsum massa</a></h5>
                                            <p>Something about the product goes here. Not More than 2 lines.</p>
                                            <a href="#" class="btn btn-info btn-sm"><i class="fa fa-shopping-cart"></i>Buy for $199</a>
                                        </div>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <img src="img/items/7.png" alt="" class="img-responsive" /></a>
                                        <div class="carousel_caption">
                                            <h5><a href="#">Praesent estsum etium</a></h5>
                                            <p>Something about the product goes here. Not More than 2 lines.</p>
                                            <a href="#" class="btn btn-info btn-sm"><i class="fa fa-shopping-cart"></i>Buy for $199</a>
                                        </div>
                                    </li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Recent posts Ends -->


    <!-- Catchy starts -->
    <div class="catchy blocky">
        <div class="catchy-inner1">
            <div class="catchy-inner2">
                <div class="container">
                    <div class="row">
                        <div class="col-md-5">
                            <div class="catchy-subscribe">
                                <h3>Join Us!</h3>
                                <p>Lorem tristique est sit amet diam ipsum  dolor sit  diam interdum diam ipsum  dolor sit diam ipsum  dolor sit tristique semper.</p>
                                <br />
                                <form class="form-inline" role="form">
                                    <div class="form-group">
                                        <input type="text" class="form-control " id="exampleInputEmail2" placeholder="Enter your email">
                                    </div>
                                    <button type="submit" class="btn btn-danger">Subscribe</button>
                                </form>

                            </div>
                        </div>
                        <div class="col-md-7">

                            <div class="report">
                                <div class="report-bor">
                                    <div class="row">
                                        <!-- Report data starts -->
                                        <div class="col-md-4 col-sm-4">
                                            <div class="report-data">
                                                <div class="row">
                                                    <div class="col-md-4 col-sm-4 col-xs-4">
                                                        <!-- Icon -->
                                                        <div class="report-icon">
                                                            <i class="fa fa-group color"></i>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-8 col-md-8 col-xs-8">
                                                        <!-- Details -->
                                                        <span class="report-big color">40,000</span> <span>Customers</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Report data ends -->

                                        <!-- Report data starts -->
                                        <div class="col-md-4 col-sm-4">
                                            <div class="report-data">
                                                <div class="row">
                                                    <div class="col-md-4 col-sm-4 col-xs-4">
                                                        <!-- Icon -->
                                                        <div class="report-icon">
                                                            <i class="fa fa-calendar color"></i>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-8 col-md-8 col-xs-8">
                                                        <!-- Details -->
                                                        <span>Since</span><span class="report-big color">1857</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Report data ends -->

                                        <!-- Report data starts -->
                                        <div class="col-md-4 col-sm-4">
                                            <div class="report-data">
                                                <div class="row">
                                                    <div class="col-md-4 col-sm-4 col-xs-4">
                                                        <!-- Icon -->
                                                        <div class="report-icon">
                                                            <i class="fa fa-android color"></i>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-8 col-md-8 col-xs-8">
                                                        <!-- Details -->
                                                        <span class="report-big color">30,000</span> <span>Revenue</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Report data ends -->

                                    </div>

                                    <hr class="hidden-xs">

                                    <div class="row">

                                        <!-- Report data starts -->
                                        <div class="col-md-4 col-sm-4">
                                            <div class="report-data">
                                                <div class="row">
                                                    <div class="col-md-4 col-sm-4 col-xs-4">
                                                        <!-- Icon -->
                                                        <div class="report-icon">
                                                            <i class="fa fa-building color"></i>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-8 col-md-8 col-xs-8">
                                                        <!-- Details -->
                                                        <span class="report-big color">150 +</span> <span>Companies</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Report data ends -->

                                        <!-- Report data starts -->
                                        <div class="col-md-4 col-sm-4">
                                            <div class="report-data">
                                                <div class="row">
                                                    <div class="col-md-4 col-sm-4 col-xs-4">
                                                        <!-- Icon -->
                                                        <div class="report-icon">
                                                            <i class="fa fa-signal color"></i>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-8 col-md-8 col-xs-8">
                                                        <!-- Details -->
                                                        <span class="report-big color">50.60%</span> <span>Growth</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Report data ends -->

                                        <!-- Report data starts -->
                                        <div class="col-md-4 col-sm-4">
                                            <div class="report-data">
                                                <div class="row">
                                                    <div class="col-md-4 col-sm-4 col-xs-4">
                                                        <!-- Icon -->
                                                        <div class="report-icon">
                                                            <i class="fa fa-truck color"></i>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-8 col-md-8 col-xs-8">
                                                        <!-- Details -->
                                                        <span class="report-big color">100 +</span> <span>Employees</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Report data ends -->

                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Catchy ends -->

    <!-- CTA Starts -->
    <div class="blocky">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="cta">
                        <div class="row">
                            <div class="col-md-8 col-sm-8">
                                <h5><i class="fa fa-angle-right"></i>Lorem trist iquest <span class="color">siamet diam</span> ipsum dolor sitamt</h5>
                            </div>
                            <div class="col-md-4 col-sm-4">
                                <div class="cta-buttons pull-right">
                                    <a href="#" class="btn btn-info btn-lg">Download</a> &nbsp; <a href="#" class="btn btn-danger btn-lg">Get It Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- CTA Ends -->

    <!-- Footer starts -->
    <footer>
        <div class="container">

            <div class="row">

                <div class="col-md-4 col-sm-4">
                    <div class="fwidget">

                        <h4>Oslon de<span class="color">'</span> Techno</h4>
                        <hr />
                        <p>Duis leo risus, vehicula luctus nunc.  Quiue rhoncus, a sodales enim arcu quis turpis. Duis leo risus, condimentum ut posuere ac, vehicula luctus nunc.  Quisque rhoncus, a sodales enim arcu quis turpis.</p>

                        <div class="social">
                            <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
                            <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
                            <a href="#" class="google-plus"><i class="fa fa-google-plus"></i></a>
                            <a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
                            <a href="#" class="pinterest"><i class="fa fa-pinterest"></i></a>
                        </div>
                    </div>
                </div>

                <div class="col-md-4 col-sm-4">
                    <div class="fwidget">
                        <h4>Categories</h4>
                        <hr />
                        <ul>
                            <li><a href="#">Sed eu leo orci, condimentum gravida metus</a></li>
                            <li><a href="#">Etiam at nulla ipsum, in rhoncus purus</a></li>
                            <li><a href="#">Fusce vel magna faucibus felis dapibus facilisis</a></li>
                            <li><a href="#">Vivamus scelerisque dui in massa</a></li>
                            <li><a href="#">Pellentesque eget adipiscing dui semper</a></li>
                        </ul>
                    </div>
                </div>



                <div class="col-md-4 col-sm-4">
                    <div class="fwidget">

                        <h4>Get In Touch</h4>
                        <hr />
                        <div class="address">
                            <p><i class="fa fa-home color contact-icon"></i>#12, Plot No.14, Raj Karmara Street, </p>
                            <p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 5th Stage, Koramangala, Madiwala,</p>
                            <p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Bangalore - 493922, Karananana.</p>
                            <p><i class="fa fa-phone color contact-icon"></i>+94-948-323-5532</p>
                            <p><i class="fa fa-envelope color contact-icon"></i><a href="mailto:something@gmail.com">some.thing@gmail.com</a></p>
                        </div>

                    </div>
                </div>

            </div>



            <hr />

            <div class="copy text-center">
                Copyright 2013 &copy; - <a href="http://responsivewebinc.com/bootstrap-themes">Bootstrap Themes</a>
            </div>
        </div>
    </footer>
    <!-- Footer ends -->

    <!-- Scroll to top -->
    <span class="totop"><a href="#"><i class="fa fa-chevron-up"></i></a></span>

</asp:Content>

