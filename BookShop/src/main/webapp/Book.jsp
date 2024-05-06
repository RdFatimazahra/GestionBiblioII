<%--
  Created by IntelliJ IDEA.
  User: Taoufik
  Date: 5/5/2024
  Time: 9:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/Book.css">
    <title>Book |</title>
</head>
<body>



<body onload="hideIcons(this)">


<div class="big-pa">

    <section id="section-1">
        <div class="Fist-1">
            <img id="logo_img-id" src="images/BookStoreLogo.png" alt="shopLogo">
            <span id="span-logo-title"><a href="${pageContext.request.contextPath}/ShopServlet">BookStore</a></span>
        </div>
        <div class="Fist-2">
            <div class="dropdown">
                <button class="dropbtn"> <span id="Categories-span">Categories</span> <i id="angle-down" class="fa-solid fa-angle-down"></i></button>
                <div class="dropdown-content">
                    <a href="#">Love Stories</a>
                    <a href="#">Fantasy</a>
                    <a href="#">Comedy</a>
                </div>
            </div>
        </div>
        <div class="Fist-3">
            <div class="search-area">
                <form action="" class="search-form">
                    <input id="searchInput" type="search" name="search" placeholder="Search Book...">
                    <i class="fa fa-search  serach-symbol"></i>
                </form>
            </div>
        </div>
        <div class="Fist-4">
            <div id="top-icone-area">
                <a href="#"><i id="user-font" class='bx bx-user top-icone'></i></a>
                <div class="vertical-line"></div>
                <a href="#"><i id="heart-font" class="fa-regular fa-heart top-icone"></i></a>
                <div class="vertical-line"></div>
                <a href="#"><i id="basket-font" class="fa-solid fa-basket-shopping top-icone"></i></a>
            </div>
        </div>
    </section>

    <!-- separte line -->
    <div id="separate-line">
    </div>

    <section id="section-2">
        <ul id="nav-list">
            <li><a href="#"><span class="nav-list-word">Home</span></a></li>
            <li><a href="Shop.html"><span class="nav-list-word">Shop</span></a></li>
            <li><a href="#"><span class="nav-list-word">Author</span></a></li>
            <li><a href="#"><span class="nav-list-word">FeedBack</span></a></li>
        </ul>
    </section>

    <div class="div-separtor-footer">

    </div>
    <div class="back-next">
        <a style="margin-left: 10px; color: black;" href="${pageContext.request.contextPath}/ShopServlet">Shop</a>
        <i style="margin: 0 10px;" class="fa-solid fa-arrow-right"></i>
        <a style="color: orangered;" href="">Book</a>
    </div>

    <div class="container">

        <div class="left-div">
            <img src="data:image/jpg;base64, ${bookDetails.convertToBase64(bookDetails.coverImage)}" alt="Cover Image">
        </div>
        <div class="right-div">
            <div class="details-book">
                <dir class="status">In Stock</dir>
                <h1 id="book-title">${bookDetails.title}</h1>
                <div class="spans">
                    <a href=""><span class="author">Author : </span></a>
                    <span style="color: black;">${bookDetails.getAuthorName(bookDetails.getAuthorId())}</span>
                    <span > | </span>
                    <span style="color: black;"> <span class="SkU" >ISBN: </span>${bookDetails.isbn} </span>
                </div>

                <div class="stars-rating">
                    <c:choose>
                        <c:when test="${bookDetails.rating == 1}">
                            <span class="star fa fa-star checked"></span>
                            <span class="star fa fa-star"></span>
                            <span class="star fa fa-star"></span>
                            <span class="star fa fa-star"></span>
                            <span class="star fa fa-star"></span>
                        </c:when>
                        <c:when test="${bookDetails.rating == 2}">
                            <span class="star fa fa-star checked"></span>
                            <span class="star fa fa-star checked"></span>
                            <span class="star fa fa-star"></span>
                            <span class="star fa fa-star"></span>
                            <span class="star fa fa-star"></span>
                        </c:when>
                        <c:when test="${bookDetails.rating == 3}">
                            <span class="star fa fa-star checked"></span>
                            <span class="star fa fa-star checked"></span>
                            <span class="star fa fa-star checked"></span>
                            <span class="star fa fa-star"></span>
                            <span class="star fa fa-star"></span>
                        </c:when>
                        <c:when test="${bookDetails.rating == 4}">
                            <span class="star fa fa-star checked"></span>
                            <span class="star fa fa-star checked"></span>
                            <span class="star fa fa-star checked"></span>
                            <span class="star fa fa-star checked"></span>
                            <span class="star fa fa-star"></span>
                        </c:when>
                        <c:when test="${bookDetails.rating == 5}">
                            <span class="star fa fa-star checked"></span>
                            <span class="star fa fa-star checked"></span>
                            <span class="star fa fa-star checked"></span>
                            <span class="star fa fa-star checked"></span>
                            <span class="star fa fa-star checked"></span>
                        </c:when>
                    </c:choose>
                </div>

                <div class="line"></div>

                <span id="book-price"><span id="dollar">$</span>${bookDetails.price}</span>
                <span id="dollar-discount">$ </span><strike class="discount">900</strike>

                <div class="description">
                    ${bookDetails.description}
                </div>

                <div class="line"></div>

                <form action="" id="button-add-to-card">
                    <input type="hidden" name="" value="">
                    <button class="button-33" role="button"><i id="basket-icone-button" class="fa-solid fa-basket-shopping"></i> Emprunt</button>
                    <i id="like-heart-symbol" class="fa-solid fa-heart"></i>
                </form>

                <div class="line"></div>

                <span class="Category-word">Category: </span> <span class="Category">Comedy</span>



            </div>
        </div>

    </div>



</body>
</html>
