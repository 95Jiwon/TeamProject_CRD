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
<input type="text" name="pass2" value="<%= mbean.getPass2() %>"><br>
<input type="text" name="name" value="<%= mbean.getName() %>"><br>
<input type="text" name="address" value="<%= mbean.getAddress() %>"><br>
<input type="tel" name="tel" value="<%= mbean.getTel() %>"><br>
<input type="tel" name="phone" value="<%= mbean.getPhone() %>"><br>
<input type="email" name="email" value="<%= mbean.getEmail() %>"><br>


<input type="submit" value="전달">

<%= mbean.getId() %><br>
<%= mbean.getPass1() %><br>
<%= mbean.getPass2() %><br>
<%= mbean.getName() %><br>
<%= mbean.getAddress() %><br>
<%= mbean.getTel() %><br>
<%= mbean.getPhone() %><br>
<%= mbean.getEmail() %><br>


</form>
</body>
</html>