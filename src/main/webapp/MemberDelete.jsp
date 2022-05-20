<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Member.MemberDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	
	MemberDAO mdao = new MemberDAO();
	mdao.deleteMember(id);
%>
삭제되었습니다.
<%
	response.sendRedirect("MemberList.jsp");
%>

</body>
</html>