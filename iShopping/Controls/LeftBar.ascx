<%@ Control Language="C#" AutoEventWireup="true" CodeFile="LeftBar.ascx.cs" Inherits="Controls_LeftBar" %>

<div class="input-group">
    <input type="text" class="form-control" placeholder="Search">
    <span class="input-group-btn">
        <button class="btn btn-info" type="button">Go!</button>
    </span>
</div>
<div class="sidey">
    <ul class="nav">
        <li><a href="index.html"><i class="fa fa-home"></i>&nbsp;Home</a>
        <li><a href="#"><i class="fa fa-mobile-phone"></i>&nbsp;Smartphones</a>
            <ul>
                <li><a href="items.html">Apple</a></li>
                <li><a href="items.html">Samsung</a></li>
                <li><a href="items.html">Motorola</a></li>
                <li><a href="items.html">Nokia</a></li>
            </ul>
        </li>
        <li><a href="#"><i class="fa fa-laptop"></i>&nbsp;Laptops</a>
            <ul>
                <li><a href="items.html">Apple</a></li>
                <li><a href="items.html">Samsung</a></li>
                <li><a href="items.html">Motorola</a></li>
                <li><a href="items.html">Nokia</a></li>
            </ul>
        </li>
        <li><a href="#"><i class="fa fa-briefcase"></i>&nbsp;Office Items</a>
            <ul>
                <li><a href="items.html">Apple</a></li>
                <li><a href="items.html">Samsung</a></li>
                <li><a href="items.html">Motorola</a></li>
                <li><a href="items.html">Nokia</a></li>
            </ul>
        </li>
        <li><a href="#"><i class="fa fa-camera"></i>&nbsp;Camera</a>
            <ul>
                <li><a href="items.html">Apple</a></li>
                <li><a href="items.html">Samsung</a></li>
                <li><a href="items.html">Motorola</a></li>
                <li><a href="items.html">Nokia</a></li>
            </ul>
        </li>
    </ul>
</div>

<!-- Sidebar items (featured items)-->

<div class="sidebar-items">

    <h5>Featured Items</h5>

    <!-- Item #1 -->
    <div class="sitem">
        <div class="onethree-left">
            <!-- Image -->
            <a href="single-item.html">
                <img src="img/items/2.png" alt="" class="img-responsive" /></a>
        </div>
        <div class="onethree-right">
            <!-- Title -->
            <a href="single-item.html">HTC One V</a>
            <!-- Para -->
            <p>Aenean ullamcorper justo tincidunt justo aliquet.</p>
            <!-- Price -->
            <p class="bold">$199</p>
        </div>
        <div class="clearfix"></div>
    </div>

    <div class="sitem">
        <div class="onethree-left">
            <a href="single-item.html">
                <img src="img/items/3.png" alt="" class="img-responsive" /></a>
        </div>
        <div class="onethree-right">
            <a href="single-item.html">Sony One V</a>
            <p>Aenean ullamcorper justo tincidunt justo aliquet.</p>
            <p class="bold">$399</p>
        </div>
        <div class="clearfix"></div>
    </div>

    <div class="sitem">
        <div class="onethree-left">
            <a href="single-item.html">
                <img src="img/items/4.png" alt="" class="img-responsive" /></a>
        </div>
        <div class="onethree-right">
            <a href="single-item.html">Nokia One V</a>
            <p>Aenean ullamcorper justo tincidunt justo aliquet.</p>
            <p class="bold">$159</p>
        </div>
        <div class="clearfix"></div>
    </div>

    <div class="sitem">
        <div class="onethree-left">
            <a href="single-item.html">
                <img src="img/items/5.png" alt="" class="img-responsive" /></a>
        </div>
        <div class="onethree-right">
            <a href="single-item.html">Samsung One V</a>
            <p>Aenean ullamcorper justo tincidunt justo aliquet.</p>
            <p class="bold">$299</p>
        </div>
        <div class="clearfix"></div>
    </div>

</div>
