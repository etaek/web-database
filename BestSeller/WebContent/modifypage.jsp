<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.ArrayList" %>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     <%@ page import="user.User" %>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Shop Item - Start Bootstrap Template</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/shop-item.css" rel="stylesheet">

</head>

<body>

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="#">Best Seller</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="category.do">Home</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="#">Mypage
              <span class="sr-only">(current)</span>
            </a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Page Content -->
  <div class="container">

    <div class="row">

      <div class="col-lg-3">
        <h1 class="my-4">My Page</h1>
        <div class="list-group">
          <a href="#myinfo" class="list-group-item">My information</a>
          <a href="#myrv" class="list-group-item">My Review</a>
          <a href="#myapply" class="list-group-item">Record of Application</a>
        </div>
      </div>
      <!-- /.col-lg-3 -->

      <div class="col-lg-9">
        <div id="myinfo">
        <div class="card card-outline-secondary my-4">
          <div class="card-header">
            My information
          </div>
          <div class="card-body">
            <!-- jQueryì   Postcodifyë¥¼ ë¡ ë ©í  ë ¤ -->
            <script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
            <script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
            <!-- "ê² ì  " ë ¨ì¶ ë¥¼ ë  ë¥´ë©´ í  ì   ë  ì ´ì ´ê°  ì ´ë¦¬ë  ë¡  ì ¤ì  í  ë ¤ -->
            <script> $(function() { $("#postcodify_search_button").postcodifyPopUp(); }); </script>

            <div id="s2">
                <c:forEach items="${articleList}" var="article">
              <form action="modify.do" method="post"><!--this show forms.-->
 
               <h6>Name : <input type="text" name="name" id="name" value="${article.name}"class="inpt" required="required" placeholder="Name"></br><br/></h6>
                 <h6>Birth : <input type="text" name="birth" id="birth" value="${article.birth}" class="inpt" required="required" placeholder="Birth(YYMMDD)"></br><br/></h6>
               <h6>Address : <input type="text" name="address" class="inpt" value="${article.address}" required="required" placeholder="Address"></br><br/></h6>
               
                <hr>
                <input type="submit" value="Modify"  class="btn btn-success"/>
                </form>
                  </c:forEach>
              </div>
            </div>
          </div>
          </div>
          <!-- /.card -->
        <br/><br/><br/><br/><br/>
        <div class="card card-outline-secondary my-4">
          <div class="card-header">
            My Review
          </div>
          <div class="card-body" id="myrv">
            <select>
               <option value="" ></option>
            </select>
          </div>
        </div>
        <!-- /.card -->
        <br/><br/><br/><br/><br/>
        <div class="card card-outline-secondary my-4" id="myapply">
          <div class="card-header">
            Record of Application
          </div>
          <div class="card-body">
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis et enim aperiam inventore, similique necessitatibus neque non! Doloribus, modi sapiente laboriosam aperiam fugiat laborum. Sequi mollitia, necessitatibus quae sint natus.</p>
            <small class="text-muted">Posted by Anonymous on 3/1/17</small>
            <hr>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis et enim aperiam inventore, similique necessitatibus neque non! Doloribus, modi sapiente laboriosam aperiam fugiat laborum. Sequi mollitia, necessitatibus quae sint natus.</p>
            <small class="text-muted">Posted by Anonymous on 3/1/17</small>
            <hr>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis et enim aperiam inventore, similique necessitatibus neque non! Doloribus, modi sapiente laboriosam aperiam fugiat laborum. Sequi mollitia, necessitatibus quae sint natus.</p>
            <small class="text-muted">Posted by Anonymous on 3/1/17</small>
            <hr>
            <a href="#" class="btn btn-success">Leave a Review</a>
          </div>
        </div>
        <!-- /.card -->

      </div>
      <!-- /.col-lg-9 -->

    </div>

  </div>
  <!-- /.container -->

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Your Website 2019</p>
    </div>
    <!-- /.container -->
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>