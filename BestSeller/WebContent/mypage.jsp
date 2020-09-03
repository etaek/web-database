<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page import="java.util.ArrayList" %>
     <%@ page import="user.User" %>
      <%@ page import="user.review" %>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Shop Item - Start Bootstrap Template</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/shop-item.css" rel="stylesheet">

</head>
<script>
function check(){
	var result=confirm("정말 삭제하시겠습니까?");
	return result
	
}



function change() {
	var Select = document.getElementById("select");
	var book=Select.options[Select.selectedIndex].text;

	var contents="<hr/>"
	contents+="\"";
	contents+= Select.options[Select.selectedIndex].value;
	contents+="\"";
	contents+="<br/><br/>";
	document.getElementById("review").innerHTML=contents;
	var newDiv = document.createElement("div");
	newDiv.id='test';
	newDiv.innerHTML="<form action='delete.do' method='post'><input type='submit' id='button2' name='submit2' value='delete' onclick='return check()'/>"+"<input type='hidden' id='bname' name='bname' value='"+book+"'/></form>";
	
	
	 document.getElementById('review').appendChild(newDiv);
}
function change2() {
	var Select = document.getElementById("select2");
	var book=Select.options[Select.selectedIndex].text;

	var contents="<hr/>"
	contents+="\"";
	contents+= Select.options[Select.selectedIndex].value;
	contents+="\"";
	contents+="에 기부되었습니다."
	contents+="<br/><br/>";
	document.getElementById("review2").innerHTML=contents;
	


}
function change3() {
	var Select = document.getElementById("select3");
	var book=Select.options[Select.selectedIndex].text;

	var contents="<hr/>"
	contents+="\"";
	contents+= Select.options[Select.selectedIndex].value;
	contents+="\"";
	contents+="님에게 배송될 예정입니다."
	contents+="<br/><br/>";
	document.getElementById("review3").innerHTML=contents;
	


}



</script>
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
           
     
            <div id="s2">
            
           
              <c:forEach items="${articleList}" var="article">
              <form action="modifyform.do" method="post"><!--this show forms.-->
               <h6 >Id : ${sessionId}</h6>
                <h6 >Name : ${article.name}</h6>
                <h6 >Birth : ${article.birth}</h6>
                <h6 >Address : ${article.address}</h6>
        
                
                <hr>
                
                <input type="submit" value="Modify"   class="btn btn-success"/>
                </form>
                </c:forEach>
              </div>
            </div>
          </div>
          </div>
          <!-- /.card -->
        <br/><br/><br/>
        <div class="card card-outline-secondary my-4">
          <div class="card-header">
            My Review
          </div>
          <div class="card-body" id="myrv">
          
            <select  id="select" name="select" onchange= "change();" >
             <c:forEach items="${articleList2}" var="article2">
               <option id="${article2.num}"  value= "${article2.review}">${article2.bookname}</option>
             </c:forEach>  
            </select>
            <br>
            <p id="review">	</p>
       
          </div>
        </div>
        <!-- /.card -->
        <br/>
       <div class="card card-outline-secondary my-4">
          <div class="card-header">
            My Donation
          </div>
          <div class="card-body" id="myrv">
          
            <select id="select2" name="select2" onchange= "change2();" >
             <c:forEach items="${articleList3}" var="article3">
               <option id="${article3.num}"  value= "${article3.foundation}">${article3.title}/ ${article3.author}</option>
             </c:forEach>  
            </select>
            <br>
            <p id="review2">	</p>
       
          </div>
        </div>
		 <br/>
		  <div class="card card-outline-secondary my-4">
          <div class="card-header">
            My Gift
          </div>
          <div class="card-body" id="myrv">
          
            <select  id="select3" name="select" onchange= "change3();" >
             <c:forEach items="${articleList4}" var="article4">
                <option id="${article4.num}"  value= "${article4.name}">${article4.title}/ ${article4.author}</option>
             </c:forEach>  
            </select>
            <br>
            <p id="review3">	</p>
       
          </div>
        </div>
		 <br/>
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