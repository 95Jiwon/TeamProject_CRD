<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
	<h2>상품등록</h2>
	<form method="post" action="itemUploadProc.jsp">
	<table width="1100" border="1px">
		<tr>
			<td align="right">상품명</td>
			<td><input type="text"  name="itemName" placeholder="상품명을 입력해주세요"></td>
		</tr>
		
		<tr>
			<td align="right">원가</td>
			<td><input type="text" name="originalPrice" placeholder="원가를 입력해주세요"></td>
		</tr>
		
		<tr colspan="4">
			<td align="right">판매가</td>
			<td><input type="text" name="salePrice" placeholder="판매가를 입력해주세요"></td>
		</tr>
		
		<tr>
			<td align="right">할인율</td>
			<td><input type="text" name="salePercent" placeholder="할인율을 입력해주세요"></td>
		</tr>
		
		<tr>
			<td align="right">상품설명</td>
			<td><textarea rows="10" cols="90%" name="itemComment"></textarea></td>
		</tr>
		
		<tr colspan="3">
			<td align="right" width="150">상품이미지 등록</td>
			<td><input type="image" name="itemImage">
			<input type="button" name="imageUpload" value="이미지 등록"></td>
		</tr>
		
		<tr>
			<td colspan="2" align="center">
			<input type="submit" value="저장">
			<input type="reset" value="취소">
			</td>
		</tr>
	</table>
	</form>
</center>
</body>
</html>