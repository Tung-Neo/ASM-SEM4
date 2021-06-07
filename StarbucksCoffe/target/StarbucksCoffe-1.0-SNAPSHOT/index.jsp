<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<sql:query var="rs" dataSource="jdbc/asm">
    select * from product
</sql:query>
<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Connoisseur</title>
    <link href="styles/style.css" rel="stylesheet" type="text/css" media="screen" />
    <link href="styles/base.css" rel="stylesheet" type="text/css" media="screen" />
<%--    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"--%>
<%--          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">--%>

</head>

<<<<<<< HEAD
<a href="ProductControllerServlet">Product CRUD</a>
<a href="ViewCustomerControllerServlet">View Customer</a>
=======
<body>
<div id="container">
    <header>
        <nav>
            <ul id="nav">
                <li><a href="index.jsp" class="current">Home</a></li>
                <li><a href="ProductControllerServlet">Product CRUD</a></li>
                <li><a href="view-customer.jsp">View Cusrtomer</a></li>
                <li><a href="about.jsp">About</a></li>
                <li><a href="gallery.jsp">Gallery</a></li>
                <li><a href="reviews.jsp">Reviews</a></li>
                <li><a href="contact.jsp">Contact</a></li>
            </ul>
        </nav>
        <hgroup class="intro">
            <h1 class="title">Connoisseur</h1>
            <h3 class="tagline">Free Website Template By: <a
                    href="http://www.priteshgupta.com/">PriteshGupta.com</a></h3>
        </hgroup>
        <div class="reservations"><br />
            <span class="reservations-title">Call Us:</span>
            <hr class="hr-solid" />
            <span class="phone-number">+012 345 6789</span>
            <hr class="hr-dashed" />
            <div class="email-us"> <a class="button" href="#" title="Email Us">Or Email Us</a> </div>
        </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </header>
    <div class="wrapper">
        <div class="pikachoose">
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="images/home/1.jpg" class="d-block w-100" alt="images/home/1.jpg">
                    </div>
                    <div class="carousel-item">
                        <img src="images/home/2.jpg" class="d-block w-100" alt="images/home/2.jpg">
                    </div>
                    <div class="carousel-item">
                        <img src="images/home/3.jpg" class="d-block w-100" alt="images/home/3.jpg">
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
        <div class="clear"></div>
        <div class="border"></div>
        <div class="home-widget">
            <h3>Lorem Ipsum</h3>
            <img src="images/home/3.jpg" width="300" alt="" />
            <p>Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit
                amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit
                amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae.</p>
        </div>
        <div class="home-widget">
            <h3>Lorem Ipsum</h3>
            <img src="images/home/4.jpg" width="300" alt="" />
            <p>Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit
                amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit
                amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae.</p>
        </div>
        <div class="home-widget">
            <h3>Lorem Ipsum</h3>
            <img src="images/home/1.jpg" width="300" alt="" />
            <p>Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit
                amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit
                amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae.</p>
        </div>
        <div class="border2"></div>
        <br />
        <aside id="pricing-table" class="clear">
            <div class="plan">
                <h3>Breakfast<span>$99</span></h3>
                <a class="button" href="#">Order Now</a>
                <ul>
                    <li><strong style="text-transform:uppercase">lorem Ipsum</strong> Dolor Sit Amet</li>
                    <li><strong style="text-transform:uppercase">lorem Ipsum</strong> Dolor Sit Amet</li>
                    <li><strong style="text-transform:uppercase">lorem Ipsum</strong> Dolor Sit Amet</li>
                    <li><strong style="text-transform:uppercase">lorem Ipsum</strong> Dolor Sit Amet</li>
                </ul>
            </div>
            <div class="plan">
                <h3>Lunch<span>$99</span></h3>
                <a class="button" href="#">Order Now</a>
                <ul>
                    <li><strong style="text-transform:uppercase">lorem Ipsum</strong> Dolor Sit Amet</li>
                    <li><strong style="text-transform:uppercase">lorem Ipsum</strong> Dolor Sit Amet</li>
                    <li><strong style="text-transform:uppercase">lorem Ipsum</strong> Dolor Sit Amet</li>
                    <li><strong style="text-transform:uppercase">lorem Ipsum</strong> Dolor Sit Amet</li>
                </ul>
            </div>
            <div class="plan">
                <h3>Dinner<span>$99</span></h3>
                <a class="button" href="#">Order Now</a>
                <ul>
                    <li><strong style="text-transform:uppercase">lorem Ipsum</strong> Dolor Sit Amet</li>
                    <li><strong style="text-transform:uppercase">lorem Ipsum</strong> Dolor Sit Amet</li>
                    <li><strong style="text-transform:uppercase">lorem Ipsum</strong> Dolor Sit Amet</li>
                    <li><strong style="text-transform:uppercase">lorem Ipsum</strong> Dolor Sit Amet</li>
                </ul>
            </div>
        </aside>
    </div>
    <footer>
        <div class="border"></div>
        <div class="footer-widget">
            <h4>Some Title</h4>
            <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.
                Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit
                amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.Pellentesque
                habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor
                quam, feugiat vitae, ultricies eget, tempor sit amet, ante. </p>
        </div>
        <div class="footer-widget">
            <h4>From The Blog</h4>
            <ul class="blog">
                <li><a href="#">Lorem Ipsum Dolor</a><br />
                    Orciint erdum condimen terdum nulla mcorper elit nam curabitur... </li>
                <li><a href="#">Praesent Et Eros</a><br />
                    Orciint erdum condimen terdum nulla mcorper elit nam curabitur... </li>
                <li><a href="#">Suspendisse In Neque</a><br />
                    Orciint erdum condimen terdum nulla mcorper elit nam curabitur... </li>
                <li><a href="#">Suspendisse In Neque</a><br />
                    Orciint erdum condimen terdum nulla mcorper elit nam curabitur... </li>
            </ul>
        </div>
        <div class="footer-widget">
            <h4>We Are Social!</h4>
            <div id="social"> <a href="https://twitter.com/priteshgupta" class="s3d twitter" target="_blank">
                Twitter <span class="icons twitter"></span> </a> <a href="https://www.facebook.com/priteshgupta"
                                                                    class="s3d facebook" target="_blank"> Facebook <span class="icons facebook"></span> </a> <a
                    href="http://forrst.com/people/priteshgupta" class="s3d forrst" target="_blank"> Forrst <span
                    class="icons forrst"></span> </a> <a href="https://www.flickr.com/photos/priteshgupta"
                                                         class="s3d flickr" target="_blank"> Flickr <span class="icons flickr"></span> </a> <a href="#"
                                                                                                                                               class="s3d designmoo" target="_blank"> Designmoo <span class="icons designmoo"></span> </a>
            </div>
        </div>
        <div class="border2"></div>
        <br />
        <span class="copyright"><span class="left"><br />
					&copy; Copyright 2012 - All Rights Reserved - <a href="#">Domain Name</a></span><span
                class="right"><br />
					Design by <a href="http://www.priteshgupta.com/">PriteshGupta.com</a><br />
					<br>
					<br />
				</span></span>
    </footer>
</div>
>>>>>>> cd0f997ca4e98b5d1efc06c9b2e772bc3f77d6ea
</body>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>
</html>