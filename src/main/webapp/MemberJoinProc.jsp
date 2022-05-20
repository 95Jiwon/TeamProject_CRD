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
	
	String[] hobby = request.getParameterValues("hobby");
	
	String texthobby = "";
	for(int i=0;i<hobby.length;i++){
		texthobby+=hobby[i]+" ";
	}

%>
	
	<jsp:useBean id="mbean" class="Member.MemberBean">
		<jsp:setProperty property="*" name="mbean"/>
	</jsp:useBean>
	
<%
	mbean.setHobby(texthobby);

	MemberDAO mdao = new MemberDAO();
	mdao.insertMember(mbean);
	
	response.sendRedirect("MemberList.jsp");

%>


</body>
</html>