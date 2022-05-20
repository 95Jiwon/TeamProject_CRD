<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Member.MemberDAO" %>
<%@ page import="Member.MemberBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="mbean" class="Member.MemberBean">
<jsp:setProperty property="*" name="mbean"/>
</jsp:useBean>

<%
	MemberDAO mdao = new MemberDAO();
	mdao.modifyMember(mbean);
%>
수정되었습니다.
<%
	response.sendRedirect("MemberList.jsp");
%>
</body>
</html>