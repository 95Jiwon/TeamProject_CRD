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
<div class="header">
	<a href="http://localhost:8081/TeamProject_CRD/Main.jsp" target="_self">
  	<img src="images/code.png" width="150" align="center">
	</a>
</div>
<h3>가입신청</h3>
<h3>로그인 정보</h3>
<form action="MemberJoinProc.jsp" method="post">
<table width = "1000" border="1">
	<tr height="50">
		<td width="200" align="center">아이디</td>
		<td width="350" align="left">
		<input type = "hidden" id = "idchk" value = "">
		<input type="text" name="id" size="30" placeholder="사용할 아이디를 입력해주세요.">
		<button type = "button" class = "idCheckbutton" onClick = "idCheck(this.form.id.value)">중복 체크</button></td>
	</tr>
	<script>
function idCheck(id){
	 if(id==""){
		 $('#submit').css('background','red');
		 $('#submit').attr('disabled', true);
		 alert("아이디를 먼저 입력하세요");
		 document.regForm.id.focus()
	 }
	 else if(id.length < 4 || id.length > 10){
		 $('#submit').css('background','red');
		 $('#submit').attr('disabled', true);
		 alert("아이디는 4~10자로 입력해야 합니다.");
		 document.regForm.id.focus()
	 }
	 else if(id){
		 var url = "idCheck.jsp?id=" + id;
		 window.open(url,"idCheck","width=300, height=100");
		if($('#idchk').val()=="No"){
					$('#submit').css('background','red');
				    $('#submit').attr('disabled', true);
					 alert("사용중인");
				 }
		else if($('#idchk').val()=="Yes"){
					$('#submit').css('background','#98ff98');
				    $('#submit').attr('disabled', false);
					 alert("사용가능한");
				 }
	 }
 }
</script>
	<tr height="50">
		<td width="200" align="center"> 비밀번호</td>
		<td width="350" align="left">
		<input type="password" name="pass1" id="pass1" size="30" placeholder="6~16 자리 특수문자 포함"onchange="check_pw()"></td>
	</tr>
  	<tr height="50">
		<td width="200" align="center"> 비밀번호 확인</td>
		<td width="350" align="left">
		<input type="password" name="pass2" id="pass2" size="30" onchange="check_pw()">&nbsp;<span id="check"></span></td>
	</tr>
	 <script>
        function check_pw(){
 
            var pass1 = document.getElementById('pass1').value;
            var SC = ["!","@","#","$","%"];
            var check_SC = 0;
 
            if(pass1.length < 6 || pass1.length>16){
                window.alert('비밀번호는 6글자 이상, 16글자 이하만 이용 가능합니다.');
                document.getElementById('pass1').value='';
            }
            for(var i=0;i<SC.length;i++){
                if(pass1.indexOf(SC[i]) != -1){
                    check_SC = 1;
                }
            }
            if(check_SC == 0){
                window.alert('!,@,#,$,% 의 특수문자가 들어가 있지 않습니다.')
                document.getElementById('pass1').value='';
            }
            if(document.getElementById('pass1').value !='' && document.getElementById('pass2').value!=''){
                if(document.getElementById('pass1').value==document.getElementById('pass2').value){
                    document.getElementById('check').innerHTML='비밀번호가 일치합니다.'
                    document.getElementById('check').style.color='blue';
                }
                else{
                    document.getElementById('check').innerHTML='비밀번호가 일치하지 않습니다.';
                    document.getElementById('check').style.color='red';
                }
            }
        }
    </script>
	</table>

<h3>개인정보</h3>
<table width = "1000" border="1">
  	<tr height="50">
		<td width="200" align="center"> 고객명(필수)</td>
		<td width="350" align="left"><input type="text" name="name" size="40" placeholder="(이름)"></td>
	</tr>
	 <tr height="200">
		<td width="200" align="center"> 주소(필수)</td>
		<td width="100" align="left">
		<input type="text" name="address" id="sample6_postcode" size="10" placeholder="우편번호">
		<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호찾기">
		 <p><input type="text" name="address" id="sample6_address" size="40" placeholder="도로명주소"></p>
		 <p><input type="text" name="address" id="sample6_detailAddress" size="40" placeholder="직접입력(세부주소)">
		 <input type="text" id="sample6_extraAddress" placeholder="참고항목"></p></td>
		 <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		 <script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>
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
		<input type="text" name="email" id="email" style="width:100px"> @
<input type="text" name="str_email02" id="str_email02" style="width:100px;" disabled value="naver.com">
<select style="width:100px;margin-right:10px" name="selectEmail" id="selectEmail">
	 <option value="1">직접입력</option>
	 <option value="naver.com" selected>naver.com</option>
	 <option value="hanmail.net">hanmail.net</option>
	 <option value="hotmail.com">hotmail.com</option>
	 <option value="nate.com">nate.com</option>
	 <option value="yahoo.co.kr">yahoo.co.kr</option>
	 <option value="empas.com">empas.com</option>
	 <option value="dreamwiz.com">dreamwiz.com</option>
	 <option value="freechal.com">freechal.com</option>
	 <option value="lycos.co.kr">lycos.co.kr</option>
	 <option value="korea.com">korea.com</option>
	 <option value="gmail.com">gmail.com</option>
	 <option value="hanmir.com">hanmir.com</option>
	 <option value="paran.com">paran.com</option>
</select>

<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
//이메일 입력방식 선택
$('#selectEmail').change(function(){
   $("#selectEmail option:selected").each(function () {
		
		if($(this).val()== '1'){ //직접입력일 경우
			 $("#str_email02").val('');                        //값 초기화
			 $("#str_email02").attr("disabled",false); //활성화
		}else{ //직접입력이 아닐경우
			 $("#str_email02").val($(this).text());      //선택값 입력
			 $("#str_email02").attr("disabled",true); //비활성화
		}
   });
});
</script>
		</td>
	</tr>	
</table>

<p>참조사항</p>
	<input type="submit" value="회원가입">
	<input type="reset" value="취소">
</form>
</center>

</body>
</html>
