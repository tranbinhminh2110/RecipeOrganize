<%-- 
    Document   : heathy
    Created on : Jul 10, 2023, 7:04:48 AM
    Author     : dangt
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="team3.recipe.RecipeOrganizeDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="description" content="">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <!-- Title -->
        <title>Recipe Organize | Recipe Post</title>

        <!-- Favicon -->
        <link rel="icon" href="img/recipe/favicon.ico">

        <!-- Core Stylesheet -->
        <link rel="stylesheet" href="recipe.css">
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <!-- Search Wrapper -->
        <div class="search-wrapper">
            <!-- Close Btn -->
            <div class="close-btn"><i class="fa fa-times" aria-hidden="true"></i></div>

            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <form action="SearchController" method="post">
                            <input type="search" name="txtSearch" placeholder="Type any keywords...">
                            <button type="submit" name="btAction" value="search"><i class="fa fa-search" aria-hidden="true"></i></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <!-- ##### Header Area Start ##### -->
        <header class="header-area">

            <!-- Navbar Area -->
            <div class="delicious-main-menu">
                <div class="classy-nav-container breakpoint-off">
                    <div class="container">
                        <!-- Menu -->
                        <nav class="classy-navbar justify-content-between" id="deliciousNav">

                            <!-- Logo -->
                            <a class="nav-brand" href="homePage.jsp"><img src="img/recipe/logo.png" alt=""></a>

                            <!-- Navbar Toggler -->
                            <div class="classy-navbar-toggler">
                                <span class="navbarToggler"><span></span><span></span><span></span></span>
                            </div>

                            <!-- Menu -->
                            <div class="classy-menu">

                                <!-- close btn -->
                                <div class="classycloseIcon">
                                    <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                                </div>

                                <!-- Nav Start -->
                                <div class="classynav">
                                    <ul>
                                        <li class="active"><a href="homePage.jsp">Home</a></li>
                                        <li><a href="#">Pages</a>
                                            <ul class="dropdown">
                                                <li><a href="homePage.jsp">Home</a></li>
                                                <li><a href="about.html">About Us</a></li>
                                                <li><a href="blog-post.html">Blog Post</a></li>
                                                <li><a href="receipe-post.html">Recipe Post</a></li>
                                                <li><a href="contact.html">Contact</a></li>
                                                <li><a href="elements.html">Elements</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">Menu</a>
                                            <div class="megamenu">
                                                <ul class="dropdown">
                                                    <li><a href="homePage.jsp">Rice</a></li>
                                                    <li><a href="about.html">Noodles</a></li>
                                                    <li><a href="blog-post.html">Cake</a></li>
                                                    <li><a href="receipe-post.html">Drinks</a></li>
                                                    <li><a href="contact.html">Dessert</a></li>
                                                    <li><a href="elements.html">International dishes</a></li>
                                                </ul>
                                            </div>
                                        </li>
                                        <li><a href="AllRecipeController">Recipes</a></li>
                                        <li><a href="HeathyRecipeController">Healthy Food</a></li>
                                        <li><a href="contact.jsp">Contact</a></li>
                                        <li><a href="login.jsp">Login</a></li>
                                    </ul>

                                    <!-- Newsletter Form -->
                                    <div class="search-btn">
                                        <i class="fa fa-search" aria-hidden="true"></i>
                                    </div>

                                </div>
                                <!-- Nav End -->
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </header>
        <!-- ##### Header Area End ##### -->

        <!-- ##### Breadcumb Area Start ##### -->
        <div class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/breadcumb3.jpg);">
            <div class="container h-100">
                <div class="row h-100 align-items-center">
                    <div class="col-12">
                        <div class="breadcumb-text text-center">
                            <h2>Recipe</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- ##### Breadcumb Area End ##### -->

        <div class="receipe-post-area section-padding-80">

            <!-- Receipe Post Search -->
            <div class="receipe-post-search mb-80">
                <div class="container">

                    <form action="SearchController" method="post">
                        <div class="row">
                            <!-- Recipe Category-->
                            <div class="col-12 col-lg-4">
                                <ul class="category-list">
                                    <select onchange="location = this.value;">
                                        <option value="CategoryController?categoryID=0">All Recipe Categories</option>
                                        <option value="CategoryController?categoryID=1">Main Dish</option>
                                        <option value="CategoryController?categoryID=2">Pasta</option>
                                        <option value="CategoryController?categoryID=3">Salad</option>
                                        <option value="CategoryController?categoryID=4">Vegetarian</option>
                                        <option value="CategoryController?categoryID=5">Dessert</option>
                                        <option value="CategoryController?categoryID=6">Bakery</option>
                                    </select>

                                </ul>
                            </div>
                            <!-- Recipe Search-->
                            <div class="col-12 col-lg-4">
                                <input type="search" name="txtSearch" placeholder="Search Receipies" >
                            </div>
                            <div class="col-12 col-lg-4 text-right">
                                <button type="submit" class="btn delicious-btn" name="btAction" value="search">Search</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <!-- Result -->
            <div class="">
                <div class="result">
                    <div class="section-heading text-left">
                        <h3>Result j</h3>
                    </div>
                </div>
            </div>
            <div class="row">
                <c:forEach items="${recipes}" var="recipe">
                    <div class="col-12 col-md-3">
                        <div class="card product-container">
                            <img class="card-img-top" src="${recipe.imgUrl}" alt="Card image cap">
                            <div class="card-body">
                                <div>
                                    <h3 class="card-title view-title">
                                        <b>
                                            <a href="DetailController?recipeID=${recipe.recipeID}" title="View Product">${recipe.recipeName}</a>
                                        </b>
                                    </h3>
                                </div>
                                <div>
                                    <p class="card-text calo">
                                        <b>${recipe.caloRecipe}</b>
                                    </p>
                                </div>
                                <div>
                                    <p class="card-text show_txt" id="description">${recipe.description}</p>
                                </div>
                                <div class="rating">
                                    <span class="star"><i class="fa fa-star"></i></span>
                                    <span class="star"><i class="fa fa-star"></i></span>
                                    <span class="star"><i class="fa fa-star"></i></span>
                                    <span class="star"><i class="fa fa-star"></i></span>
                                    <span class="star"><i class="fa fa-star"></i></span>
                                </div>
                                <button class="add-to-cart-btn">Favorite</button>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>

            

<!-- ##### Follow Us Instagram Area Start ##### -->
<div class="follow-us-instagram">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h5>Follow Us Instragram</h5>
            </div>
        </div>
    </div>
    <!-- Instagram Feeds -->
    <div class="insta-feeds d-flex flex-wrap">
        <!-- Single Insta Feeds -->
        <div class="single-insta-feeds">
            <img src="img/bg-img/insta1.jpg" alt="">
            <!-- Icon -->
            <div class="insta-icon">
                <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
            </div>
        </div>

        <!-- Single Insta Feeds -->
        <div class="single-insta-feeds">
            <img src="img/bg-img/insta2.jpg" alt="">
            <!-- Icon -->
            <div class="insta-icon">
                <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
            </div>
        </div>

        <!-- Single Insta Feeds -->
        <div class="single-insta-feeds">
            <img src="img/bg-img/insta3.jpg" alt="">
            <!-- Icon -->
            <div class="insta-icon">
                <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
            </div>
        </div>

        <!-- Single Insta Feeds -->
        <div class="single-insta-feeds">
            <img src="img/bg-img/insta4.jpg" alt="">
            <!-- Icon -->
            <div class="insta-icon">
                <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
            </div>
        </div>

        <!-- Single Insta Feeds -->
        <div class="single-insta-feeds">
            <img src="img/bg-img/insta5.jpg" alt="">
            <!-- Icon -->
            <div class="insta-icon">
                <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
            </div>
        </div>

        <!-- Single Insta Feeds -->
        <div class="single-insta-feeds">
            <img src="img/bg-img/insta6.jpg" alt="">
            <!-- Icon -->
            <div class="insta-icon">
                <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
            </div>
        </div>

        <!-- Single Insta Feeds -->
        <div class="single-insta-feeds">
            <img src="img/bg-img/insta7.jpg" alt="">
            <!-- Icon -->
            <div class="insta-icon">
                <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
            </div>
        </div>
    </div>
</div>
<!-- ##### Follow Us Instagram Area End ##### -->

<!-- ##### Footer Area Start ##### -->
<footer class="footer-area">
    <div class="container h-100">
        <div class="row h-100">
            <div class="col-12 h-100 d-flex flex-wrap align-items-center justify-content-between">
                <!-- Footer Social Info -->
                <div class="footer-social-info text-right">
                    <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                    <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                    <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                    <a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
                    <a href="#"><i class="fa fa-behance" aria-hidden="true"></i></a>
                    <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                </div>
                <!-- Footer Logo -->
                <div class="footer-logo">
                    <a href="homePage.jsp"><img src="img/recipe/logo.png" alt=""></a>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- ##### Footer Area Start ##### -->

<!-- ##### All Javascript Files ##### -->
<!-- jQuery-2.2.4 js -->
<script src="js/jquery/jquery-2.2.4.min.js"></script>
<!-- Popper js -->
<script src="js/bootstrap/popper.min.js"></script>
<!-- Bootstrap js -->
<script src="js/bootstrap/bootstrap.min.js"></script>
<!-- All Plugins js -->
<script src="js/plugins/plugins.js"></script>
<!-- Active js -->
<script src="js/active.js"></script>

</body>
</html>

