<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
<%
request.setCharacterEncoding("utf-8"); //한글 깨짐 방지
String id =(String) session.getAttribute("id");
%> 
* {
    box-sizing: border-box;
}
body {
    font-family: Arial;
    padding: 10px;
    background: #f1f1f1;
}
.header {
    padding: 30px;
    text-align: center;
    background: white;
}
.header h1 {
    font-size: 50px;
}
.topnav {   
    background-color: black;
}
.leftcolumn {   
    float: left;
    width: 75%;
}
.rightcolumn {
    float: left;
    width: 25%;
    background-color: #f1f1f1;
    padding-left: 20px;
}
.fakeimg {
    background-color: #aaa;
    width: 100%;
    padding: 20px;
}
.fakeimg2 {  
    width: 100%;   
}
.card {
    background-color: white;
    padding: 20px;
    margin-top: 20px;
}
.row:after {
    content: "";
    display: table;
    clear: both;
}
.footer {
    padding: 20px;
    text-align: center;
    background: #ddd;
    margin-top: 20px;
}
@media screen and (max-width: 800px) {
    .leftcolumn, .rightcolumn {   
        width: 100%;
        padding: 0;
    }
}
.dropbtn {
    background-color: black;
    color: white;
    padding: 16px 15px;
    width: 200px;
    font-size: 16px;
    border: none;
    cursor: pointer;
}
.dropdown {
    position: relative;
    display: inline-block;
}
.dropdown-content {
    display: none;
    position: absolute;
    background-color: black;
    max-width: 400px;
    z-index: 1;
}
.dropdown-content a {
    color: white;
    padding: 12px 16px;
    width: 200px;
    text-decoration: none;
    display: block;
}
.dropdown-content a:hover {
    background-color: yellow;
}
.dropdown:hover .dropdown-content {
    display: block;
}
.dropdown:hover .dropbtn {
    background-color: skyblue;
}
</style>
</head>
<body>
 
<div class="header">
	<h1>배너위치</h1>
</div>
 
<div class="topnav">
	<div class="dropdown">
		<button class="dropbtn">필기구</button>
	<div class="dropdown-content">
		<a href="#">Link 1</a>
		<a href="#">Link 2</a>
		<a href="#">Link 3</a>
	</div>
	</div>
	<div class="dropdown">
		<button class="dropbtn">도서</button>
		<div class="dropdown-content">
			<a href="#">Link1111</a>
			<a href="#">Link 2</a>
			<a href="#">Link 3</a>
		</div>
	</div>
	<div class="dropdown">
	<button class="dropbtn">기타</button>
		<div class="dropdown-content">
			<a href="#">Link1111</a>
			<a href="#">Link 2</a>
			<a href="#">Link 3</a>
		</div>
	</div>
  <div class="dropdown">
      <button class="dropbtn">필기구</button>
      <div class="dropdown-content">
        <a href="#">Link 1</a>
        <a href="#">Link 2</a>
        <a href="#">Link 3</a>
      </div>
    </div>
    <div class="dropdown">
      <button class="dropbtn">도서</button>
      <div class="dropdown-content">
        <a href="#">Link 1</a>
        <a href="#">Link 2</a>
        <a href="#">Link 3</a>
      </div>
    </div>
    <div class="dropdown">
      <button class="dropbtn">Dropdown</button>
      <div class="dropdown-content">
        <a href="#">Link 1</a>
        <a href="#">Link 2</a>
        <a href="#">Link 3</a>
      </div>
    </div>
</div>

<div class="row">
	<div class="leftcolumn">
		<div class="slideshow-container" style="width:100%">
			<div class="mySlides fade">
				<a href="https://www.officenex.com/event/main.do?eventId=27200012620347">
					<img src="images/event1.jpg" style="width:100%">
				</a>
			</div>
			<div class="mySlides fade" >
				<a href="https://www.officenex.com/event/main.do?eventId=27200012626072">
		  			<img src="images/event2.jpg" style="width:100%">
		  		</a>
			</div>
			<div class="mySlides fade">
		  		<a href="https://www.officenex.com/event/main.do?eventId=27200012646110">
		   			<img src="images/event3.jpg" style="width:100%">
				</a>
			</div>
		</div>
		<div style="text-align:center">
			<span class="dot"></span> 
		  	<span class="dot"></span> 
		  	<span class="dot"></span> 
		</div>
	
		<script>
		var slideIndex = 0;
		showSlides();
		
		function showSlides() {
		    var i;
		    var slides = document.getElementsByClassName("mySlides");
		    var dots = document.getElementsByClassName("dot");
		    for (i = 0; i < slides.length; i++) {
		       slides[i].style.display = "none";  
		    }
		    slideIndex++;
		    if (slideIndex > slides.length) {slideIndex = 1}    
		    for (i = 0; i < dots.length; i++) {
		        dots[i].className = dots[i].className.replace(" active", "");
		    }
		    slides[slideIndex-1].style.display = "block";  
		    dots[slideIndex-1].className += " active";
		    setTimeout(showSlides, 2000);
		}
		</script>
		<div class="card">
			<div class="fakeimg" style="height:200px;">Image</div>
		</div>
	</div>
	<div class="rightcolumn">
		<div class="card">
			
			<form name='frm_login' id='frm_login' method='post'>
		<!-- 공통 -->
		<input type='hidden' name='loginFlag' value='' />
		
		<%if(id == null) {%>	
			<a href="session_Login.jsp">
				<img class="fakeimg2" src="images/로그인.png" style="height:200px; text-align: center;">
			</a>
			
			<%}else{ %>	
			<!-- 로그인 이후 화면 -->
			<span><%=(id == null)? "손님" : id %> 방가...방가...</span>
			<a href="sessionLogout.jsp">
				<input type='button' value='로그아웃' id='btnLogout'/>
			</a>
		<%} %>
	</form>
		</div>
		<div class="card">
			<h3>Popular Post</h3>
			<div class="fakeimg"><p>Image</p></div>
			<div class="fakeimg"><p>Image</p></div>
			<div class="fakeimg"><p>Image</p></div>
		</div>
	    <div class="card">
			<h3>Follow Me</h3>
			<p>Some text..</p>
		</div>
	</div>
</div>
 
<div class="footer">
	<h2>Footer</h2>
</div>
 
</body>
</html>