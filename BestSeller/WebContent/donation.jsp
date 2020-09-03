<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page import="java.util.ArrayList" %>
     <%@ page import="user.User" %>
    <!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Donation</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.rawgit.com/michalsnik/aos/2.1.1/dist/aos.css">
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/donation.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick.css"/>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick-theme.min.css"/>
    <script src="assets/js/aos.js"></script>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/skel.min.js"></script>
    <script src="assets/js/main.js"></script>

    <link rel="stylesheet" type="text/css" href="./about_style.css"/>
    <link rel="stylesheet" type="text/css" href="./slick/slick.css"/>
    <link rel="stylesheet" type="text/css" href="./slick/slick-theme.css"/>
    <link rel="stylesheet" href="https://cdn.rawgit.com/michalsnik/aos/2.1.1/dist/aos.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>


    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick.min.js"></script>
    <style>

        .topnav {
            z-index: 9999;
            margin-right: auto;
            overflow: hidden;
            background-color: rgb(152, 154, 154);
            text-align: center;
            /* transition: top .25s ease .5s;*/
            position: fixed;
            width: 100%;
            left:0px;
            top:0px;
            display:none;
        }
        #a1{
            margin-left: 37%;
        }
        .topnav a {
            float: left;
            display: block;
            color: #fafdfd;
            font-size: 27px;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }
        /* Change color on hover */
        .topnav a:hover {
            background-color: rgb(119, 119, 119);
            color: white;
        }
		body{
		background-color:white;
		}
    </style>
</head>
<body>
<div class="topnav"> <!--This is menu bar.-->
    <a href="main.jsp" id="a1">HOME</a>
    <a href="Gift.jsp">GIFT</a>
    <a href="donation.jsp">DONATION</a>
    <a href="recommend.do">RECOMMEND</a>
</div>

<script type="text/javascript">
    $(function(){
        var vi = 300;  // í  ë ¨ì   ë© ë ´ í  ì  í   ì ¤í ¬ë¡¤ ì  ì¹ ê°  ì§ ì  
        $(window).scroll(function(){
            var num = $(window).scrollTop();

            if( num > vi ){
                $(".topnav").fadeIn();
            }else{
                $(".topnav").fadeOut();
            }
        });
    });
</script>

<script>
    AOS.init({
        easing: 'linear',
        duration: 700
    });

    $(".hover").mouseleave(
        function () {
            $(this).removeClass("hover");
        }
    );

    $(document).ready(function(){
        $('.ex_slide').slick({
            dots: false,
            infinite: true,
            slidesToShow: 1,
            slidesToScroll: 1,
            autoplay:true,
            autoplaySpeed:2000
        });
    });



</script>

<div id="wrapper">
    <!-- Header -->
    <header id="header">
        <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
        <h1 style="font-size:50px;">Do you want to <strong>donate</strong>?</h1><br/>
        <h1>Your book <strong>donation</strong> is a great help to many people.</h1>
    </header>
    <br/><br/><br/><br/><br/><br/><br/>
    <br/><br/><br/><br/><br/><br/><br/><br/>
    <!-- Main -->
    <section id="main">
    <div style="text-align:center;">
    <h1 data-aos="zoom-in">The Best Donater TOP 3</h1></div>
    <br/><br/><br/>
        <!-- TOP 3-->
        <div class="divImg">
            <div class="flip-box">
                <div class="flip-box-inner">
                    <div class="flip-box-front">
                        <img src="img2/first.png" alt="gift_image" class="circleImg" data-aos="flip-left" class="front"/>
                    </div><!--flip-box-front-->
                    
                    <div class="flip-box-back">
                    <br/><br/><br/>
                     <c:forEach items="${articleList}" var="article">
                     <c:if test="${article.num eq 0}">
                        <h1 style="text-align: center">${article.name}</h1>
                        <h1 style="text-align: center">${article.count}회</h1>
                        </c:if>
                     </c:forEach>
                    </div>
                </div>
                <!--flip-box-inner-->
            </div><!--flip-box-->
            <br/>
            <div class="flip-box">
                <div class="flip-box-inner">
                    <div class="flip-box-front">
                        <img src="img2/second.png" alt="gift_image" class="circleImg" data-aos="flip-left" class="front"/>
                    </div><!--flip-box-front-->
                    <div class="flip-box-back">
                     <br/><br/><br/>
                     <c:forEach items="${articleList}" var="article">
                     <c:if test="${article.num eq 1}">
                        <h1 style="text-align: center">${article.name}</h1>
                        <h1 style="text-align: center">${article.count}회</h1>
                        </c:if>
                     </c:forEach>
                    </div>
                </div><!--flip-box-inner-->
            </div><!--flip-box-->
            <div class="flip-box">
                <div class="flip-box-inner">
                    <div class="flip-box-front">
                        <img src="img2/third.png" alt="gift_image" class="circleImg" data-aos="flip-left" class="front"/>
                    </div><!--flip-box-front-->
                    <div class="flip-box-back">
                     <br/><br/><br/>
                     <c:forEach items="${articleList}" var="article">
                     <c:if test="${article.num eq 2}">
                        <h1 style="text-align: center">${article.name}</h1>
                        <h1 style="text-align: center">${article.count}회</h1>
                        </c:if>
                     </c:forEach>
                    </div>
                </div><!--flip-box-inner-->
            </div><!--flip-box-->


        </div>
        <script src="https://cdn.rawgit.com/michalsnik/aos/2.1.1/dist/aos.js"></script>
        <script>
            AOS.init({
                easing: 'ease-out-back',
                duration: 1000
            });
            $(window).on('load', function() {
                AOS.refresh();
            });
        </script>

        <br/><br/><br/><br/><br/>

        <!-- Thumbnails -->
        <section class="thumbnails">
            <div id="div_left" data-aos="fade-up-left">
                <figure class="bk">
                    <img src="images/book1.jpg">
                    <figcaption>
                        <h2>Real Name Donation<br/>By Kim jeong hoon</h2>
                        <h3>Title - One week<br/>
                            Author - Kim ryeo ryeong</h3>
                    </figcaption>
                </figure>
                <figure class="bk">
                    <img src="images/book2.jpg">
                    <figcaption>
                        <h2>Anonymity Donation<br/>By et1201@daum.net</h2>
                        <h3>Title - Dignity of words<br/>
                            Author - Lee ki joo</h3>
                    </figcaption>
                </figure>
            </div>
            <div id="div_center" data-aos="fade-up">
                <figure class="bk">
                    <img src="images/book3.jpg">
                    <figcaption>
                        <h2>Anonymity Donation<br/>By cah97@nate.com</h2>
                        <h3>Title - Coloring cafe<br/>
                            Author - Gony</h3>
                    </figcaption>
                </figure>
                <figure class="bk">
                    <img src="images/book4.jpg">
                    <figcaption>
                        <h2>Real Name Donation<br/>By Lim sung jae</h2>
                        <h3>Title - Moon sherbet<br/>
                            Author - Baek hee na</h3>
                    </figcaption>
                </figure>
                <figure class="bk">
                    <img src="images/book5.jpg">
                    <figcaption>
                        <h2>Real Name Donation<br/>By Lee eun taek</h2>
                        <h3>Title - A secret garden<br/>
                            Author - Johanner vasford</h3>
                    </figcaption>
                </figure>
            </div>
            <div id="div_right" data-aos="fade-up-right">
                <figure class="bk">
                    <img src="images/book6.jpg">
                    <figcaption>
                        <h2>Real Name Donation<br/>By Park mi sun</h2>
                        <h3>Title - Language temperature<br/>
                            Author - Lee ki joo</h3>
                    </figcaption>
                </figure>
                <figure class="bk">
                    <img src="images/book7.jpg">
                    <figcaption>
                        <h2>Anonymity Donation<br/>By kk12@naver.com</h2>
                        <h3>Title - The giver<br/>
                            Author - Lois lowry</h3>
                    </figcaption>
                </figure>
            </div>
        </section>
    </section>
    <br/><br/><br/><br/>

    <div id="band" class="container text-center">
        <h1 data-aos="zoom-in">The foundation that we deliver</h1>

        <div class="ex_slide">
            <div><img src="images/01.jpg"></div>
            <div><img src="images/02.jpg"></div>
            <div><img src="images/03.jpg"></div>
        </div>
    </div>
    <br/><br/>

    <button class="button" style="vertical-align:middle; background-color:#FF007F !important;" onclick="location='form.jsp'"><span>Donate Now </span></button>

    <!-- Footer -->
    <footer id="footer">
        <p>Copyright 2019. Best Seller All rights reserved.</p>

        <ul class="icons">
            <li><a href="#" class="icon style2 fa-twitter"><span class="label">Twitter</span></a></li>
            <li><a href="#" class="icon style2 fa-facebook"><span class="label">Facebook</span></a></li>
            <li><a href="#" class="icon style2 fa-instagram"><span class="label">Instagram</span></a></li>
            <li><a href="#" class="icon style2 fa-envelope-o"><span class="label">Email</span></a></li>
        </ul>
    </footer>
</div>
</body>
</html>