<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="item.ItemDAO" %>    
<%@ page import="item.ItemBean"%>
<% request.setCharacterEncoding("utf-8");%>
<jsp:useBean id="item" class="item.ItemBean" scope="page" />
<jsp:setProperty name="item" property="itemName" />
<jsp:setProperty name="item" property="price" />
<jsp:setProperty name="item" property="sellPrice" />
<jsp:setProperty name="item" property="salePrice" />
<jsp:setProperty name="item" property="itemComment" />
<jsp:setProperty name="item" property="itemImage" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	request.setCharacterEncoding("UTF-8");
	String itemName = request.getParameter("itemName");
	int price = Integer.parseInt(request.getParameter("price"));
	int salePrice = Integer.parseInt(request.getParameter("salePrice"));
	int sellPrice = Integer.parseInt(request.getParameter("sellPrice"));
	String itemComment = request.getParameter("itemComment");
	String itemImage = request.getParameter("itemImage");
%>
	
	<jsp:useBean id="ibean" class="item.ItemBean">
		<jsp:setProperty property="*" name="ibean"/>
	</jsp:useBean>
<%
ItemDAO idao = new ItemDAO();
int result = idao.insertItem(ibean);
%>

	<%
	if(item.getItemName() == null || item.getPrice() == 0 || item.getSellPrice() == 0 ||
		item.getSalePrice() == 0 || item.getItemComment() == null || item.getItemImage() == null){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('입력이 안 된 사항이 있습니다')");
				script.println("history.back()");
				script.println("</script>");
			}else{			
				if(result == 0){
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('상품등록 성공')");
					script.println("location.href='adminMain.jsp'");
					script.println("</script>");
					
				}else if(result == 1) {
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('이미 존재하는 상품입니다')");
					script.println("history.back()");
					script.println("</script>");
					
				}else if(result == -1){
					////
				}
	}
	%>
</body>
</html>