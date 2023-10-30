<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix = "x" uri = "http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Shop</title>
	<link rel="stylesheet" href="./Shop/shop-assest/css/shop-style.css">
	<!-- Phần để tạo login -->
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
    <script src="./Shop/shop-assest/js/shop-jquery.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/mousetrap/1.6.5/mousetrap.min.js"></script>

    <!-- Đặt icon cho trang web -->
    <link rel="icon" href="./assest/shop-assest/img/head-img/B-ion.jpg">

    <!-- Link css bootstrap-icon -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.css">

    <!-- link css boxicons -->
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>

<body>
    <div id="main">
        <!-- Phần header đầu tiên -->
        <div id="header1">
            <div class="container">
                <div class="head1-subnav">
                    <div class="inf">
                        <i class="head1-icon bi-telephone-fill"></i>
                        <p>+ 1235 2355 98</p>
                    </div>

                    <div class="inf">
                        <i class="head1-icon bi-cursor-fill"></i>
                        <p>BROFOOD@EMAIL.COM</p>
                    </div>

                    <div class="inf">
                        <p>3-5 BUSINESS DAYS DELIVERY & FREE RETURNS</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- Kết thúc header đầu tiên -->

        <!-- Bắt đầu header 2 -->
        <div id="header2">
            <div class="container">
                <!-- Thẻ Vegefoods liên kết-->
                <a href="index.html" class="brofoods">Brofoods</a>

                <button class="btn">
                    <i class="bi-list"></i>Menu
                </button>

                <div class="list-display-none">
                    <ul class="list-head2">
                        <li class="list-item-head2">
                            <a href="index.html" id="home-link" class="nav-link">Home</a>
                        </li>

                        <li class="list-item-head2 shop-active">
                            <a class="nav-link shop">
                                Shop
                                <i class="bi-caret-down-fill"></i>
                            </a>

                            <ul class="wrap-shop-list">
                                <li class="shop-list"><a id="shop-link" href="shop.html">Shop</a></li>
                                <li class="shop-list"><a id="wishlist-link" href="wishlist.html">Wishlist</a></li>
                                <li class="shop-list"><a id="cart-link" href="cart.html">Cart</a></li>
                            </ul>
                        </li>

                        <li class="list-item-head2">
                            <a id="about-link" href="about.html" class="nav-link">About</a>
                        </li>

                        <li class="list-item-head2">
                            <a id="blog-link" href="blog.html" class="nav-link">Blog</a>
                        </li>

                        <li class="list-item-head2">
                            <a href="contact.html" class="nav-link">Contact</a>
                        </li>

                        <li class="list-item-head2">
                            <a href="" class="nav-link icon-cart">
                                <i class="bi-cart-fill">[0]</i>
                            </a>
                        </li>

                        <li class="list-item-head2">
                            <button href="" class="nav-link js-login">
                                <i class="bi-person-fill"></i>
                            </button>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- Kết thức header 2 -->

        <!-- Bắt đầu slider -->
        <div id="slider">
            <div class="container">
                <div class="content text-shadow">
                    <div class="content-info">
                        <a href="index.html" class="home-card">Home /</a>
                        <p>Products</p>
                    </div>
                    <h1 class="product-header">Products</h1>
                </div>
            </div>
        </div>
        <!-- Kết thúc slider -->

        <!-- Bắt đầu nội dung của shop -->
        <div id="content-shop">
            <div class="container">
                <!-- Phần sản phẩm -->
                <div class="product">
                	<c:forEach items="${pd}" var="product">
                        <div class="products-select">
                            <div class="img-wrapper">
                                <div class="product-img">
                                    <img src="${product.imageUrl}" alt="${product.name}">
                                    <c:if test="${not empty product.sale }">
                                    	<p class="status">${product.sale}</p>
                                    </c:if>
                                </div>
                                <div class="product-cost">
                                    <h3 class="product-name">
                                        <a href="">${product.name}</a>
                                    </h3>
                                    <div class="price">
                                    <c:if test="${ not empty product.sale }">
                                    	<p class="price-sale">$${product.price}</p>
                                    </c:if>
                                        <p class="price-origin">$${product.discount}</p>
                                    </div>
                                    <div class="option">
                                        <div class="wrap-option">
                                            <a href="" class="icon-menu">
                                                <i class="bi-list"></i>
                                            </a>
                                            <a href="" class="icon-shopping">
                                                <i class="bi-cart4"></i>
                                            </a>
                                            <a href="" class="icon-like">
                                                <i class="bi-heart-fill"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                <!-- End sản phẩm -->
            </div>
        </div>
        <!-- Kết thúc nội dung của shop -->

        <!----- start home-subcribe ------>
        <div id="home-subcribe">
            <div class="subcribe-container row">
                <div class=" colum-subcribe">
                    <h2 class="subcribe-heading">
                        Subcribe to our Newsletter
                    </h2>

                    <p class="subcribe-content">
                        Get e-mail updates about our latest shops and special offers
                    </p>
                </div>

                <form action="#" class="form-group row">
                    <input type="text" class="subcribe-input" placeholder="Enter email address">
                    <input type="button" class="subcribe-submit" value="Subcribe">
                    <!-- <a href="#" class="subcribe-submit">Subcribe</a> -->
                </form>
            </div>
        </div>
        <!---- end home-subcribe ---->
<!---------------------------Footer---------------------------------->
        <footer id="footer">
            <div class="footer-container col">
                <div class="scoll-btn-wrapper">
                    <a href="#" class="scoll-btn">
                        <div class="scoll-icon-wheel"><span class="bi bi-chevron-up scoll-icon"></span></div>
                    </a>
                </div>

                <div class="footer-content-wrapper row">
                    <div class="col footer-discription">
                        <!-- discription title -->
                        <h2 class="dsc-title">
                            Brofoods
                        </h2>
                        <!-- discription content -->
                        <div class="dsc-content">
                            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.
                            </p>
                        </div>

                        <div class="footer-social-icon row">
                            <!-- Twitter -->
                            <div class="tw-icon-wrapper"><a href="#"><span class="fab fa-twitter"></span></a></div>
                            <!-- Facebook -->
                            <div class="fb-icon-wrapper"><a href="#"><span class="fab fa-facebook-f"></span></a></div>
                            <!-- Instagram -->
                            <div class="ins-icon-wrapper"><a href="#"><span class="fab fa-instagram"></span></a></div>
                        </div>
                    </div>

                    <div class="col footer-menu">
                        <!-- menu title -->
                        <h2 class="menu-title">
                            Menu
                        </h2>
                        <!-- menu content -->
                        <div class="menu-content">
                            <ul class="menu-list">
                                <li class="menu-item"><a href="#" class="menu-link">Shop</a></li>
                                <li class="menu-item"><a href="#" class="menu-link">About</a></li>
                                <li class="menu-item"><a href="#" class="menu-link">Journal</a></li>
                                <li class="menu-item"><a href="#" class="menu-link">Contact Us</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="col footer-help">
                        <!-- help title -->
                        <h2 class="help-title">
                            Help
                        </h2>
                        <!-- help content -->
                        <div class="help-content row">
                            <div class="help-left-content">
                                <ul class="help-left-list">
                                    <li class="help-list-item"><a href="#" class="help-link">Shipping Information</a>
                                    </li>
                                    <li class="help-list-item"><a href="#" class="help-link">Returns & Exchange</a></li>
                                    <li class="help-list-item"><a href="#" class="help-link">Terms & Conditions</a></li>
                                    <li class="help-list-item"><a href="#" class="help-link">Privacy Policy</a></li>
                                </ul>
                            </div>

                            <div class="help-right-content">
                                <ul class="help-right-list">
                                    <li class="help-list-item"><a href="#" class="help-link">FAQs</a></li>
                                    <li class="help-list-item"><a href="#" class="help-link">Contact</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="col footer-question">
                        <!-- question title -->
                        <h2 class="question-title">
                            Have a Questions?
                        </h2>
                        <!-- question content -->
                        <div class="question-content">
                            <div class="question-address">
                                <span class="bi bi-geo-alt-fill"></span>
                                <p>
                                    203 Fake St. Mountain View, San Francisco, California, USA
                                </p>
                            </div>

                            <div class="question-phone">
                                <a href="tel:+2 392 3929 210"><span class="bi bi-telephone-fill"></span>+2 392 3929
                                    210</a>
                            </div>

                            <div class="question-mail">
                                <a href="mailto:brofoods@gmail.com">
                                    <span class="bi bi-envelope-fill"></span>brofoods@gmail.com
                                </a>
                            </div>
                        </div>
                    </div>

                </div>

                <div class="footer-copyright row">
                    <p>Copyright ©2022 All rights reserved | From Brofoods with love <span
                            class="bi bi-heart-fill"></span></p>
                </div>
            </div>
        </footer>
        <!---------------------------------- END FooterFooter ---------------------------------->
    </div>
    
    <div class="modal">
        <div class="modal-container js-modal-containerLogin"> 
            <!-- modal-header -->
                    <a href="#"><i class="modal-icon-close js-modalLogin-close bi bi-x"></i></a>
                    <h1 class="modal-logo-brofoods">
                        brofoods
                    </h1>
                    <div class="modal-tab">
                        <button class="modal-tab-signin "> Sign In </button>
                        <button class="modal-tab-signup underlineHover js-logup"> Sign Up</button>
                    </div>
                
            

            <!-- modal-Login-form-->

            <form action="#" class="modal-formgroup">
                <input type="text" id="login" class="fadeIn " name="login"required placeholder="Email or phone number">
                <input type="text" id="password" class="fadeIn " name="login"required placeholder="Password">
                <input type="submit" class="fadeIn " value="LOG IN">
            </form>

            <!-- foget password -->
            <div class="modal-footer">
                <a href="#" class="modal-forgot-pass underlineHover">Forgot Password?</a>
            </div>
        </div>
    </div>

    <!------bắt đầu phần modal sign up ------>
    <div class="modal-logup">
        <div class="modal-container js-modal-containerLogup"> 
            <!-- modal-header -->
            <a href="#"><i class="modal-icon-close js-modalLogup-close bi bi-x"></i></a>
            <h1 class="modal-logo-brofoods">
                brofoods
            </h1>
            <div class="modal-tab">
                <button class="modal-tab-signin underlineHover js-login-after"> Sign In </button>
                <button class="modal-tab-signup "> Sign Up</button>
            </div>
                
            <!-- modal-Logup-form-->
            <form action="#" class="modal-formgroup">
                <input type="text" id="login" class="fadeIn" name="login"required placeholder="Email or phone number">
                <input type="text" id="password" class="fadeIn" name="login"required placeholder="Enter assword">
                <input type="text" id="password" class="fadeIn" name="login"required placeholder="Confirm password">
                <input type="submit" class="fadeIn" value="LOG UP">
            </form>
        </div>
    </div>
    <!-- link css icon-icons -->
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>



</html>
