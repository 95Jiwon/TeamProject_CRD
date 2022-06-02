<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
	<script type="text/javascript" src="jquery.tablesorter.min.js"></script>
	<link rel="stylesheet" href="blue_style.css" type="text/css">
	<link rel="stylesheet" href="green_style.css" type="text/css">

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
<!--
	$(document).ready(function(){ 
		$("#gcTable").tablesorter();
	});
//-->
</script>
<div class="#">
				<ul>
					<li>가격</li>
					<li><input type="text" name="minPrice" value="" class="form-control" placeholder="최소금액"></li>
					<li>~</li>
					<li><input type="text" name="maxPrice" value="" class="form-control" placeholder="최대금액"></li>
					<li class="pl30">결과 내 재검색</li>
					<li>
						<select name="smethod" class="form-control">
							<option value="" selected="">포함단어</option>
							<option value="exception">제외단어</option>
						</select>
					</li>
					<li><input type="text" name="requery_src" value="" class="form-control" placeholder="결과내재검색" onkeypress="if(event.keyCode==13) {searchResult(); return false}"></li>
					<li><a class="btn_search" href="#;">검색</a></li>
					<li><a class="btn_reset" href="#;">검색초기화</a></li>
				</ul>
			</div>
<table id="gcTable" class="tablesorter">
	<thead>
	<tr>
		<th>물품명</th>
		<th>가격</th>
		<th>이미지</th>
	</tr>
	</thead>
	<tbody>
    <tr>
        <td>연필깍이</td>
        <td>10000</td>
        <td><img width="100px" height="100px" src="images/pensil.jpg"></td>
    </tr>
    <tr>
        <td>A4복사용지2500매</td>
        <td>15000</td>
        <td><img width="100px" height="100px" src="images/A4.jpg"></td>
    </tr>
    <tr>
        <td>포스트잇</td>
        <td>1700</td>
        <td><img width="100px" height="100px" src="images/postit.jpg"></td>
    </tr>
    <tr>
        <td>수정테이프</td>
        <td>1880</td>
        <td><img width="100px" height="100px" src="images/tape.jpg"></td>
    </tr>
    <tr>
        <td>스테플러</td>
        <td>4500</td>
        <td><img width="100px" height="100px" src="images/stemp.jpg"></td>
    </tr>
    <tr>
        <td>커터</td>
        <td>1800</td>
        <td><img width="100px" height="100px" src="images/cutter.jpg"></td>
    </tr>
    <tr>
        <td>2공펀치</td>
        <td>9500</td>
        <td><img width="100px" height="100px" src="images/punchi.jpg"></td>
    </tr>
    <tr>
        <td>골무</td>
        <td>2300</td>
        <td><img width="100px" height="100px" src="images/golmu.jpg"></td>
    </tr>
	</tbody>
</table>

</body>
</html>