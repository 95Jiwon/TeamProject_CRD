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
	String id =(String) session.getAttribute("id");
	
	
	Cookie[] cookies = request.getCookies();
	if(cookies != null){
		for(Cookie tempCookie:cookies){
			if(tempCookie.getName().equals("id")){
				session.setAttribute("id", tempCookie.getValue());
			}
		}
	}
	
	id = (String)session.getAttribute("id");
%>

<h2>고객페이지</h2>
<b><%=id %>님이 로그인 했습니다.</b><br>
<input type="button" value="로그아웃" onclick="location.href='sessionLogout.jsp'">

</body>
</html>