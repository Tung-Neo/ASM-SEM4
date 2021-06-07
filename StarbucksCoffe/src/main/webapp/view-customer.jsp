<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<sql:query var="rs" dataSource="jdbc/asm">
    select * from product
</sql:query>
<!DOCTYPE HTML>
<html>
<!-- Mirrored from priteshgupta.com/demos/templates/connoisseur/menu.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 05 Jun 2021 04:43:29 GMT -->

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Connoisseur</title>
    <link href="styles/style.css" rel="stylesheet" type="text/css" media="screen" />
</head>

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
            </ul>
        </nav>
    </header>
    <div class="wrapper">
        <div class="border"></div>
        <article class="menu">
            <c:forEach var="tempProduct" items="${PRODUCT_LIST}">
                <div class="left">
                    <h3>${tempProduct.productName} $${tempProduct.qty}</h3>
                </div>
                <div class="left star"><img src="images/star_full.png" class="noeffects" alt=""><img
                        src="images/star_full.png" class="noeffects" alt="">
                    <img src="images/star_full.png" class="noeffects" alt=""><img src="images/star_half_full.png" class="noeffects" alt=""><img
                        src="images/star_empty.png" class="noeffects" alt=""></div>
                <div class="right menu-order"><a class="button" href="${addtocart}">Order Now</a></div>
                <img src="images/menu/pizza2.jpg" class="left clear item" width="150" alt="">
                <p class="left"> ${tempProduct.topping} + ${tempProduct.ice}  </p>
                <p class="left">${tempProduct.information} </p>

                <div class="border3"></div>
            </c:forEach>
        </article>
        <aside class="sidebar">
            <h3>From The Blog</h3>
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
            <div class="border3"></div>
            <h3>Sidebar Widget</h3>
            <img src="images/home/1.jpg" width="280" alt="" />
            <p><strong>Pellentesque habitant morbi tristique</strong> senectus et netus et malesuada fames ac turpis
                egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu
                libero sit amet quam egestas semper. <em>Aenean ultricies mi vitae est.</em> Mauris placerat
                eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum
                sed, <code>commodo vitae</code>, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt
                condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. In turpis pulvinar
                facilisis. Ut felis.<br>
                <a href="#" class="right" style="padding-top:7px"><strong>Continue Reading &raquo;</strong></a>
            </p>
        </aside>
        <div class="border2"></div>
        <br>
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
            <div id="social"> <a href="https://twitter.com/priteshgupta" class="s3d twitter"> Twitter <span
                    class="icons twitter"></span> </a> <a href="https://www.facebook.com/priteshgupta"
                                                          class="s3d facebook"> Facebook <span class="icons facebook"></span> </a> <a
                    href="http://forrst.com/people/priteshgupta" class="s3d forrst"> Forrst <span
                    class="icons forrst"></span> </a> <a href="https://www.flickr.com/photos/priteshgupta"
                                                         class="s3d flickr"> Flickr <span class="icons flickr"></span> </a> <a href="#"
                                                                                                                               class="s3d designmoo"> Designmoo <span class="icons designmoo"></span> </a> </div>
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
</body>

<!-- Mirrored from priteshgupta.com/demos/templates/connoisseur/menu.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 05 Jun 2021 04:43:31 GMT -->

</html>
