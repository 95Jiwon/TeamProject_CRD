<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 전체 초기화 -->
<style>
	*{
	margin:0px;
	padding:0px;
	}
	
	h1, a{
	text-decoration: none;
	display:block;
	color:black;
	}
</style>

<!-- 메뉴판 -->
<style>
body {
    font-family: Arial;
    padding: 10px;
    background: #f1f1f1;
}
/* Header/Blog Title */
.header {
    padding: 30px;
    text-align: center;
    background: white;
}
.header h1 {
    font-size: 50px;
}
/* Style the top navigation bar */
.topnav {
    
    background-color: black;
}
/* Style the topnav links */

/* Create two unequal columns that floats next to each other */
/* Left column */
.leftcolumn {   
    float: left;
    width: 75%;
}
/* Right column */
.rightcolumn {
    float: left;
    width: 25%;
    background-color: #f1f1f1;
    padding-left: 20px;
}
/* Fake image */
.fakeimg {
    background-color: #aaa;
    width: 100%;
    padding: 20px;
}
.fakeimg2 {
    
    width: 100%;
    
}
/* Add a card effect for articles */
.card {
    background-color: white;
    padding: 20px;
    margin-top: 20px;
}
/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}
/* Footer */
.footer {
    padding: 20px;
    text-align: center;
    background: #ddd;
    margin-top: 20px;
}
/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 800px) {
    .leftcolumn, .rightcolumn {   
        width: 100%;
        padding: 0;
    }
}
/* Responsive layout - when the screen is less than 400px wide, make the navigation links stack on top of each other instead of next to each other */

.dropbtn {
    background-color: black;
    color: white;
    padding: 16px 15px;
    width: 232px;
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
	<h1 class="top_title"><a href="adminMain.jsp">관리자페이지</a></h1>
	<div>
	
	</div>
	<div class="topnav">
  <div class="dropdown">
      <button class="dropbtn">상품관리</button>
      <div class="dropdown-content">
        <a href="adminItem.jsp">상품등록</a>
        <a href="adminItemList.jsp">상품조회</a>
        <a href="adminItemDelete.jsp">상품제거</a>
      </div>
    </div>
    <div class="dropdown">
      <button class="dropbtn">회원관리</button>
      <div class="dropdown-content">
        <a href="adminMember.jsp">회원목록</a>
      </div>
    </div>
</div>
</body>
</html>