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
<<<<<<< HEAD
<div>
    <ul>
		<li>가격</li>
		<li><input type="text" name="minPrice" value="" class="form-control" placeholder="최소금액" /></li>
		<li>~</li>
		<li><input type="text" name="maxPrice" value="" class="form-control" placeholder="최대금액" /></li>
		<li class="pl30">결과 내 재검색</li>
		<li>
			<select name="smethod" class="form-control">
				<option value="" selected>포함단어</option>
				<option value="exception">제외단어</option>
			</select>
		</li>
		<li><input type="text" name="requery_src" value="" class="form-control" placeholder="결과내재검색" onkeypress="if(event.keyCode==13) {searchResult(); return false}"/></li>
		<li><a class="btn_search" href="javascript:searchResult();">검색</a></li>
		<li><a class="btn_reset" href="javascript:searchReset();">검색초기화</a></li>
	</ul>
</div>
<div id="product_order_list">
			<p>

			<a href="#;">이름순</a>&nbsp;&nbsp;
			<a href="#;">이름순</a>&nbsp;&nbsp;
			<a href="#;">낮은가격순</a>&nbsp;&nbsp;
			<a href="#;">높은가격순</a>&nbsp;&nbsp;

			<a href="javascript:recentlist();">최신순</a>&nbsp&nbsp
			<a href="javascript:pricelist();">낮은가격순</a>&nbsp&nbsp
			<a href="javascript:pricelistdesc();">높은가격순</a>&nbsp&nbsp

		</div>
=======
<script type="text/javascript">
<!--
	$(document).ready(function(){ 
		$("#gcTable").tablesorter();
	});
//-->
</script>
<div class="cate_search">
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
					<li><a class="btn_search" href="javascript:searchResult();">검색</a></li>
					<li><a class="btn_reset" href="javascript:searchReset();">검색초기화</a></li>
				</ul>
			</div>
<table id="gcTable" class="tablesorter">
	<thead>
	<tr>
		<th>물품명</th>
		<th>가격</th>
	</tr>
	</thead>
	<tbody>
    <tr>
        <td>연필깍이</td>
        <td>10000</td>
    </tr>
    <tr>
        <td>A4복사용지2000매</td>
        <td>15000</td>
    </tr>
    <tr>
        <td>포스트잇</td>
        <td>1700</td>
    </tr>
    <tr>
        <td>수정테이프</td>
        <td>1880</td>
    </tr>
    <tr>
        <td>스테플러</td>
        <td>4500</td>
    </tr>
    <tr>
        <td>커터</td>
        <td>1800</td>
    </tr>
    <tr>
        <td>2공펀치</td>
        <td>9500</td>
    </tr>
    <tr>
        <td>골무</td>
        <td>2300</td>
    </tr>
	</tbody>
</table>

>>>>>>> 43eadcc44a50420b4e1cef799826a7ee054e248d
</body>
</html>