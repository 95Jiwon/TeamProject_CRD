<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

	<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
	<script type="text/javascript" src="jquery.tablesorter.min.js"></script>
	<link rel="stylesheet" href="blue_style.css" type="text/css">
	<link rel="stylesheet" href="green_style.css" type="text/css">


<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
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
  z-index:50;
  height: 250px; /*서브메뉴 li한개의 높이 50*5*/
  width: 20%;
  transition-duration: 1s;
  display:block;
  

* {box-sizing: border-box; }
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  
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
    <ul>
		<li>가격</li>
		<li><input type="text" name="minPrice" value="" class="form-control" placeholder="최소금액" /></li>
		<li>~</li>
		<li><input type="text" name="maxPrice" value="" class="form-control" placeholder="최대금액" /></li>
		<li class="pl30">결과 내 재검색</li>
		<li>
			<select name="smethod" class="form-control">
				<option value="" selected>포함단어</option>
				<option value="exception">제외단어</option>
			</select>
		</li>
		<li><input type="text" name="requery_src" value="" class="form-control" placeholder="결과내재검색" onkeypress="if(event.keyCode==13) {searchResult(); return false}"/></li>
		<li><a class="btn_search" href="javascript:searchResult();">검색</a></li>
		<li><a class="btn_reset" href="javascript:searchReset();">검색초기화</a></li>
	</ul>
</div>

<script type="text/javascript">
<!--
	$(document).ready(function(){ 
		$("#gcTable").tablesorter();
	});
//-->
</script>

<table id="gcTable" class="tablesorter" >
	<thead>
	<tr>
		<th>물품명</th>
		<th>가격</th>
		<th>이미지</th>
	</tr>
	</thead>
	<tbody>
    <tr>
        <td>연필깍이</td>
        <td>10000</td>
        <td><img width="100px" height="100px" src="images/pensil.jpg"></td>
    </tr>
    <tr>
        <td>A4복사용지2500매</td>
        <td>15000</td>
        <td><img width="100px" height="100px" src="images/A4.jpg"></td>
    </tr>
    <tr>
        <td>포스트잇</td>
        <td>1700</td>
        <td><img width="100px" height="100px" src="images/postit.jpg"></td>
    </tr>
    <tr>
        <td>수정테이프</td>
        <td>1880</td>
        <td><img width="100px" height="100px" src="images/tape.jpg"></td>
    </tr>
    <tr>
        <td>스테플러</td>
        <td>4500</td>
        <td><img width="100px" height="100px" src="images/stemp.jpg"></td>
    </tr>
    <tr>
        <td>커터</td>
        <td>1800</td>
        <td><img width="100px" height="100px" src="images/cutter.jpg"></td>
    </tr>
    <tr>
        <td>2공펀치</td>
        <td>9500</td>
        <td><img width="100px" height="100px" src="images/punchi.jpg"></td>
    </tr>
    <tr>
        <td>골무</td>
        <td>2300</td>
        <td><img width="100px" height="100px" src="images/golmu.jpg"></td>
    </tr>
	</tbody>
</table>


</body>
</html>