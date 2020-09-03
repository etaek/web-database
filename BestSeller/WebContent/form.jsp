<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Application</title>
<style rel="stylesheet">
@charset "UTF-8";
@import url(https://fonts.googleapis.com/css?family=Lato:400,700);
* {
  box-sizing: border-box;
}

body {
  font-family: 'Lato', sans-serif;
  background-color: #f8f8f8;
  margin:0;
}

/* 신청서 양식 */
body .application {
  position: relative;
  overflow: hidden;
  width: 700px;
  height: 500px;
  margin: 200px auto 0;
  background-color: #ffffff;
  box-shadow: rgba(0, 0, 0, 0.1) 0px 10px 30px;
}

/* 신청폼 크기 */
body .application .half {
  float: left;
  width: 50%;
  height: 100%;
  padding: 58px 40px 0;
}

/* 신청서 사진 */
body .application .half.bg {
  background-image: url("images/half bg.png");
  background-size: 400px;
  background-repeat: no-repeat;
}

/* title 'APPLICATION' */
body .application h1 {
  font-size: 18px;
  font-weight: 700;
  margin-bottom: 23px;
  text-align: center;
  text-indent: 6px;
  letter-spacing: 7px;
  text-transform: uppercase;
  color: #263238;
}

/* button */
body .application .content form {
  position: relative;
  height: 287px;
}

/* input annimation */
body .application .content label:first-of-type, body .application .content input:first-of-type, body .application .content .more:first-of-type {
  animation: slideIn 0.4s cubic-bezier(0.37, 0.82, 0.2, 1);
}
body .application .content label:nth-of-type(2), body .application .content input:nth-of-type(2), body .application .content .more:nth-of-type(2) {
  animation: slideIn 0.5s cubic-bezier(0.37, 0.82, 0.2, 1);
}
body .application .content label:nth-of-type(3), body .application .content input:nth-of-type(3), body .application .content .more:nth-of-type(3) {
  animation: slideIn 0.6s cubic-bezier(0.37, 0.82, 0.2, 1);
}
body .application .content label {
  font-size: 12px;
  color: #263238;
  user-select: none;
}
body .application .content label:not([for='remember']) {
  display: none;
}

/* input field css */
body .application .content input.inpt {
  font-size: 14px;
  display: block;
  width: 100%;
  height: 42px;
  margin-bottom: 12px;
  padding: 16px 13px;
  color: #999999;
  border: 1px solid #d9d9d9;
  background: transparent;
  border-radius: 2px;
}

/* placeholder */
body .application .content input.inpt::-webkit-input-placeholder {
  font-size: 14px;
  color: #999999;
  font-family: 'Lato', sans-serif;
}

body .application .content input.inpt:focus {
  border-color: #999999;
}

/* button */
body .application .content input.submit {
  font-size: 12px;
  line-height: 42px;
  display: block;
  width: 100%;
  height: 42px;
  cursor: pointer;
  vertical-align: middle;
  letter-spacing: 2px;
  text-transform: uppercase;
  color: #263238;
  border: 1px solid #263238;
  background: transparent;
  border-radius: 2px;
}
body .application .content input.submit:hover {
  background-color: #263238;
  color: #ffffff;
  transition: all 0.2s;
}

/* fucus outline */
body .application .content input:focus {
  outline: none;
}

body .application .content .submit-wrap {
  position: absolute;
  bottom: 0;
  width: 100%;
}
body .application .content .submit-wrap a {
  font-size: 12px;
  display: block;
  margin-top: 20px;
  text-align: center;
  text-decoration: none;
  color: #999999;
}
body .application .content .submit-wrap a:hover {
  text-decoration: underline;
}
body .application .content .anonymity-cont {
  display: none;
}

body .foundation{
    width: 270px;
    height: 40px;
}

@keyframes slideIn {
  0% {
    filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=0);
    opacity: 0;
    margin-left: -320px;
  }
  100% {
    filter: progid:DXImageTransform.Microsoft.Alpha(enabled=false);
    opacity: 1;
    margin-left: 0px;
  }
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
    }
    #a1{
        margin-left: 35%;
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
</style>
</head>
<body>
<div class="topnav"> <!--This is menu bar.-->
    <a href="category.do" id="a1">HOME</a>
    <a href="Gift.jsp">GIFT</a>
    <a href="donation.do">DONATION</a>
    <a href="recommend.do">RECOMMEND</a>
</div>
<br/><br/><br/>
   <section class="application">
      <article class="half">
         <h1>Application</h1>
                 <div class="content">
                   <div class="realname-cont cont">
                      <form method="post" action="form.do"><br/><br/><br/>
                               
                              <input type="text" name="title" id="title" class="inpt" required="required" placeholder="Book title">
                              <label for="title">title</label>
                              <input type="text" name="author" id="author" class="inpt" required="required" placeholder="Author">
                              <label for="author">author</label>
                           
                              <select type="text" name="foundation" id="foundation" class="foundation" required="required">
                                    <option value="">재단 선택</option>
                                  <option value="행복한 지역아동센터">행복한 지역아동센터</option>
                                    <option value="꿈다락 토요문화학교">꿈다락 토요문화학교</option>
                                    <option value="행복나눔재단">행복나눔재단</option>
                              </select>
                              
                                  <div class="submit-wrap">
                                    <input type="submit" value="Donate now" class="submit">
                                  </div>
                                
                         </form>
                    </div>
                
                 </div>
      </article>
      <div class="half bg"></div>
   </section>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> 
   <script type="text/javascript">
   $('.tabs .tab').click(function(){
        if ($(this).hasClass('realname')) {
           $('.tabs .tab').removeClass('active');
           $(this).addClass('active');
           $('.cont').hide();
           $('.realname-cont').show();
       } 
       if ($(this).hasClass('anonymity')) {
             $('.tabs .tab').removeClass('active');
           $(this).addClass('active');
           $('.cont').hide();
           $('.anonymity-cont').show();
       }
   });
   </script>
   
   <div class="footNav" style="clear: both;"> <!--This is menu bar.-->
    <a href="aboutUs.jsp" style="margin-left: 20px;">About Us</a>
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
        <p>Instagram / @a_hyun1000 &nbsp;|&nbsp; @letoasis &nbsp;|&nbsp; @hooonij</p>
        <p>Address / 1, Cheongdaero, Seowon-gu, Cheoungju, Chungbuk</p>
        <p>COPYRIGHT(C)2019 BEST SELLER. ALL RIGHTS RESERVED. &nbsp;DESIGN BY BEST SELLER</p>
    </div>
    <br/><br/>
</footer>
</body>
</html>