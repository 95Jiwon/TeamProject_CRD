<%@page import="java.util.ArrayList"%>
<%@page import="Item.ItemBean"%>
<%@page import="Item.ItemDAO"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 조회</title>
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

<style>
	.wrap{
	width:100%;
	height:800px;
	background-color:white;
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
<%
request.setCharacterEncoding("utf-8"); //한글 깨짐 방지
String id = (String) session.getAttribute("id");
%> 

<%
	int pageSize = 10; //한 리스트 당 최대 글 갯수 지정
	String itemNum=request.getParameter("itemNum");//요청
	
	if(itemNum == null){
		itemNum="1";
	}
	
	int count = 0;
	int number = 0;
	
	int currentPage = Integer.parseInt(itemNum);
	
	ItemDAO idao = new ItemDAO();
	
	count = idao.getAllCount();
	
	int startRow = (currentPage-1)*pageSize +1;
	int endRow = currentPage*pageSize;
	
	//Vector<BoardBean> vec = bdao.getAllBoard(startRow, endRow);
	Vector<ItemBean> vec = idao.getTotalAllBoard();
	
	number = count - (currentPage-1)*pageSize;
%>

<%
		// 메인 페이지로 이동했을 때 세션에 값이 담겨있는지 체크
		id = null;
		if(session.getAttribute("id") != null){
			id = (String)session.getAttribute("id");
		}
		int pageNumber = 1; //기본은 1 페이지를 할당
		// 만약 파라미터로 넘어온 오브젝트 타입 'pageNumber'가 존재한다면
		// 'int'타입으로 캐스팅을 해주고 그 값을 'pageNumber'변수에 저장한다
		if(request.getParameter("pageNumber") != null){
			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
		}
	%>

	<div class="wrap">
		<div class="row">
			<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr style="margin-top:50px;">
						<th style="background-color: #eeeeee; text-align: center; width:80px;">번호</th>
						<th style="background-color: #eeeeee; text-align: center; width:300px;">상품명</th>
						<th style="background-color: #eeeeee; text-align: center; width:450px;">상품이미지</th>
						<th style="background-color: #eeeeee; text-align: center; width:100px;">가격</th>
					</tr>
				</thead>
				<tbody>
					<%
						ItemDAO itemDAO = new ItemDAO(); // 인스턴스 생성
						ArrayList<ItemBean> list = itemDAO.getList(pageNumber);
						for(int i = 0; i < list.size(); i++){
					%>
					<tr>
						<td><%= list.get(i).getItemNum() %></td>
						<!-- 게시글 제목을 누르면 해당 글을 볼 수 있도록 링크를 걸어둔다 -->
						<td><a href="adminItemUpdate.jsp?ItemNum=<%= list.get(i).getItemNum() %>">
							<%= list.get(i).getItemName() %></a></td>
						<td><%= list.get(i).getItemImage() %></td>
						<td><%= list.get(i).getSellPrice() %></td>
					</tr>
					<%
						}
					%>
				</tbody>
			</table>
			
			<!-- 페이징 처리 영역 -->
			<%
				if(pageNumber != 1){
			%>
				<a href="bbs.jsp?pageNumber=<%=pageNumber - 1 %>"
					class="btn btn-success btn-arraw-left">이전</a>
			<%
				}if(itemDAO.nextPage(pageNumber + 1)){
			%>
				<a href="bbs.jsp?pageNumber=<%=pageNumber + 1 %>"
					class="btn btn-success btn-arraw-left">다음</a>
			<%
				}
			%>
	</div>
</body>
</html>