<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%
	request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lavra: Sell Item List</title>
<link type="text/css" rel="stylesheet" href="<c:url value='/style/view.css' />"> <%-- #paging 때문에 --%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script>
	$(document).ready(function() {
		$("#btnAdd").click(function() {
			location.href="/아이템 등록 페이지 url로 이동"
		});
		
		$("#btnUpd").click(function() {
			location.href="/아이템 수정 페이지 url로 이동"
		});
		
		$("#btnDel").click(function() {
			if (confirm("삭제하시겠습니까?")) {
				
			}
		})
	});
</script>
</head>
<body>
	<%@ include file="header.jsp" %>
	<div class="container" style="margin-left: 5%; margin-right: auto; margin-top: 5%;">
		<button type="button" id="btnAdd">상품 등록</button>
	</div>
	
	<div class="container"  style="margin-left: auto; margin-right: auto; width: 90%; margin-top:5%;">
		<ul class="nav nav-tabs">
			<li><a href="/sellList/view/0">진열중</a></li>
	  		<li><a href="/sellList/view/1">구매 요청</a></li>
	  		<!-- <li><a href="/SellList/view/2">판매 완료</a></li> -->
		</ul>
	</div>
	<form method="POST" name="form">
		<div class="container" style="margin-top: 5%;">
			<table>
				<thead>
					<tr>
						<th>상품명</th>
						<th>설명</th>
						<th>가격</th>
						<th>정보</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="PTPItem" items="${sellList}">
						<tr>
							<c:set var="item" value="${sellList.item }" />
							<td>
								${item.title}
							</td>
							<td>
								${item.description}
							</td>
							<td>
								<fmt:formatNumber value="${item.price}" pattern="###,###,###"/>원
							</td>
							<td>
								<button type="button" id="btnUpd">수정</button> &nbsp;
								<button type="button" id="btnDel">삭제</button>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div id="paging">
				<c:forEach var="val" begin="1" end="${totalPageSize}" varStatus="status">
					<a href='<c:url value="/sellList/view/${state}?page=${val}"/>'>
						<font color="black"><B>${val}</B></font>
					</a>
					<c:if test="${!status.last}">&nbsp;|&nbsp;</c:if>
				</c:forEach>
			</div>
		</div>
	</form> 
	
</body>
</html>