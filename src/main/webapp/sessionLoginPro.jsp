<<<<<<< HEAD:sessionLoginPro.jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="user.UserDAO" %>
    <%@ page import="user.UserBean" %>
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
	String password = request.getParameter("password");
	String loginChk = request.getParameter("loginChk");
	
	// id,password
	String dbId = "test";
	String dbPassword = "test1";

	UserDAO udao = new UserDAO();
	if(udao.loginAuth2Ok(id, password) == 1){ // 로그인 성공
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
=======
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
	String password = request.getParameter("password");
	String loginChk = request.getParameter("loginChk");
	
	// id,password
	String dbId = "test";
	String dbPassword = "test1";

	UserDAO udao = new UserDAO();
	if(udao.loginAuth2Ok(id, password) == 1){ // 로그인 성공
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
>>>>>>> 91a0672b5ed7c850fb8e9735285d61aef2782f4a:src/main/webapp/sessionLoginPro.jsp
</html>