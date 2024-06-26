<%--
  Created by IntelliJ IDEA.
  User: Taoufik
  Date: 5/5/2024
  Time: 10:35 PM
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
    <link rel="stylesheet" href="css/Home.css">
    <title>BookStore</title>
</head>
<body onload="hideIcons(this)">


<div class="big-pa">

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
            <li><a href="Shop.html"><span class="nav-list-word">Shop</span></a></li>
            <li><a href="#"><span class="nav-list-word">Author</span></a></li>
            <li><a href="#"><span class="nav-list-word">FeedBack</span></a></li>
        </ul>
    </section>


    <section id="section-3">
        <div class="father">
            <div id="image-home-div">
                <img  id="image-home" src="images/HomeBookImage.png" alt="home image">
            </div>
            <div class="look">
                <div class="paragraph">
                    <p class="line">Enjoy a 70% discount on</p>
                    <p class="line">a wide selection of</p>
                    <p class="line"> books.</p>
                </div>
                <a href="${pageContext.request.contextPath}/ShopServlet"><span>Shop Now</span></a>
            </div>
            <img id="discount-img" src="images/discount.png" alt="discount-image">
        </div>
    </section>

    <!-- separtor view all -->
    <section id="section-4" >
        <div class="viewAll-area">
            <h1>Bestselling books</h1>
            <div class="divline"></div>
            <a href=""><span>View All</span><i class="fa-solid fa-angle-right iii"></i></a>
        </div>
    </section>


    <section class="section-5 Bestselling-books-section">
        <!-- Container to hold the scrollable items -->
        <div class="container-HorizontalScroll" id="container-HorizontalScroll_id">
            <!-- Items with links -->
            <div class="item">
                <div class="book"  onload="hideIcons(this)" onmouseover="showIcons(this)" onmouseout="hideIcons(this)">
                    <div class="book-cover">
                        <img src="images/booksP/His-Saving-Grace.jpg">
                        <div class="book-icons">
                            <i class="fas fa-eye"></i>
                            <i class="fas fa-shopping-cart"></i>
                            <i class="fas fa-comments"></i>
                            <i class="fas fa-save"></i>
                        </div>
                    </div>
                    <p id="item-title-book">His Saving Grace</p>
                    <div class="stars-rating">
                        <span class="star fa fa-star checked"></span>
                        <span class="star fa fa-star checked"></span>
                        <span class="star fa fa-star checked"></span>
                        <span class="star fa fa-star checked"></span>
                        <span class="star fa fa-star"></span>
                    </div>
                    <p class="writer">J. K. Rowling</p>
                    <p id="dollar">$<span id="book-price">100.45</span></p>
                </div>
            </div>
            <div class="item">
                <div class="book" >
                    <div class="book-cover"  onload="hideIcons(this)" onmouseover="showIcons(this)" onmouseout="hideIcons(this)">
                        <img src="images/booksP/Goodbye-Again.jpg">
                        <div class="book-icons">
                            <i class="fas fa-eye"></i>
                            <i class="fas fa-shopping-cart"></i>
                            <i class="fas fa-comments"></i>
                            <i class="fas fa-save"></i>
                        </div>
                    </div>
                    <p id="item-title-book">Goodbye Again</p>
                    <div class="stars-rating">
                        <span class="star fa fa-star checked"></span>
                        <span class="star fa fa-star checked"></span>
                        <span class="star fa fa-star checked"></span>
                        <span class="star fa fa-star "></span>
                        <span class="star fa fa-star"></span>
                    </div>
                    <p class="writer">J. K. Rowling</p>
                    <p id="dollar">$<span id="book-price">100.45</span></p>
                </div>
            </div>
            <div class="item">
                <div class="book" >
                    <div class="book-cover"  onload="hideIcons(this)" onmouseover="showIcons(this)" onmouseout="hideIcons(this)">
                        <img src="images/booksP/Heartland-Stars.jpg">
                        <div class="book-icons">
                            <i class="fas fa-eye"></i>
                            <i class="fas fa-shopping-cart"></i>
                            <i class="fas fa-comments"></i>
                            <i class="fas fa-save"></i>
                        </div>
                    </div>
                    <p id="item-title-book">Heartland Stars</p>
                    <div class="stars-rating">
                        <span class="star fa fa-star checked"></span>
                        <span class="star fa fa-star checked"></span>
                        <span class="star fa fa-star "></span>
                        <span class="star fa fa-star "></span>
                        <span class="star fa fa-star"></span>
                    </div>
                    <p class="writer">J. K. Rowling</p>
                    <p id="dollar">$<span id="book-price">100.45</span></p>
                </div>
            </div>
            <div class="item">
                <div class="book" >
                    <div class="book-cover"  onload="hideIcons(this)" onmouseover="showIcons(this)" onmouseout="hideIcons(this)">
                        <img src="images/booksP/The-Girl-and-the-Last-Sleepover.jpg">
                        <div class="book-icons">
                            <i class="fas fa-eye"></i>
                            <i class="fas fa-shopping-cart"></i>
                            <i class="fas fa-comments"></i>
                            <i class="fas fa-save"></i>
                        </div>
                    </div>
                    <p id="item-title-book">The Girl and the Last Sleepover</p>
                    <div class="stars-rating">
                        <span class="star fa fa-star checked"></span>
                        <span class="star fa fa-star "></span>
                        <span class="star fa fa-star "></span>
                        <span class="star fa fa-star "></span>
                        <span class="star fa fa-star"></span>
                    </div>
                    <p class="writer">J. K. Rowling</p>
                    <p id="dollar">$<span id="book-price">100.45</span></p>
                </div>
            </div>
            <div class="item">
                <div class="book">
                    <div class="book-cover"  onload="hideIcons(this)"  onmouseover="showIcons(this)" onmouseout="hideIcons(this)">
                        <img src="images/booksP/House-of-Sky-and-Breath.jpg">
                        <div class="book-icons">
                            <i class="fas fa-eye"></i>
                            <i class="fas fa-shopping-cart"></i>
                            <i class="fas fa-comments"></i>
                            <i class="fas fa-save"></i>
                        </div>
                    </div>
                    <p id="item-title-book">House of Sky and Breath</p>
                    <div class="stars-rating">
                        <span class="star fa fa-star checked"></span>
                        <span class="star fa fa-star checked"></span>
                        <span class="star fa fa-star checked"></span>
                        <span class="star fa fa-star checked"></span>
                        <span class="star fa fa-star"></span>
                    </div>
                    <p class="writer">J. K. Rowling</p>
                    <p id="dollar">$<span id="book-price">100.45</span></p>
                </div>
            </div>
            <div class="item">
                <div class="book">
                    <div class="book-cover"  onload="hideIcons(this)" onmouseover="showIcons(this)" onmouseout="hideIcons(this)">
                        <img src="images/booksP/Treachery-Alpha-Colony-Book-8.jpg">
                        <div class="book-icons">
                            <i class="fas fa-eye"></i>
                            <i class="fas fa-shopping-cart"></i>
                            <i class="fas fa-comments"></i>
                            <i class="fas fa-save"></i>
                        </div>
                    </div>
                    <p id="item-title-book">Treachery: Alpha Colony Book 8</p>
                    <div class="stars-rating">
                        <span class="star fa fa-star checked"></span>
                        <span class="star fa fa-star checked"></span>
                        <span class="star fa fa-star checked"></span>
                        <span class="star fa fa-star checked"></span>
                        <span class="star fa fa-star"></span>
                    </div>
                    <p class="writer">J. K. Rowling</p>
                    <p id="dollar">$<span id="book-price">100.45</span></p>
                </div>
            </div>
            <div class="item">
                <div class="book">
                    <div class="book-cover"  onload="hideIcons(this)" onmouseover="showIcons(this)" onmouseout="hideIcons(this)">
                        <img src="images/booksP/Annie-Leibovitz-Wonderland.jpg">
                        <div class="book-icons">
                            <i class="fas fa-eye"></i>
                            <i class="fas fa-shopping-cart"></i>
                            <i class="fas fa-comments"></i>
                            <i class="fas fa-save"></i>
                        </div>
                    </div>
                    <p id="item-title-book">Annie Leibovitz: Wonderland</p>
                    <div class="stars-rating">
                        <span class="star fa fa-star checked"></span>
                        <span class="star fa fa-star checked"></span>
                        <span class="star fa fa-star checked"></span>
                        <span class="star fa fa-star checked"></span>
                        <span class="star fa fa-star"></span>
                    </div>
                    <p class="writer">J. K. Rowling</p>
                    <p id="dollar">$<span id="book-price">100.45</span></p>
                </div>
            </div>
            <div class="item">
                <div class="book">
                    <div class="book-cover"  onload="hideIcons(this)"  onmouseover="showIcons(this)" onmouseout="hideIcons(this)">
                        <img src="images/booksP/My-Dearest-Darkest.jpg">
                        <div class="book-icons">
                            <i class="fas fa-eye"></i>
                            <i class="fas fa-shopping-cart"></i>
                            <i class="fas fa-comments"></i>
                            <i class="fas fa-save"></i>
                        </div>
                    </div>
                    <p id="item-title-book">My Dearest Darkest</p>
                    <div class="stars-rating">
                        <span class="star fa fa-star checked"></span>
                        <span class="star fa fa-star checked"></span>
                        <span class="star fa fa-star checked"></span>
                        <span class="star fa fa-star checked"></span>
                        <span class="star fa fa-star"></span>
                    </div>
                    <p class="writer">J. K. Rowling</p>
                    <p id="dollar">$<span id="book-price">100.45</span></p>
                </div>
            </div>
            <div class="item">
                <div class="book">
                    <div class="book-cover"  onload="hideIcons(this)"  onmouseover="showIcons(this)" onmouseout="hideIcons(this)">
                        <img src="images/booksP/Surrounded-by-Idiots.jpg">
                        <div class="book-icons">
                            <i class="fas fa-eye"></i>
                            <i class="fas fa-shopping-cart"></i>
                            <i class="fas fa-comments"></i>
                            <i class="fas fa-save"></i>
                        </div>
                    </div>
                    <p id="item-title-book">Surrounded by Idiots</p>
                    <div class="stars-rating">
                        <span class="star fa fa-star checked"></span>
                        <span class="star fa fa-star checked"></span>
                        <span class="star fa fa-star checked"></span>
                        <span class="star fa fa-star checked"></span>
                        <span class="star fa fa-star"></span>
                    </div>
                    <p class="writer">J. K. Rowling</p>
                    <p id="dollar">$<span id="book-price">100.45</span></p>
                </div>
            </div>
            <div class="item">
                <div class="book">
                    <div class="book-cover" onload="hideIcons(this)"  onmouseover="showIcons(this)" onmouseout="hideIcons(this)">
                        <img src="images/booksP/Kemp-Warriors-in-the-Snow.jpg">
                        <div class="book-icons">
                            <i class="fas fa-eye"></i>
                            <i class="fas fa-shopping-cart"></i>
                            <i class="fas fa-comments"></i>
                            <i class="fas fa-save"></i>
                        </div>
                    </div>
                    <p id="item-title-book">Kemp: Warriors in the Snow</p>
                    <div class="stars-rating">
                        <span class="star fa fa-star checked"></span>
                        <span class="star fa fa-star checked"></span>
                        <span class="star fa fa-star checked"></span>
                        <span class="star fa fa-star checked"></span>
                        <span class="star fa fa-star"></span>
                    </div>
                    <p class="writer">J. K. Rowling</p>
                    <p id="dollar">$<span id="book-price">100.45</span></p>
                </div>
            </div>
    </section>

    <!-- separtor view all -->
    <section id="section-4" >
        <div class="viewAll-area">
            <h1>Deals Of The Week</h1>
            <div class="divline"></div>
            <a href=""><span>View All</span><i class="fa-solid fa-angle-right iii"></i></a>
        </div>
    </section>



    <section class="Deals-Of-The-Week">

        <div class="the-week-father">
            <div  class="worl-book-div">
                <img id="world-image-id" src="images/world-book.png" alt="world-book">
            </div>
            <div class="sideBook-Father">
                <div class="binary-div">
                    <div class="divv-img"> <img src="images/booksP/The-Girlfriend-Arrangement.jpg"></div>
                    <div class="div-img-desc">
                        <p id="item-title-book">The Girlfriend Arrangement</p>
                        <div class="stars-rating">
                            <span class="star fa fa-star checked"></span>
                            <span class="star fa fa-star checked"></span>
                            <span class="star fa fa-star checked"></span>
                            <span class="star fa fa-star checked"></span>
                            <span class="star fa fa-star"></span>
                        </div>
                        <p class="writer">J. K. Rowling</p>
                        <p id="dollar">$<span id="book-price">100.45</span></p>
                    </div>
                </div>

                <div class="sideline"></div>

                <!-- book 2 -->
                <div class="binary-div">
                    <div class="divv-img"> <img src="images/booksP/Dire-Wolf-Stakes.jpg"></div>
                    <div class="div-img-desc">
                        <p id="item-title-book">Dire Wolf Stakes</p>
                        <div class="stars-rating">
                            <span class="star fa fa-star checked"></span>
                            <span class="star fa fa-star checked"></span>
                            <span class="star fa fa-star checked"></span>
                            <span class="star fa fa-star checked"></span>
                            <span class="star fa fa-star"></span>
                        </div>
                        <p class="writer">J. K. Rowling</p>
                        <p id="dollar">$<span id="book-price">100.45</span></p>
                    </div>
                </div>
                <!-- book 3 -->

                <div class="sideline"></div>

                <div class="binary-div">
                    <div class="divv-img"> <img src="images/booksP/The-Bear-of-Byzantium.jpg"></div>
                    <div class="div-img-desc">
                        <p id="item-title-book">The Bear of Byzantium</p>
                        <div class="stars-rating">
                            <span class="star fa fa-star checked"></span>
                            <span class="star fa fa-star checked"></span>
                            <span class="star fa fa-star checked"></span>
                            <span class="star fa fa-star checked"></span>
                            <span class="star fa fa-star"></span>
                        </div>
                        <p class="writer">J. K. Rowling</p>
                        <p id="dollar">$<span id="book-price">100.45</span></p>
                    </div>
                </div>

            </div>
        </div>
    </section>
    <!-- separtor view all -->
    <section id="section-4" >
        <div class="viewAll-area">
            <h1>What's In Trend</h1>
            <div class="divline"></div>
            <a href=""><span>View All</span><i class="fa-solid fa-angle-right iii"></i></a>
        </div>
    </section>

    <!-- What's In Trend -->


    <section>
        <div class="container-HorizontalScroll" id="container-HorizontalScroll_id">
            <!-- Items with links -->
            <div class="item-Trend">
                <div class="book-Trend">
                    <div class="flexFather">
                        <div class="book-cover-Trend">
                            <img src="images/booksP/His-Saving-Grace.jpg">
                        </div>
                        <div class="details-trend">
                            <p id="item-title-book-Trend">His Saving Grace</p>
                            <div class="stars-rating">
                                <span class="star fa fa-star checked"></span>
                                <span class="star fa fa-star checked"></span>
                                <span class="star fa fa-star checked"></span>
                                <span class="star fa fa-star checked"></span>
                                <span class="star fa fa-star"></span>
                            </div>
                            <p class="writer">J. K. Rowling</p>

                            <p id="dollar">$<span id="book-price">100.45</span></p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- item 2 -->
            <div class="item-Trend " style="background-color: #F4FBF3;">
                <div class="book-Trend">
                    <div class="flexFather">
                        <div class="book-cover-Trend">
                            <img src="images/booksP/His-Saving-Grace.jpg">
                        </div>
                        <div class="details-trend">
                            <p id="item-title-book-Trend">His Saving Grace</p>
                            <div class="stars-rating">
                                <span class="star fa fa-star checked"></span>
                                <span class="star fa fa-star checked"></span>
                                <span class="star fa fa-star checked"></span>
                                <span class="star fa fa-star checked"></span>
                                <span class="star fa fa-star"></span>
                            </div>
                            <p class="writer">J. K. Rowling</p>

                            <p id="dollar">$<span id="book-price">100.45</span></p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- item 3 -->
            <div class="item-Trend" style="background-color: #f4f7fe;">
                <div class="book-Trend">
                    <div class="flexFather">
                        <div class="book-cover-Trend">
                            <img src="images/booksP/His-Saving-Grace.jpg">
                        </div>
                        <div class="details-trend">
                            <p id="item-title-book-Trend">His Saving Grace</p>
                            <div class="stars-rating">
                                <span class="star fa fa-star checked"></span>
                                <span class="star fa fa-star checked"></span>
                                <span class="star fa fa-star checked"></span>
                                <span class="star fa fa-star checked"></span>
                                <span class="star fa fa-star"></span>
                            </div>
                            <p class="writer">J. K. Rowling</p>

                            <p id="dollar">$<span id="book-price">100.45</span></p>
                        </div>
                    </div>
                </div>
            </div>



            </dir>
    </section>

    <section class="what-people-saying">
        <div class="div-image_people-saying">
            <img src="images/people-saying.png">
        </div>
        <div class="Feedback-dev">
            <div class="feedback-slider">
                <div class="feedback-item">
                    <p><span class="qote">“</span> Great store, amazing books! <span class="qote">“</span></p>
                    <small>- Najia</small>
                </div>
                <div class="feedback-item">
                    <p><span class="qote">“</span> Excellent service, very satisfied! <span class="qote">“</span> </p>
                    <small>- Togashi</small>
                </div>
                <div class="feedback-item">
                    <p><span class="qote">“</span>amazing Books!<span class="qote">“</span> </p>
                    <small>- John Doe</small>
                </div>
                <!-- Add more feedback items as needed -->
            </div>

        </div>
    </section>

















</div>
<script src="js/showicons.js"></script>
<script src="js/HorizontalScroll.js"></script>
<script src="js/TextSlider.js"></script>
</body>
</html>
