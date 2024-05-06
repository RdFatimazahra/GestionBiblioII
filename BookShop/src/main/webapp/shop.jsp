<%@ page import="java.util.Base64" %>
<%@ page import="model.Book" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 5/5/2024
  Time: 1:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

    <link rel="stylesheet" href="css/shop.css">
    <title>Shop | Book</title>
</head>
<body>
<footer>
    <section id="section-1">
        <div class="Fist-1">
            <img id="logo_img-id" src="images/BookStoreLogo.png" alt="shopLogo">
            <span id="span-logo-title"><a href="#">BookStore</a></span>
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
            <li><a href="#"><span class="nav-list-word" id="list-shop-section">Shop</span></a></li>
            <li><a href="#"><span class="nav-list-word">Author</span></a></li>
            <li><a href="#"><span class="nav-list-word">FeedBack</span></a></li>
        </ul>
    </section>
</footer>

<div class="div-separtor-footer">
    <a style="margin-left: 10px; color: black;" href="Home.jsp">Home</a>
    <i style="margin: 0 10px;" class="fa-solid fa-arrow-right"></i>
    <a style="color: orangered;" href="">Shop</a>
</div>

<div class="container">

    <div class="Filter-div-father">
        <a href="#"> <i id="filter-icone-i" class="fa-solid fa-filter"></i></a>
        <span id="Filter-word">Filter</span>
        <a href="#"><i id="list-view-icone" class="fa-solid fa-list"></i></a>
        <a href="#"><i id="grid-view-icone" class="fa-solid fa-grip-vertical"></i></a>
    </div>





    <div class="filter-under-separator"></div>
    <!-- foreach for items -->
    <!-- item 1 -->
    <!-- Assuming 'books' is a list of book objects -->
    <c:forEach items="${books}" var="book">
        <div class="item-list">
            <div class="div-cover">
                <img src="data:image/jpg;base64, ${book.convertToBase64(book.coverImage)}" alt="Cover Image">
            </div>
        <div class="div-details">
            <a class="a-title" href="BookNo?TheBookId=${book.id}"><p id="book-title">${book.title}</p></a>
            <div class="stars-rating">
                <c:choose>
                    <c:when test="${book.rating == 1}">
                        <span class="star fa fa-star checked"></span>
                        <span class="star fa fa-star"></span>
                        <span class="star fa fa-star"></span>
                        <span class="star fa fa-star"></span>
                        <span class="star fa fa-star"></span>
                    </c:when>
                    <c:when test="${book.rating == 2}">
                        <span class="star fa fa-star checked"></span>
                        <span class="star fa fa-star checked"></span>
                        <span class="star fa fa-star"></span>
                        <span class="star fa fa-star"></span>
                        <span class="star fa fa-star"></span>
                    </c:when>
                    <c:when test="${book.rating == 3}">
                        <span class="star fa fa-star checked"></span>
                        <span class="star fa fa-star checked"></span>
                        <span class="star fa fa-star checked"></span>
                        <span class="star fa fa-star"></span>
                        <span class="star fa fa-star"></span>
                    </c:when>
                    <c:when test="${book.rating == 4}">
                        <span class="star fa fa-star checked"></span>
                        <span class="star fa fa-star checked"></span>
                        <span class="star fa fa-star checked"></span>
                        <span class="star fa fa-star checked"></span>
                        <span class="star fa fa-star"></span>
                    </c:when>
                    <c:when test="${book.rating == 5}">
                        <span class="star fa fa-star checked"></span>
                        <span class="star fa fa-star checked"></span>
                        <span class="star fa fa-star checked"></span>
                        <span class="star fa fa-star checked"></span>
                        <span class="star fa fa-star checked"></span>
                    </c:when>
                </c:choose>
            </div>
                <p id="Author-name"><c:out value="${book.getAuthorName(book.getAuthorId())}"/></p>
                <p id="description-book"><c:out value="${book.description}"/></p>
                <p id="price"><span>$</span>${book.price}</p>
                <form action="BookNo" method="get" id="button-add-to-cart" style="margin-left: 30px">
                    <input type="hidden" name="TheBookId" value="${book.id}">
                    <button class="button-33" role="button"></i> Show Details</button>
                    <i id="like-heart-symbol" class="far fa-heart"></i>
                </form>
            </div>
        </div>
        <div class="filter-under-separator"></div>
    </c:forEach>











    <!-- container end -->
</div>


</body>
</html>
