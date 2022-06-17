<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Cookie[] cookies = request.getCookies();
	if(cookies != null){
		for(Cookie tempCookie : cookies){
			if(tempCookie.getName().equals("id")){
				response.sendRedirect("Main.jsp");
			}
		}
	}

%>
<center>
<div class="header">
	<a href="http://localhost:8081/TeamProject_CRD/Main.jsp" target="_self">
  	<img src="images/code.png" width="150" align="center">
	</a>
</div>
<h2>로그인</h2>
<form action="sessionLoginPro.jsp" method="post">
아이디:<input type="text" name="id"><br>
패스워드:<input type="password" name="pass1"><br>
<input type="radio" name="login" value="관리자">관리자 로그인 &nbsp;
<input type="radio" name="login" value="일반">일반 로그인 &nbsp;<br>
<input type="checkbox" name="loginChk" value="true">로그인 상태유지<br>
<input type="submit" value="로그인">
<input type="button" value="회원가입" onclick="location.href='MemberJoin.jsp';">
</center>
</form>
</body>
</html>