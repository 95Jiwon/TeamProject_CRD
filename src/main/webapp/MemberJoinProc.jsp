<%@page import="java.io.PrintWriter"%>
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

%>
	
	<jsp:useBean id="mbean" class="Member.MemberBean">
		<jsp:setProperty property="*" name="mbean"/>
	</jsp:useBean>
	
<%
		if(mbean.getId() == null || mbean.getPass1() == null || mbean.getPass2() == null ||	mbean.getName() == null
		|| mbean.getAddress() == null || mbean.getTel() == null || mbean.getPhone() == null || mbean.getEmail() == null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('입력이 안 된 사항이 있습니다')");
			script.println("history.back()");
			script.println("</script>");
		}else{
			MemberDAO mDAO = new MemberDAO();
			int result = mDAO.join(mbean);
			if(result == -1){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('이미 존재하는 아이디입니다')");
				script.println("history.back()");
				script.println("</script>");
			}else {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('회원가입 성공')");
				script.println("location.href='main.jsp'");
				script.println("</script>");
			}
		}
	%>


</body>
</html>