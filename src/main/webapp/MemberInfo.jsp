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
<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	MemberDAO mdao = new MemberDAO();
	MemberBean mbean = mdao.oneSelectMember(id);
%>

<%= mbean.getId() %><br>
<%= mbean.getPass1() %><br>
<%= mbean.getEmail() %><br>
<%= mbean.getHobby() %><br>
<%= mbean.getJob() %><br>
<%= mbean.getTel() %><br>
<%= mbean.getInfo() %><br>
<input type="button" value="뒤로" onclick="history.back();">
<a href="MemberModify.jsp?id=<%= mbean.getId() %>"><%=mbean.getId() %></a>
<a href="MemberDelete.jsp?id=<%= mbean.getId() %>"><%=mbean.getId() %>삭제</a>


</body>
</html>