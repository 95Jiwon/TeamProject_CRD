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
<h3>가입신청</h3>
<h3>로그인 정보</h3>
<form action="MemberJoinProc.jsp" method="post">
<table width = "1000" border="1">
	<tr height="50">
		<td width="200" align="center">아이디</td>
		<td width="350" align="left"><input type="text" name="id" size="30" placeholder="사용할 아이디를 입력해주세요.">
		<input type="button" value="중복확인"></td>
	</tr>
	<tr height="50">
		<td width="200" align="center"> 비밀번호</td>
		<td width="350" align="left"><input type="password" name="pass1" size="40" placeholder="비밀번호는 6자 이상으로 작성해주세요."></td>
	</tr>
  	<tr height="50">
		<td width="200" align="center"> 비밀번호 확인</td>
		<td width="350" align="left"><input type="password" name="pass2" size="40" placeholder="비밀번호를 확인해주세요."></td>
	</tr>
	</table>

<h3>개인정보</h3>
<table width = "1000" border="2">
  	<tr height="50">
		<td width="200" align="center"> 고객명(필수)</td>
		<td width="350" align="left"><input type="text" name="name" size="40" placeholder="(이름)"></td>
	</tr>
	 <tr height="200">
		<td width="200" align="center"> 주소(필수)</td>
		<td width="100" align="left"><input type="text" name="address" size="10" placeholder="지번">
		<input type="button" value="우편번호">
		 <p><input type="text" name="address" size="40" placeholder="도로명주소"></p>
		 <p><input type="text" name="address" size="40" placeholder="직접입력(세부주소)"></p></td>
	</tr>
	<tr height="50">
		<td width="150" align="center">전화번호</td>
		<td width="350" align="left">
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
			</select>-<input type="text" name="tel1" size="10">-<input type="text" name="tel1" size="10">
		</td>
	</tr>
	<tr height="50">
		<td width="150" align="center"> 휴대폰번호(필수)</td>
		<td width="350" align="left">
		<select name="phone">
		<option value="010">010</option>
		<option value="011">011</option>
		<option value="016">016</option>
		<option value="017">017</option>
		<option value="018">019</option>
		</select>-<input type="text" name="phone1" size="10">-<input type="text" name="phone1" size="10">
		</td>
	</tr>
	<tr height="50">
		<td width="150" align="center">이메일(필수)</td>
		<td width="350" align="left">
		<input type="text" name="email" size="20">@
		<input type="text" name="email" size="20" placeholder="직접입력">
		<select name="email1" style="width:150px;">
		<option value="naver">naver.com</option>
		<option value="gmail">gmail.com</option>
		<option value="nate">nate.com</option>
		<option value="daum">daum.net</option>
		<option value="zum">zum.com</option>
		</select></td>
	</tr>	
</table>
</form>
</center>
<p>참조사항</p>
<center>
	<input type="submit" value="회원가입">
	<input type="reset" value="취소">
</center>

</body>
</html>
