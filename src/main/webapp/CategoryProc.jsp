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
* {
    box-sizing: border-box;
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
	margin-left:auto;
	margin-right:auto;
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
.cate_search {padding: 7px 15px; border: 1px solid #ddd; border-top: 0;}
.cate_search li {display: inline-block; vertical-align: middle; padding: 0 3px; font-size: 12px;}
.cate_search .form-control {height: 25px; display: inline-block; vertical-align: middle; padding: 1px 7px 3px; max-width: 170px; font-size: 12px;}
.cate_search .btn_gray_dark {height: 25px; display: inline-block; vertical-align: middle; padding: 4px 15px;}

.cate_search_modal {padding: 7px 15px; border: 1px solid #ddd; border-top: 1;}
.cate_search_modal li {display: inline-block; vertical-align: middle; padding: 0 3px; font-size: 12px;}
.cate_search_modal .form-control {height: 25px; display: inline-block; vertical-align: middle; padding: 1px 7px 3px; max-width: 170px; font-size: 12px;}
.cate_search_modal .btn_gray_dark {height: 25px; display: inline-block; vertical-align: middle; padding: 4px 15px;}

</style>
</head>
<body>
<%
	
	String searchstr = request.getParameter("findStr");
	
%>


<div class="header">
	<a href="http://localhost:8081/TeamProject_CRD/Main.jsp" target="_self">
  	<img src="images/code.png" width="150" align="center">
	</a>
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
        <a href="#">Link 1</a>
        <a href="#">Link 2</a>
        <a href="#">Link 3</a>
      </div>
    </div>
    <div class="dropdown">
      <button class="dropbtn">악세사리</button>
      <div class="dropdown-content">
        <a href="#">Link 1</a>
        <a href="#">Link 2</a>
        <a href="#">Link 3</a>
      </div>
    </div>
        <div class="dropdown">
      <button class="dropbtn">기타</button>
      <div class="dropdown-content">
        <a href="#">Link 1</a>
        <a href="#">Link 2</a>
        <a href="#">Link 3</a>
      </div>
    </div>
        <div class="dropdown">
      <button class="dropbtn">기타</button>
      <div class="dropdown-content">
        <a href="#">Link 1</a>
        <a href="#">Link 2</a>
        <a href="#">Link 3</a>
      </div>
    </div>
</div>
<div id = "cont-wrap" >
			<div class="cate_top_txt" align="center"><h1>search</h1></div>
        </div>
		<div class="search_bar" align="center">
                 <form  name="frm_search" role="search" method="get" class="search-form" >
                     <input type="search" class="search-field" placeholder="상품명" value="${param.findStr }" name="findStr" />
                    <input type="submit"  name="btnFind" class="search-submit" value = "검색"/>
                    <input type="hidden" name="nowPage" value="${(empty param.nowPage)? 1: param.nowPage}" size="10">
					<input type="hidden" name="serial" size="10" >
					<input type="hidden" name="search" value="select">
                 </form>
        </div>

<script type="text/javascript">
<!--
	$(document).ready(function(){ 
		$("#gcTable").tablesorter();
	});
//-->
</script>

<table id="gcTable" class="tablesorter" style="margin-left: auto; margin-right: auto;" >
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