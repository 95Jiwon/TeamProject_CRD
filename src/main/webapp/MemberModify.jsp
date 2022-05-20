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
<form action="MemberModifyProc.jsp">
<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	MemberDAO mdao = new MemberDAO();
	MemberBean mbean = mdao.oneSelectMember(id);
%>

<input type="text" name="id" value="<%= mbean.getId() %>"><br>
<input type="text" name="pass1" value="<%= mbean.getPass1() %>"><br>
<input type="email" name="email" value="<%= mbean.getEmail() %>"><br>
<input type="text" name="job" value="<%= mbean.getJob() %>"><br>
<input type="tel" name="tel" value="<%= mbean.getTel() %>"><br>
<input type="submit" value="전달">

<%= mbean.getId() %><br>
<%= mbean.getPass1() %><br>
<%= mbean.getEmail() %><br>
<%= mbean.getHobby() %><br>
<%= mbean.getJob() %><br>
<%= mbean.getTel() %><br>
<%= mbean.getInfo() %><br>

</form>
</body>
</html>