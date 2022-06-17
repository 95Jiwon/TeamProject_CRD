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

<!-- 본문영역 -->
<style>
	.wrap{
	width:100%;
	height:800px;
	background-color:white;
	}
</style>

<!-- 상품등록 -->
<style>
	table{
	margin:auto;
	}

	.itemBox_left{
	padding-right:5px;
	}
	
	.itemBox_right{
	padding-left:5px;
	padding-top: 3px;
	padding-bottom:3px;
	}
	
	.itemBox .item_submit{
	width:100px;
	height:40px;
	border:2px solid black;
	background-color:skyblue;
	border-radius:10px;
	font-size:20px;
	margin-right:15px;
	color:black;
	
	margin: 15 3 15 3px;
	}
	
	.itemBox .item_reset{
	width:100px;
	height:40px;
	border:2px solid black;
	background-color:white;
	border-radius:10px;
	font-size:20px;
	padding: 0 5 0 5px;
	}
</style>
</head>
<body>
	<h1 class="top_title"><a href="adminMain.jsp">관리자페이지</a></h1>
	
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
	
	<div class="wrap">
	<h1 align="center">상품등록</h1>
		<div class="itemBox">
			<form method="post" action="adminItemProc.jsp">
				<table width="900" border="1px">
					<tr>
						<td class="itemBox_left" align="right">상품명</td>
						<td class="itemBox_right"><input type="text"  name="itemName" placeholder="상품명을 입력해주세요"></td>
					</tr>
					
					<tr>
						<td class="itemBox_left" align="right">원가</td>
						<td class="itemBox_right"><input type="text" name="price" placeholder="원가를 입력해주세요"></td>
					</tr>
					
					<tr colspan="4">
						<td class="itemBox_left" align="right">판매가</td>
						<td class="itemBox_right"><input type="text" name="sellPrice" placeholder="판매가를 입력해주세요"></td>
					</tr>
					
					<tr>
						<td class="itemBox_left" align="right">할인율</td>
						<td class="itemBox_right"><input type="text" name="salePrice" placeholder="할인율을 입력해주세요"></td>
					</tr>
					
					<tr>
						<td class="itemBox_left" align="right">상품설명</td>
						<td class="itemBox_right" ><textarea name="itemComment" rows="10" cols="100%"></textarea></td>
					</tr>
					
					<tr colspan="3">
						<td class="itemBox_left" align="right" width="150">상품이미지</td>
						<td class="itemBox_right"><input type="file" name="itemImage" width="400px" height="400" alt="상품이미지">
					</tr>
					
					<tr height="50px">
						<td colspan="2" align="center">
						<input type="submit" value="저장" class="item_submit">
						<input type="reset" value="취소" class="item_reset" onclick="location.href='<%=request.getContextPath()%>/adminMain.jsp'">
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>