<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
var phone = function(url){
	if(url == '/'){
		location.reload(true);
		return;
	}
	$.ajax({
		type: 'GET',
		url: "../productList.do?desc=휴대폰",
		data: "",
		contentType:"application/x-www-form-urlencoded; charset=UTF-8",
		success: function(data) {
			$('#product_list').html(data);
			
		},
		error: function(request, status, error) {
			alert(error);
		}
	});
};

var laptop = function(url){

	$.ajax({
		type: 'POST',
		url: "../productList.do?desc=노트북",
		data: "",
		contentType:"application/x-www-form-urlencoded; charset=UTF-8",
		success: function(data) {
			$('#product_list').html(data);
		},
		error: function(request, status, error) {
			alert(error);
		}
	});
};


</script>
</head>
<body>
<!-- 상품 카테고리 -->		
            <ul class="menu">
                <li><a href="javascript:phone();">휴대폰</a></li>
                <li><a href="javascript:laptop();">노트북</a></li>
                <li><a href="javascript:tablet()">태블릿PC</a></li>
                <li><a href="javascript:watch()">스마트워치</a></li>
                <li><a href="javascript:accessory()">악세서리</a></li>
             </ul>
		
		
<!-- 상품 목록 -->
		<div id = "product_list">
	<jsp:include page="../product_index/phone.jsp"/>
		</div>
</body>
</html>