<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="User.UserDAO" %>
    <%@ page import="User.UserBean" %>

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
	String pass1 = request.getParameter("pass1");
	String loginChk = request.getParameter("loginChk");
	
	// id,password
	String dbId = "test";
	String dbPassword = "test1";

	UserDAO udao = new UserDAO();
	if(udao.loginAuth2Ok(id, pass1) == 1){ // 로그인 성공
		session.setAttribute("id", id);
		session.setAttribute("auth", 5);
		if(loginChk != null){
			Cookie cookie = new Cookie("id",id);
			cookie.setMaxAge(24*60*60);
			cookie.setPath("/");
			response.addCookie(cookie);
			response.sendRedirect("Main.jsp");
		}else {
			response.sendRedirect("Main.jsp");
		}
	}else {
		//10일 경우
		session.setAttribute("id", id);
		session.setAttribute("auth", 10);
		if(id.equals("user123")&&pass1.equals("12345!")){
			Cookie cookie = new Cookie("auth",id);
			cookie.setPath("/");
			response.addCookie(cookie);
			response.sendRedirect("Main.jsp");
		}else{
		out.println("로그인 실패");
		}
	}
	/*
	if(udao.loginAuthOk(id, password) == 1){
		session.setAttribute("id", id);
		if(loginChk != null){
			Cookie cookie = new Cookie("id",id);
			cookie.setMaxAge(24*60*60);
			cookie.setPath("/");
			response.addCookie(cookie);
			response.sendRedirect("sessionMain.jsp");
		}else {
			response.sendRedirect("sessionMain.jsp");
		}
	}else {
		out.println("로그인 실패");
	}
	*/
	/*
	if(udao.loginOK(id, password) == 1){
		session.setAttribute("id", id);
		if(loginChk != null){
			Cookie cookie = new Cookie("id",id);
			cookie.setMaxAge(24*60*60);
			cookie.setPath("/");
			response.addCookie(cookie);
			response.sendRedirect("sessionMain.jsp");
		}else {
			response.sendRedirect("sessionMain.jsp");
		}
	}else {
		out.println("로그인 실패");
	}
	*/
	/*
	if(id.equals(dbId)){
		if(password.equals(dbPassword)){
			// session 지정
			session.setAttribute("id", id);
			if(loginChk != null){
				Cookie cookie = new Cookie("id",id);
				cookie.setMaxAge(24*60*60);
				cookie.setPath("/");
				response.addCookie(cookie);
				response.sendRedirect("sessionMain.jsp");
			}
			
			
		}else{
			out.write("비밀번호가 틀렸습니다.<br>");
		}
	}else {
		out.write("아이디가 없습니다.<br>");
	}
	*/
%>
</body>
</html>