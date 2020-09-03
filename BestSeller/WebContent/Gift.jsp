<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <title>Gift Apply Form</title>
    <style>
        @import url(https://fonts.googleapis.com/css?family=Lato:400,700);
        * {
            -moz-box-sizing: border-box;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
        }
        body{
            font-family: 'Lato', sans-serif;
            background-color: #f8f8f8;
            margin: 0;
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
        #giftTitle{
            color: #3C3F41;
            text-align: center;
            font-size: 50px;
            margin-top: 100px;
        }
        .square{
            width:900px;
            height:40%;
            background-color:white;
            margin-left:auto;
            margin-right: auto;
            -moz-box-shadow: rgba(0, 0, 0, 0.1) 0px 10px 30px;
            -webkit-box-shadow: rgba(0, 0, 0, 0.1) 0px 10px 30px;
            box-shadow: rgba(0, 0, 0, 0.1) 0px 10px 30px;
        }
        input{
            background-color: rgba(0,0,0,0);
            padding: 12px 20px;
            margin: 8px 0;
            width:80%;
            box-sizing: border-box;
            border: 3px solid #D1D3CF;
            -webkit-transition: 0.5s;
            transition: 0.5s;
            outline: none;
            color: #3C3F41;
            font-size: 18px;
        }
        input:focus {
            border: 3px solid #6C4F70;
        }
        #applyForm{
            color: #3C3F41;
            text-align: left;
            margin-left: 5%;
            width:45%;
        }
        .Btn{width:80%;}
        .Btn:hover{
            background-color: #D1D3CF;
            color: #39324B;
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
    #app{
    	margin-left:20%;
    	margin-right:20%;}
      
    </style>
</head>
<body>
<div class="topnav"> <!--This is menu bar.-->
    <a href="category.do" id="a1">HOME</a>
    <a href="aboutUs.html">ABOUT US</a>
    <a href="donate.do">DONATION</a>
    <a href="recomment.do">RECOMMENDED</a>
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
<br/><br/>
<h1 id="giftTitle">Welcome to Book Exchange Project!</h1>
<div class="square">
    <div id="applyForm" style="float:left; ">
        <br/><br/>
       <h1 id=app>Application</h1>
        <div id="s1">
            <p>Please write about the book that you will send as a gift.</p>
            <p>This is information for our information collection!</p>
            <form action="gift.do" method="post"><!--this show forms.-->
                 <input type="text" name="title" required="required" placeholder="book title"/><br/>
                 <input type="text" name="author" required="required" placeholder="author"/><br/>
                <br/><br/>
                 <input type="submit" value="SUBMIT" class="Btn"/>
                <br/>
            </form>
        </div>
        <br/><br/>
    </div>
    <div><img src="img2/applyImg.PNG" style="width:50%;"></div>
</div>

<br/><br/><br/><br/><br/><br/><br/>
<div class="footNav"> <!--This is menu bar.-->
    <a href="aboutUs.html" style="margin-left: 20px;">About Us</a>
    <a href="#order">Privacy Statement</a>
    <a href="#event">FAQ</a>
    <a href="#contact">Site map</a>
    <a href="#" style="margin-left: 70%;" class="top"> &nbsp;TOP&nbsp; </a>
</div>
<footer>
    <br/><br/>
    <div style="margin-left: 40px;">
        <p>Team / Best Seller</p>
        <p>Member / Cheon, Ahyun &nbsp;|&nbsp; Kim, Jung Hoon &nbsp;|&nbsp; Lee, Eun Taek
        <p>Instagram / @a_hyun1000 &nbsp;|&nbsp; @hooonij  &nbsp;|&nbsp; @letoasis</p>
        <p>Address / 1, Cheongdaero, Seowon-gu, Cheoungju, Chungbuk</p>
        <p>COPYRIGHT(C)2019 BEST SELLER. ALL RIGHTS RESERVED. &nbsp;DESIGN BY BEST SELLER</p>
    </div>
    <br/><br/>
</footer>
</body>
</html>