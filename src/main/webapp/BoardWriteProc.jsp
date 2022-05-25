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

%>

<jsp:useBean id="boardbean" class="Member.MemberBean">
<jsp:setProperty property="*" name="boardbean"/>
</jsp:useBean>
<%
	MemberDAO bdao=new MemberDAO();
	bdao.insertBoard(Memberbean);
	
	response.sendRedirect("BoardList.jsp");
%>
저장되었습니다.
</body>
</html>