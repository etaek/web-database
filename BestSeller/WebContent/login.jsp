<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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

  <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

  <!-- Custom styles for this template -->
  <link href="css/shop-item.css" rel="stylesheet">

</head>

<body>

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="main.jsp">Best Seller</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="main.jsp">Home</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="#">Login
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
        <h1 class="my-4">Login</h1>
      </div>
      <!-- /.col-lg-3 -->

      <div class="col-lg-9">
        <div id="myinfo">
        <div class="card card-outline-secondary my-4">
          <div class="card-header">
            My information
          </div>
          <div class="card-body">
            <!-- jQuery와 Postcodify를 로딩한다 -->
            <script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
            <script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
            <!-- "검색" 단추를 누르면 팝업 레이어가 열리도록 설정한다 -->
            <script> $(function() { $("#postcodify_search_button").postcodifyPopUp(); }); </script>

            <div id="s2">
              <p>Please fill out the book for the person who will present it to you.</p>
              <form action="login.do" method="post"><!--this show forms.-->
                <input type="text" name="user_id" id="user_id" class="inpt" required="required" placeholder="ID"></br><br/>
                <input type="text" name="pw" id="pw" class="inpt" required="required" placeholder="Password"></br><br/>
                <!--<input type="text" name="" class="postcodify_postcode5" value="" required="required" placeholder="zip code" style="width:50%;"/>
                  <input type="button" id="postcodify_search_button" value="search" class="Btn" style=width:30%;><br />
                  <input type="text" name="road_name" class="postcodify_address" value="" required="required" placeholder="The road name"/><br />
                    <input type="text" name="detail_add" class="postcodify_details" value="" required="required" placeholder="detail address"/><br />-->
                <hr>
                <input type="submit" value="Login"  class="btn btn-success"/>
                </form>
              </div>
            </div>
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
