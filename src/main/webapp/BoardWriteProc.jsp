<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="Model.BoardDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");

%>

<jsp:useBean id="boardbean" class="Model.BoardBean">
<jsp:setProperty property="*" name="boardbean"/>
</jsp:useBean>
<%
	BoardDAO bdao=new BoardDAO();
	bdao.insertBoard(boardbean);
	
	response.sendRedirect("BoardList.jsp");
%>
저장되었습니다.
</body>
</html>