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
</body>
</html>