<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
    <%@ page import="user.review" %>
   <%@ page import="java.util.ArrayList" %>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, maximum-scale=1">

   <title>Best Seller</title>

   <link rel="shortcut icon" href="favicon.ico" type="img/x-icon">
   <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
   <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,800italic,700italic,600italic,400italic,300italic,800,700,600' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="css2/bootstrap.min.css">
    <link rel="stylesheet" href="css2/slick.css">
    <link rel="stylesheet" href="css2/slick-theme.css">
   <link href="css2/bootstrap.css" rel="stylesheet" type="text/css">
   <link href="css2/style.css" rel="stylesheet" type="text/css">
   <link href="css2/font-awesome.css" rel="stylesheet" type="text/css">
   <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">
   <link href="css2/animate.css" rel="stylesheet" type="text/css">
    <link href="css/freelancer.min.css" rel="stylesheet">
   <script type="text/javascript" src="js2/jquery.1.8.3.min.js"></script>
   <script type="text/javascript" src="js2/slick.js"></script>
   <script type="text/javascript" src="js2/slick.min.js"></script>
   <script type="text/javascript" src="js2/bootstrap.js"></script>
   <script type="text/javascript" src="js2/jquery-scrolltofixed.js"></script>
   <script type="text/javascript" src="js2/jquery.easing.1.3.js"></script>
   <script type="text/javascript" src="js2/jquery.isotope.js"></script>
   <script type="text/javascript" src="js2/wow.js"></script>
 <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- Theme CSS -->
    <link href="css/freelancer.min.css" rel="stylesheet">
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
   <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
 
   
   <style>
      html { 
  background-color: #f8f8f8;
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}
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
h2 {
      font-size: 24px;
      text-transform: uppercase;
      color: #303030;
      font-weight: 600;
      margin-bottom: 30px;
  }
  h4 {
      font-size: 19px;
      line-height: 1.375em;
      color: #303030;
      font-weight: 400;
      margin-bottom: 30px;
  }  
   .carousel-control.right, .carousel-control.left {
      background-image: none;
      color: #f4511e;
  }
  .carousel-indicators li {
      border-color: #f4511e;
  }
  .carousel-indicators li.active {
      background-color: #f4511e;
  }
  .item h4 {
      font-size: 19px;
      line-height: 1.375em;
      font-weight: 400;
      font-style: italic;
      margin: 70px 0;
  }
  .item span {
      font-style: normal;
  }
.slideanim {visibility:hidden;}
  .slide {
      animation-name: slide;
      -webkit-animation-name: slide;
      animation-duration: 1s;
      -webkit-animation-duration: 1s;
      visibility: visible;
  }
  @keyframes slide {
    0% {
      opacity: 0;
      transform: translateY(70%);
    } 
    100% {
      opacity: 1;
      transform: translateY(0%);
    }
  }
  @-webkit-keyframes slide {
    0% {
      opacity: 0;
      -webkit-transform: translateY(70%);
    } 
    100% {
      opacity: 1;
      -webkit-transform: translateY(0%);
    }
  }
 

 #backImg{
  
     background-image:url('speech-bubble.png');
        background-repeat: no-repeat;
        z-index:-100;
}
.listbox{
      background-color: rgba(0,0,0,0);
      }
       footer {
        background-color: #2d2d30;
        color: #f5f5f5;
        font-size: 15px;
        padding: 32px;
    }
    footer a {
        color: #f5f5f5;
    }
    footer a:hover {
        color: #777;
        text-decoration: none;
    }
    .footNav {
        margin-right: auto;
        overflow: hidden;
        background-color: rgb(152, 154, 154);
        text-align: center;
    }
    .footNav a {
        float: left;
        display: block;
        color: white;
        font-size: 18px;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
    }
    /* Change color on hover */
    .footNav a:hover {
        background-color: #D1D3CF;
        color: #6C4F70;
    }
    h3{
    font-size:17px;
    }
    .item{
    font-size:35px !important;}
    .card-img-top{
    height:300px;
    width:220px;
    }
    .card-footer{
       background-color: transparent;
    }
   </style>

</head>

<body>
<div class="topnav"> <!--This is menu bar.-->
    <a href="main2.jsp" id="a1">HOME</a>
    <a href="gift.do">GIFT</a>
    <a href="donate.do">DONATION</a>
    <a href="recommend.do">RECOMMEND</a>
</div>

<script type="text/javascript">
    $(function(){
        var vi = 300;  // 하단에 메뉴 표시할 스크롤 위치값 지정
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
   <header class="header" id="header">
      <!--header-start-->
      <div class="container">
         <figure class="logo animated fadeInDown delay-07s">
            <a href="#"><img src="img2/logo.png" alt=""></a>
         </figure>
         <h1 class="animated fadeInDown delay-07s">Book Recommendation</h1>
         <ul class="we-create animated fadeInUp delay-1s">
            <li>You can see people's book reviews or recommendations.</li>
         </ul>
         <a class="link animated fadeInUp delay-1s servicelink" href="#booklist">Scroll Down</a>
      </div>
   </header>
   <!--header-end-->
        <!--main start -->
 <section class="page-section" id="contact" style="margin-left: 25%;margin-right: 25%;">
    <center><div>
            <h2 >Best Seller TOP 20</h2>
            <p>We recommend Best Seller for you.</p>
            <br/>
        </div></center>
   <div class="row text-center">
        <div class="col-lg-3 col-md-6 mb-4">
            <div class="card h-100">
            
               <c:forEach items="${articleList2}" var="article2">
                 <c:if test="${article2.cnt eq 0}">
                <img class="card-img-top" src="poster/${article2.image}" alt="">
                 </c:if>
               </c:forEach>
                <div class="card-footer">
                 <c:forEach items="${articleList2}" var="article2">
                   <c:if test="${article2.cnt eq 0}">
                    <h3 class="card-text">1 &nbsp;&nbsp;${article2.bname}</h3>
                    </c:if>
                  </c:forEach>
               
                </div>
              
            </div>
        </div>

        <div class="col-lg-3 col-md-6 mb-4">
            <div class="card h-100">
             <c:forEach items="${articleList2}" var="article2">
                 <c:if test="${article2.cnt eq 1}">
                <img class="card-img-top" src="poster/${article2.image}" alt="">
                 </c:if>
               </c:forEach>
                <div class="card-footer">
                   <c:forEach items="${articleList2}" var="article2">
                   <c:if test="${article2.cnt eq 1}">
                    <h3 class="card-text">2 &nbsp;&nbsp;${article2.bname}</h3>
                    </c:if>
                  </c:forEach>
                  
                    
                </div>
            </div>
        </div>
       <div class="col-lg-3 col-md-6 mb-4">
            <div class="card h-100">
             <c:forEach items="${articleList2}" var="article2">
                 <c:if test="${article2.cnt eq 2}">
                <img class="card-img-top" src="poster/${article2.image}" alt="">
                 </c:if>
               </c:forEach>
                <div class="card-footer">
                   <c:forEach items="${articleList2}" var="article2">
                   <c:if test="${article2.cnt eq 2}">
                    <h3 class="card-text">3 &nbsp;&nbsp;${article2.bname}</h3>
                    </c:if>
                  </c:forEach>
                  
                    
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6 mb-4">
            <div class="card h-100">
             <c:forEach items="${articleList2}" var="article2">
                 <c:if test="${article2.cnt eq 3}">
                <img class="card-img-top" src="poster/${article2.image}" alt="">
                 </c:if>
               </c:forEach>
                <div class="card-footer">
                   <c:forEach items="${articleList2}" var="article2">
                   <c:if test="${article2.cnt eq 3}">
                    <h3 class="card-text">4 &nbsp;&nbsp;${article2.bname}</h3>
                    </c:if>
                  </c:forEach>
                  
                    
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6 mb-4">
            <div class="card h-100">
             <c:forEach items="${articleList2}" var="article2">
                 <c:if test="${article2.cnt eq 4}">
                <img class="card-img-top" src="poster/${article2.image}" alt="">
                 </c:if>
               </c:forEach>
                <div class="card-footer">
                   <c:forEach items="${articleList2}" var="article2">
                   <c:if test="${article2.cnt eq 4}">
                    <h3 class="card-text">5 &nbsp;&nbsp;${article2.bname}</h3>
                    </c:if>
                  </c:forEach>
                  
                    
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6 mb-4">
            <div class="card h-100">
             <c:forEach items="${articleList2}" var="article2">
                 <c:if test="${article2.cnt eq 5}">
                <img class="card-img-top" src="poster/${article2.image}" alt="">
                 </c:if>
               </c:forEach>
                <div class="card-footer">
                   <c:forEach items="${articleList2}" var="article2">
                   <c:if test="${article2.cnt eq 5}">
                    <h3 class="card-text">6 &nbsp;&nbsp;${article2.bname}</h3>
                    </c:if>
                  </c:forEach>
                  
                    
                </div>
            </div>
        </div>
       <div class="col-lg-3 col-md-6 mb-4">
            <div class="card h-100">
             <c:forEach items="${articleList2}" var="article2">
                 <c:if test="${article2.cnt eq 6}">
                <img class="card-img-top" src="poster/${article2.image}" alt="">
                 </c:if>
               </c:forEach>
                <div class="card-footer">
                   <c:forEach items="${articleList2}" var="article2">
                   <c:if test="${article2.cnt eq 6}">
                    <h3 class="card-text">7 &nbsp;&nbsp;${article2.bname}</h3>
                    </c:if>
                  </c:forEach>
                  
                    
                </div>
            </div>
        </div>
       <div class="col-lg-3 col-md-6 mb-4">
            <div class="card h-100">
             <c:forEach items="${articleList2}" var="article2">
                 <c:if test="${article2.cnt eq 7}">
                <img class="card-img-top" src="poster/${article2.image}" alt="">
                 </c:if>
               </c:forEach>
                <div class="card-footer">
                   <c:forEach items="${articleList2}" var="article2">
                   <c:if test="${article2.cnt eq 7}">
                    <h3 class="card-text">8 &nbsp;&nbsp;${article2.bname}</h3>
                    </c:if>
                  </c:forEach>
                  
                    
                </div>
            </div>
        </div>
       <div class="col-lg-3 col-md-6 mb-4">
            <div class="card h-100">
             <c:forEach items="${articleList2}" var="article2">
                 <c:if test="${article2.cnt eq 8}">
                <img class="card-img-top" src="poster/${article2.image}" alt="">
                 </c:if>
               </c:forEach>
                <div class="card-footer">
                   <c:forEach items="${articleList2}" var="article2">
                   <c:if test="${article2.cnt eq 8}">
                    <h3 class="card-text">9 &nbsp;&nbsp;${article2.bname}</h3>
                    </c:if>
                  </c:forEach>
                  
                    
                </div>
            </div>
        </div>
       <div class="col-lg-3 col-md-6 mb-4">
            <div class="card h-100">
             <c:forEach items="${articleList2}" var="article2">
                 <c:if test="${article2.cnt eq 9}">
                <img class="card-img-top" src="poster/${article2.image}" alt="">
                 </c:if>
               </c:forEach>
                <div class="card-footer">
                   <c:forEach items="${articleList2}" var="article2">
                   <c:if test="${article2.cnt eq 9}">
                    <h3 class="card-text">10 &nbsp;&nbsp;${article2.bname}</h3>
                    </c:if>
                  </c:forEach>
                  
                    
                </div>
            </div>
        </div>
       <div class="col-lg-3 col-md-6 mb-4">
            <div class="card h-100">
             <c:forEach items="${articleList2}" var="article2">
                 <c:if test="${article2.cnt eq 10}">
                <img class="card-img-top" src="poster/${article2.image}" alt="">
                 </c:if>
               </c:forEach>
                <div class="card-footer">
                   <c:forEach items="${articleList2}" var="article2">
                   <c:if test="${article2.cnt eq 10}">
                    <h3 class="card-text">11 &nbsp;&nbsp;${article2.bname}</h3>
                    </c:if>
                  </c:forEach>
                  
                    
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6 mb-4">
            <div class="card h-100">
             <c:forEach items="${articleList2}" var="article2">
                 <c:if test="${article2.cnt eq 11}">
                <img class="card-img-top" src="poster/${article2.image}" alt="">
                 </c:if>
               </c:forEach>
                <div class="card-footer">
                   <c:forEach items="${articleList2}" var="article2">
                   <c:if test="${article2.cnt eq 11}">
                    <h3 class="card-text">12 &nbsp;&nbsp;${article2.bname}</h3>
                    </c:if>
                  </c:forEach>
                  
                    
                </div>
            </div>
        </div>
              
    </div>

    <!-- /.row -->
</section>
       
       
       
   <!--main-section-end-->
    <h2>What others say</h2>
  <div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
    <!-- Indicators -->
    
    <!-- Wrapper for slides -->
      <div id="backImg"></div>
    <div class="carousel-inner" id="listbox" role="listbox">
         
   <c:forEach items="${articleList}" var="article" >
      <c:set var="num" value="${article.num}" />
          
      <c:choose>
         <c:when test="${num eq 1}">
               <div class="item active">
                 <h4>"${article.review}"<br><span>ID: ${article.id} / BOOK: ${article.bookname}</span></h4>
               </div>
            </c:when>
            <c:otherwise>
               <div class="item" >
                 <h4>"${article.review}"<br><span>ID: ${article.id} / BOOK: ${article.bookname}</span></h4>
               </div>
            </c:otherwise>
         </c:choose>
    </c:forEach>
    
    </div>
  
    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
 </div>

   <section class="business-talking">
      <!--business-talking-start-->
      <div class="container">
         <h2 style="color:#888888; font-size:38px; margin-bottom:0px;!important;" >Create Reviews.</h2>
      </div>
   </section>
   <!--business-talking-end-->
   <div class="container" align="center">
      <section class="main-section contact" id="contact" style="text-align:center;!important; margin-left:25%;!important; margin-right:20%;!important; margin-top:0;!important;">
      

         <div class="row" style="text-align:center; width:100%;">
            
            <div class="col-lg-12 col-sm-5 wow fadeInUp delay-05s">
               <div class="form" >

                  
                  <div id="message" ></div>
                  <form action="review.do" method="post" role="form" class="contactForm">
                     <div class="form-group" >
                        <input type="text" name="bookname" class="form-control input-text" id="bookname" placeholder="Book Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                        <div class="validation"></div>
                     </div>
                     
                    
                     <div class="form-group">
                        <textarea class="form-control input-text text-area" name="review" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Review"></textarea>
                        <div class="validation"></div>
                     </div>

                     <div class="text-center"><button type="submit" class="input-btn" > Register</button></div>
                  </form>
               </div>
            </div>
         </div>
      </section>
   </div>

   <script type="text/javascript">







</script>



   <script type="text/javascript">
      $(document).ready(function(e) {

         $('#test').scrollToFixed();
         $('.res-nav_click').click(function() {
            $('.main-nav').slideToggle();
            return false

         });

      $('.Portfolio-box').magnificPopup({
        delegate: 'a',
        type: 'image'
      });

      });
   </script>

   <script>
      wow = new WOW({
         animateClass: 'animated',
         offset: 100
      });
      wow.init();
   </script>


   <script type="text/javascript">
      $(window).load(function() {

         $('.main-nav li a, .servicelink').bind('click', function(event) {
            var $anchor = $(this);

            $('html, body').stop().animate({
               scrollTop: $($anchor.attr('href')).offset().top - 102
            }, 1500, 'easeInOutExpo');
            /*
            if you don't want to use the easing effects:
            $('html, body').stop().animate({
               scrollTop: $($anchor.attr('href')).offset().top
            }, 1000);
            */
            if ($(window).width() < 768) {
               $('.main-nav').hide();
            }
            event.preventDefault();
         });
      })
   </script>

   <script type="text/javascript">
      $(window).load(function() {


         var $container = $('.portfolioContainer'),
            $body = $('body'),
            colW = 375,
            columns = null;


         $container.isotope({
            // disable window resizing
            resizable: true,
            masonry: {
               columnWidth: colW
            }
         });

         $(window).smartresize(function() {
            // check if columns has changed
            var currentColumns = Math.floor(($body.width() - 30) / colW);
            if (currentColumns !== columns) {
               // set new column count
               columns = currentColumns;
               // apply width to container manually, then trigger relayout
               $container.width(columns * colW)
                  .isotope('reLayout');
            }

         }).smartresize(); // trigger resize to set container width
         $('.portfolioFilter a').click(function() {
            $('.portfolioFilter .current').removeClass('current');
            $(this).addClass('current');

            var selector = $(this).attr('data-filter');
            $container.isotope({

               filter: selector,
            });
            return false;
         });

      });
   </script>

    
 
<div class="footNav" style="clear: both;"> <!--This is menu bar.-->
    <a href="aboutUs.jsp" style="margin-left: 20px;">About Us</a>
    <a href="#order">Privacy Statement</a>
    <a href="faq.jsp">FAQ</a>
    <a href="#contact">Site map</a>
    <a href="#" style="margin-left: 70%;" class="top"> &nbsp;TOP&nbsp; </a>
</div>
<footer>
    <br/><br/>
    <div style="margin-left: 40px;">
        <p>Team / Best Seller</p>
        <p>Member / Cheon, Ahyun &nbsp;|&nbsp; Kim, Jung Hoon &nbsp;|&nbsp; Lee, Eun Taek
        <p>Instagram / @a_hyun1000 &nbsp;|&nbsp; @letoasis &nbsp;|&nbsp; @hooonij</p>
        <p>Address / 1, Cheongdaero, Seowon-gu, Cheoungju, Chungbuk</p>
        <p>COPYRIGHT(C)2019 BEST SELLER. ALL RIGHTS RESERVED. &nbsp;DESIGN BY BEST SELLER</p>
    </div>
    <br/><br/>
</footer>
   
 
</body>
</html>