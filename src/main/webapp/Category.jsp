<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">

</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
			<a href="javascript:recentlist();">정확도순</a>&nbsp&nbsp
			<a href="javascript:recentlist();">인기순</a>&nbsp&nbsp
			<a href="javascript:pricelist();">낮은가격순</a>&nbsp&nbsp
			<a href="javascript:pricelist();">높은가격순</a>&nbsp&nbsp
			<a href="javascript:pricelist();">제조사순</a>&nbsp&nbsp
			<a href="javascript:pricelistdesc();">빠른배송</a> </p>
		</div>
</body>
</html>