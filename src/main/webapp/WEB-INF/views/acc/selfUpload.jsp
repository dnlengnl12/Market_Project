<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내가 작성한 글 목록</title>
</head>
<body>
	<h1>내가 작성한 글 목록</h1>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>콘텐츠</th>
			<th>옵션</th>
			<th>가격</th>
			<th>조회수</th>
			<th>작성일</th>
		</tr>
		<c:forEach items="${item }" var="data" varStatus="status">
			<tr>
				<td>${status.index }</td>
				<td>${data.item_title}</td>
				<td>${data.item_contents}</td>
				<td>${data.item_option}</td>
				<td>${data.item_price}</td>
				<td>${data.item_hits}</td>
				<td>${data.item_date}</td>
			</tr>
		</c:forEach>
	</table>
	

</body>
</html>