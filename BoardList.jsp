<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import ="Model.BoardDAO" %>
    <%@ page import ="Model.BoardBean" %>
    <%@ page import="java.util.Vector" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<h2>전체 게시글 보기</h2>
<%	
		
	int pageSize = 10;
	String pageNum=request.getParameter("pageNum");

	
	if(pageNum == null){
		pageNum="1";
	}

	
	int count=0;
	int number=0;
	
	
	int currentPage = Integer.parseInt(pageNum);
	
	BoardDAO bdao= new BoardDAO();
	
	count = bdao.getAllCount();
	
	int startRow=(currentPage-1)*pageSize +1;
	int endRow = currentPage*pageSize;
	
	Vector<BoardBean> vec =bdao.getAllBoard(startRow, endRow);
	
	number = count - (currentPage-1)*pageSize;
	
%>

<table width="700" border="1" bgcolor="skyblue">
	<tr height="40">
		<td align="right" colspan="5">
			<input type="button" value="글쓰기" onclick="location.href='BoardWriteForm.jsp'">
		</td>
	</tr>
	
	<tr height="40">
		<td width="50" align="center">번호</td>
		<td width="320" align="center">제목</td>
		<td width="100" align="center">작성자</td>
		<td width="150" align="center">작성일</td>
		<td width="80" align="center">조회수</td>
	</tr>
	
	<%
		for(int i=0;i<vec.size();i++){
			BoardBean bean = vec.get(i);
			%>
		<tr height="40">
			<td width="50" align="center"><%= number--  %></td>
			<td width="320" align="center"><%= bean.getSubject()  %></td>
			<td width="100" align="center"><%= bean.getWrite()  %></td>
			<td width="150" align="center"><%= bean.getReg_date()  %></td>
			<td width="80" align="center"><%= bean.getReadcount()  %></td>
		</tr>
			<% 
		}
	%>
</table>
</center>
</body>
</html>