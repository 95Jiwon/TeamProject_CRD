<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
*{padding:0;margin:0}
li{list-style:none}
a{text-decoration:none;font-size:14px}

.menu {
  margin: 150px auto;
}

.menu > li {

  width: 20%; /*20*5=100%*/
  float: left;
  text-align: center;
  line-height: 40px;
  background-color: Skyblue;
}

.menu a {
  color: #fff;
}

.submenu > li {
  line-height: 50px;
  background-color: lightgreen;
}

.submenu {
  height: 0; /*ul의 높이를 안보이게 처리*/
  overflow: hidden;
}

.menu > li:hover {

  background-color: green;
  transition-duration: 0.5s;
}

.menu > li:hover .submenu {
position:absolute;
  height: 250px; /*서브메뉴 li한개의 높이 50*5*/
  width: 20%;
  transition-duration: 1s;
  display:block;
  

* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

.text {
  color: #000000;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
</style>
</head>
<body>
<h1>배너자리</h1>
<ul class="menu">
      <li>
        <a href="#">MENU1</a>
        <ul class="submenu">
          <li><a href="#">submenu01</a></li>
          <li><a href="#">submenu02</a></li>
          <li><a href="#">submenu03</a></li>
          <li><a href="#">submenu04</a></li>
          <li><a href="#">submenu05</a></li>
        </ul>
      </li>
      <li>
        <a href="#">MENU2</a>
        <ul class="submenu">
          <li><a href="#">submenu01</a></li>
          <li><a href="#">submenu02</a></li>
          <li><a href="#">submenu03</a></li>
          <li><a href="#">submenu04</a></li>
          <li><a href="#">submenu05</a></li>
        </ul>
      </li>
      <li>
        <a href="#">MENU3</a>
        <ul class="submenu">
          <li><a href="#">submenu01</a></li>
          <li><a href="#">submenu02</a></li>
          <li><a href="#">submenu03</a></li>
          <li><a href="#">submenu04</a></li>
          <li><a href="#">submenu05</a></li>
        </ul>
      </li>
      <li>
        <a href="#">MENU4</a>
        <ul class="submenu">
          <li><a href="#">submenu01</a></li>
          <li><a href="#">submenu02</a></li>
          <li><a href="#">submenu03</a></li>
          <li><a href="#">submenu04</a></li>
          <li><a href="#">submenu05</a></li>
        </ul>
      </li>
      <li>
        <a href="#">MENU5</a>
        <ul class="submenu">
          <li><a href="#">submenu01</a></li>
          <li><a href="#">submenu02</a></li>
          <li><a href="#">submenu03</a></li>
          <li><a href="#">submenu04</a></li>
          <li><a href="#">submenu05</a></li>
        </ul>
      </li>
    </ul>
<div class="slideshow-container">

	<div class="mySlides fade">
			<a href="https://www.officenex.com/event/main.do?eventId=27200012620347">
				<img src="images/event1.jpg" style="width:80%">
			</a>
	</div>
	
	<div class="mySlides fade">
	 		<a href="https://www.officenex.com/event/main.do?eventId=27200012626072">
	  			<img src="images/event2.jpg" style="width:80%">
	  		</a>
	</div>
	
	<div class="mySlides fade">
	  		<a href="https://www.officenex.com/event/main.do?eventId=27200012646110">
	    		<img src="images/event3.jpg" style="width:80%">
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
<h3>test</h3>

</body>
</html>