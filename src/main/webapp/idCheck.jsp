<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Member.MemberBean" %>
<%@ page import="Member.MemberDAO" %>
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
	String id = (String)request.getParameter("id");
	MemberDAO mdao = new MemberDAO();
	boolean check = mdao.checkId(id);
%>
<center>
		<b><%=id %></b>
		<%
			if(check){
				out.println("는 이미 존재하는 아이디 입니다.<p>");
		%>
				<script type="text/javascript">
				opener.document.getElementById('idchk').value = "No";
				</script>
				<%		
				}
			else if (!check){
				out.println("는 사용가능한 아이디 입니다.<p>");
				%>
				<script type="text/javascript">
				opener.document.getElementById('idchk').value = "Yes";
				</script>
				<%
			}
		%>
		<a href = "#" onclick = "self.close()"><button style = "background:gray; border:none; border-radius:10px;">닫기</button></a>
	</center>			

</body>
</html>