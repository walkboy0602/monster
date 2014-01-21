<%@ Page Title="" Language="C#" MasterPageFile="~/ItemMasterPage.master" AutoEventWireup="true" CodeFile="Detail.aspx.cs" Inherits="Detail" %>

<%@ Register TagPrefix="leftBar" TagName="LeftBar" Src="~/Controls/LeftBar.ascx" %>

<asp:Content ID="RightContent" ContentPlaceHolderID="RightBarContent" runat="server">

</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="Server">
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

                    <!-- Left Bar -->
                    <div class="col-md-9">
                        <!-- Gallery -->
                        <div class="panel panel-default carousel-item">
                            <div class="row wrap-box">
                                <div class="col-md-6 col-xs-6">

                                    <div id="carousel-item" class="carousel-box">
                                        <img src="http://forum.lowyat.net/uploads/attach-78/post-521878-1337421068_thumb.jpg" />
                                        <img src="http://forum.lowyat.net/uploads/attach-78/post-521878-1334758785.jpg" />
                                        <img src="http://forum.lowyat.net/uploads/attach-78/post-521878-1319813653.jpg" />
                                        <img src="http://2.bp.blogspot.com/--UjH5hVUQ0g/UUiRPizxf3I/AAAAAAAEn7I/sbPMbCA0y4U/s640/323.jpg" />
                                        <img src="http://forum.lowyat.net/uploads/attach-78/post-521878-1378913664_thumb.jpg" />
                                    </div>

                                    <div id="thumbs">
                                        <div class="thumb">
                                            <a href="#">Thumbnail Title</a>
                                            <img src="http://forum.lowyat.net/uploads/attach-78/post-521878-1337421068_thumb.jpg" alt="Thumbnail Title" />
                                        </div>
                                        <div class="thumb">
                                            <a href="#">Thumbnail Title</a>
                                            <img src="http://forum.lowyat.net/uploads/attach-78/post-521878-1334758785.jpg" alt="Thumbnail Title" />
                                        </div>
                                        <div class="thumb">
                                            <a href="#">Thumbnail Title</a>
                                            <img src="http://forum.lowyat.net/uploads/attach-78/post-521878-1319813653.jpg" alt="Thumbnail Title" />
                                        </div>
                                        <div class="thumb">
                                            <a href="#">Thumbnail Title</a>
                                            <img src="http://2.bp.blogspot.com/--UjH5hVUQ0g/UUiRPizxf3I/AAAAAAAEn7I/sbPMbCA0y4U/s640/323.jpg" alt="Thumbnail Title" />
                                        </div>
                                        <div class="thumb">
                                            <a href="#">Thumbnail Title</a>
                                            <img src="http://forum.lowyat.net/uploads/attach-78/post-521878-1378913664_thumb.jpg" alt="Thumbnail Title" />
                                        </div>
                                    </div>

                                    <!-- Previous and next button -->
                                    <a href="#" class="thumbs" id="prev"><i class="fa fa-chevron-left"></i></a>
                                    <a href="#" class="thumbs" id="next"><i class="fa fa-chevron-right"></i></a>

                                </div>
                                <div class="col-md-6 col-xs-6">
                                    <!-- Title -->
                                    <h3>Apple iPhone 5G</h3>
                                    <table class="table table-condensed table-hover">
                                        <thead>
                                            <tr>
                                                <th colspan="2" style="width: 40%">
                                                    <strong>Details:</strong>
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Classified ID</td>
                                                <td>012345</td>
                                            </tr>
                                            <tr>
                                                <td>Price</td>
                                                <td>550 EUR</td>
                                            </tr>
                                            <tr>
                                                <td>Condition</td>
                                                <td>New</td>
                                            </tr>
                                            <tr>
                                                <td>Age of Item</td>
                                                <td>1 year</td>
                                            </tr>
                                            <tr>
                                                <td>Type</td>
                                                <td>Cell Phone</td>
                                            </tr>
                                            <tr>
                                                <td>Dealing Method</td>
                                                <td>COD, Courier</td>
                                            </tr>
                                            <tr>
                                                <td>Warrently</td>
                                                <td>14 days money back</td>
                                            </tr>
                                            <tr>
                                                <td>Payments</td>
                                                <td>PayPal, Credit Card</td>
                                            </tr>
                                            <tr>
                                                <td>Reason for Sale</td>
                                                <td>Extra</td>
                                            </tr>
                                        </tbody>
                                    </table>

                                    <!-- Add to wish list -->
                                    <a href="wishlist.html">+ Add to Wish List</a>

                                    <!-- Share button -->

                                </div>
                            </div>
                        </div>
                        <!-- /.Gallery -->

                        <!-- Description, specs and review -->
                        <div class="row wrap-box">
                            <ul id="myTab" class="nav nav-tabs">
                                <!-- Use uniqe name for "href" in below anchor tags -->
                                <li class="active"><a href="#tab1" data-toggle="tab">Description</a></li>
                                <li><a href="#tab2" data-toggle="tab">Specs</a></li>
                                <li><a href="#tab3" data-toggle="tab">Review (5)</a></li>
                            </ul>

                            <!-- Tab Content -->
                            <div id="myTabContent" class="tab-content">
                                <!-- Description -->
                                <div class="tab-pane fade in active" id="tab1">
                                    <h5><strong>Apple iPhone 5G</strong></h5>
                                    <p>Nulla facilisi. Sed justo dui, scelerisque ut consectetur vel, eleifend id erat. Morbi auctor adipiscing tempor. Phasellus condimentum rutrum aliquet. Quisque eu consectetur erat. Proin rutrum, erat eget posuere semper, <em>arcu mauris posuere tortor</em>, in commodo enim magna id massa. Suspendisse potenti. Aliquam erat volutpat. Maecenas quis tristique turpis. Nulla facilisi. Duis sed velit at <a href="#">magna sollicitudin cursus</a> ac ultrices magna. Aliquam consequat, purus vitae auctor ullamcorper, sem velit convallis quam, a pharetra justo nunc et mauris. Vivamus diam diam, fermentum sed dapibus eget, egestas sed eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                    <h6><strong>Features</strong></h6>
                                    <ul>
                                        <li>Etiam adipiscing posuere justo, nec iaculis justo dictum non</li>
                                        <li>Cras tincidunt mi non arcu hendrerit eleifend</li>
                                        <li>Aenean ullamcorper justo tincidunt justo aliquet et lobortis diam faucibus</li>
                                        <li>Maecenas hendrerit neque id ante dictum mattis</li>
                                        <li>Vivamus non neque lacus, et cursus tortor</li>
                                    </ul>
                                </div>

                                <!-- Sepcs -->
                                <div class="tab-pane fade" id="tab2">

                                    <h5><strong>Product Specs:</strong></h5>
                                    <table class="table table-striped">
                                        <tbody>
                                            <tr>
                                                <td><strong>Name</strong></td>
                                                <td>Apple iPhone 5G</td>
                                            </tr>
                                            <tr>
                                                <td><strong>Brand</strong></td>
                                                <td>Apple</td>
                                            </tr>
                                            <tr>
                                                <td><strong>Modal</strong></td>
                                                <td>Fifth Generation</td>
                                            </tr>
                                            <tr>
                                                <td><strong>Memory</strong></td>
                                                <td>2GB RAM</td>
                                            </tr>
                                            <tr>
                                                <td><strong>Storage</strong></td>
                                                <td>16GB, 32GB, 64GB</td>
                                            </tr>
                                            <tr>
                                                <td><strong>Camera</strong></td>
                                                <td>Front VGA, Read 8MP</td>
                                            </tr>
                                            <tr>
                                                <td><strong>Processor</strong></td>
                                                <td>Apple 1.25GHz Processor</td>
                                            </tr>
                                            <tr>
                                                <td><strong>Battery</strong></td>
                                                <td>30 Hours Standby</td>
                                            </tr>
                                        </tbody>
                                    </table>

                                </div>

                                <!-- Review -->
                                <div class="tab-pane fade" id="tab3">
                                    <h5><strong>Product Reviews :</strong></h5>
                                    <hr />
                                    <div class="item-review">
                                        <h5>Ravi Kumar - <span class="color">4/5</span></h5>
                                        <p class="rmeta">27/1/2012</p>
                                        <p>Suspendisse potenti. Morbi ac felis nec mauris imperdiet fermentum. Aenean sodales augue ac lacus hendrerit sed rhoncus erat hendrerit. Vivamus vel ultricies elit. Curabitur lacinia nulla vel tellus elementum non mollis justo aliquam.</p>
                                    </div>

                                    <hr />
                                    <h5><strong>Write a Review</strong></h5>
                                    <hr />
                                    <form role="form">
                                        <div class="form-group">
                                            <label for="name">Your Name</label>
                                            <input type="text" class="form-control" id="name" placeholder="Enter Name">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Email address</label>
                                            <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
                                        </div>
                                        <div class="form-group">
                                            <label for="rating">Rating</label>
                                            <!-- Dropdown menu -->
                                            <select class="form-control">
                                                <option>Rating</option>
                                                <option>1</option>
                                                <option>2</option>
                                                <option>3</option>
                                                <option>4</option>
                                                <option>5</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Review</label>
                                            <textarea class="form-control" rows="3"></textarea>
                                        </div>
                                        <button type="submit" class="btn btn-info">Send</button>
                                        <button type="reset" class="btn btn-default">Reset</button>
                                    </form>

                                </div>

                            </div>
                        </div>
                        <!-- /.Description, specs and review -->
                    </div>
                    

                    <!-- Right Bar -->
                    <div class="col-md-3">
                        <!-- Seller Info -->
                        <div class=" panel panel-info">
                            <div class="col-sm-12">
                                <h3>Seller Details</h3>
                                <div class="panel-body">
                                    <h4>
                                        <label>
                                            <a href="#">Novak Jan</a>
                                        </label>
                                    </h4>
                                    <p>
                                        <label>Rating: </label>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star-empty"></span>
                                    </p>
                                    <p>
                                        <label><span class="fa fa-map-marker"></span>Location: <cite title="Prague, Czech Republic">Prague, Czech Republic</cite></label>
                                    </p>
                                    <p>
                                        <label><span class="fa fa-envelope"></span>email@example.com</label>
                                    </p>
                                    <p>
                                        <label><span class="fa fa-phone"></span>+420 123 456 789</label>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!-- /.Seller Info -->
                        <leftBar:LeftBar ID="LeftBar" runat="server" />
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
                        <h4><i class="icon-desktop color"></i>&nbsp;Whats New in Our Company</h4>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <div class="my_carousel">

                                <div class="carousel_nav pull-right">
                                    <!-- Carousel navigation -->
                                    <a class="prev" id="car_prev" href="#"><i class="icon-chevron-left"></i></a>
                                    <a class="next" id="car_next" href="#"><i class="icon-chevron-right"></i></a>
                                </div>

                                <ul id="carousel_container">
                                    <!-- Carousel item -->
                                    <li>
                                        <a href="#">
                                            <img src="img/items/2.png" alt="" class="img-responsive" /></a>
                                        <div class="carousel_caption">
                                            <h5><a href="#">Duis estsum placerat</a></h5>
                                            <p>Something about the product goes here. Not More than 2 lines.</p>
                                            <a href="#" class="btn btn-info btn-sm"><i class="icon-shopping-cart"></i>Buy for $199</a>
                                        </div>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <img src="img/items/3.png" alt="" class="img-responsive" /></a>
                                        <div class="carousel_caption">
                                            <h5><a href="#">Maecenas estsum odio</a></h5>
                                            <p>Something about the product goes here. Not More than 2 lines.</p>
                                            <a href="#" class="btn btn-info btn-sm"><i class="icon-shopping-cart"></i>Buy for $199</a>
                                        </div>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <img src="img/items/4.png" alt="" class="img-responsive" /></a>
                                        <div class="carousel_caption">
                                            <h5><a href="#">Proin estsum accumsan</a></h5>
                                            <p>Something about the product goes here. Not More than 2 lines.</p>
                                            <a href="#" class="btn btn-info btn-sm"><i class="icon-shopping-cart"></i>Buy for $199</a>
                                        </div>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <img src="img/items/5.png" alt="" class="img-responsive" /></a>
                                        <div class="carousel_caption">
                                            <h5><a href="#">Lorem estsum ipsum</a></h5>
                                            <p>Something about the product goes here. Not More than 2 lines.</p>
                                            <a href="#" class="btn btn-info btn-sm"><i class="icon-shopping-cart"></i>Buy for $199</a>
                                        </div>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <img src="img/items/6.png" alt="" class="img-responsive" /></a>
                                        <div class="carousel_caption">
                                            <h5><a href="#">Praesent estsum massa</a></h5>
                                            <p>Something about the product goes here. Not More than 2 lines.</p>
                                            <a href="#" class="btn btn-info btn-sm"><i class="icon-shopping-cart"></i>Buy for $199</a>
                                        </div>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <img src="img/items/7.png" alt="" class="img-responsive" /></a>
                                        <div class="carousel_caption">
                                            <h5><a href="#">Praesent estsum etium</a></h5>
                                            <p>Something about the product goes here. Not More than 2 lines.</p>
                                            <a href="#" class="btn btn-info btn-sm"><i class="icon-shopping-cart"></i>Buy for $199</a>
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
                                                            <i class="icon-group color"></i>
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
                                                            <i class="icon-calendar color"></i>
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
                                                            <i class="icon-android color"></i>
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
                                                            <i class="icon-building color"></i>
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
                                                            <i class="icon-signal color"></i>
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
                                                            <i class="icon-truck color"></i>
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
                                <h5><i class="icon-angle-right"></i>Lorem trist iquest <span class="color">siamet diam</span> ipsum dolor sitamt</h5>
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
                            <a href="#" class="facebook"><i class="icon-facebook"></i></a>
                            <a href="#" class="twitter"><i class="icon-twitter"></i></a>
                            <a href="#" class="google-plus"><i class="icon-google-plus"></i></a>
                            <a href="#" class="linkedin"><i class="icon-linkedin"></i></a>
                            <a href="#" class="pinterest"><i class="icon-pinterest"></i></a>
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
                            <p><i class="icon-home color contact-icon"></i>#12, Plot No.14, Raj Karmara Street, </p>
                            <p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 5th Stage, Koramangala, Madiwala,</p>
                            <p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Bangalore - 493922, Karananana.</p>
                            <p><i class="icon-phone color contact-icon"></i>+94-948-323-5532</p>
                            <p><i class="icon-envelope color contact-icon"></i><a href="mailto:something@gmail.com">some.thing@gmail.com</a></p>
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
    <span class="totop"><a href="#"><i class="icon-chevron-up"></i></a></span>


</asp:Content>

