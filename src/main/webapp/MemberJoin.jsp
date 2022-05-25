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
<h2>회원가입</h2>
<form action="MemberJoinProc.jsp" method="post">
<table width = "500" border="1">
	<tr height="50">
		<td width="150" align="center">아이디</td>
		<td width="350" align="center"><input type="text" name="id" size="40" placeholder="사용할 아이디를 입력해주세요."></td>
	</tr>
	<tr height="50">
		<td width="150" align="center"> 비밀번호</td>
		<td width="350" align="center"><input type="password" name="pass1" size="40" placeholder="비밀번호는 6자 이상으로 작성해주세요."></td>
	</tr>
	<tr height="50">
		<td width="150" align="center"> 비밀번호 확인</td>
		<td width="350" align="center"><input type="password" name="pass2" size="40" placeholder="비밀번호를 확인해주세요."></td>
	</tr>
	<tr height="50">
		<td width="150" align="center"> 고객명(필수)</td>
		<td width="350" align="center"><input type="text" name="name" size="40" placeholder="(이름)"></td>
	</tr>
	<tr height="50">
		<td width="150" align="center"> 주소(필수)</td>
		<td width="350" align="center"><input type="text" name="address" size="40" placeholder="지번"></td><br>
		<td width="350" align="center"><input type="text" name="address" size="40" placeholder="도로명주소"></td><br>
		<td width="350" align="center"><input type="text" name="address" size="40" placeholder="직접입력(세부주소)"></td>
	</tr>
	<tr height="50">
		<td width="150" align="center">전화번호</td>
		<td width="350" align="center">
			<select name="tel">
			<option value="02">02</option>
			<option value="031">031</option>
			<option value="032">033</option>
			<option value="041">041</option>
			<option value="042">042</option>
			<option value="043">043</option>
			<option value="044">044</option>
			<option value="051">051</option>
			<option value="052">052</option>
			<option value="053">053</option>
			<option value="054">054</option>
			<option value="055">055</option>
			<option value="061">061</option>
			<option value="062">062</option>
			<option value="063">063</option>
			<option value="064">064</option>
			</select>-<input type="number" name="tel1" size="40">-<input type="number" name="tel1" size="40">
		</td>
	</tr>
	<tr height="50">
		<td width="150" align="center"> 휴대폰번호(필수)</td>
		<td width="350" align="center">
		<select name="phone">
		<option value="010">010</option>
		<option value="011">011</option>
		<option value="016">016</option>
		<option value="017">017</option>
		<option value="018">019</option>
		</select>-<input type="number" name="phone1" size="40">-<input type="number" name="phone1" size="40">
		</td>
	</tr>
	<tr heigh="50">
		<td width="150" align="center">이메일(필수)</td>
		<td width="350" align="center"><input type="email" name="email" size="40"></td>
	</tr>
	
	<tr height="50">
		<td align="center" width="150" colspan="2">
			<input type="submit" value="회원가입">
			<input type="reset" value="취소">
		</td>
	</tr>
</table>
</form>
</center>

</body>
</html>
