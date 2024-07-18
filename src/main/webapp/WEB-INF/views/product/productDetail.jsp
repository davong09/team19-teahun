<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%-- now : 현재 시간의 시분초를 now 변수에 세팅 --%>
<c:set var="now" value="<%=new java.util.Date()%>" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>productList.jsp</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
}

.container {
	width: 80%;
	margin: auto;
	overflow: hidden;
}

header {
	background: #50b3a2;
	color: #fff;
	padding-top: 30px;
	min-height: 70px;
	border-bottom: #e8491d 3px solid;
}

header a {
	color: #fff;
	text-decoration: none;
	text-transform: uppercase;
	font-size: 16px;
}

header ul {
	padding: 0;
	list-style: none;
}

header li {
	float: left;
	display: inline;
	padding: 0 20px 0 20px;
}

header #branding {
	float: left;
}

header #branding h1 {
	margin: 0;
}

header nav {
	float: right;
	margin-top: 10px;
}

main {
	padding: 20px;
	background: #fff;
	margin-top: 20px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

table {
	width: 100%;
	margin-bottom: 20px;
	border-collapse: collapse;
}

table, th, td {
	border: 1px solid #ddd;
}

th, td {
	padding: 12px;
	text-align: left;
}

th {
	background-color: #f2f2f2;
}

.product-images img {
	max-width: 150px;
	max-height: 150px;
	margin-right: 10px;
	border: 1px solid #ddd;
	border-radius: 5px;
	padding: 5px;
	background-color: #fff;
}

.product-images {
	list-style: none;
	padding: 0;
	display: flex;
	flex-wrap: wrap;
}

.product-images li {
	margin: 10px;
}

.buttons a, .buttons form {
	display: inline-block;
	margin-right: 10px;
}

.buttons a {
	text-decoration: none;
	color: #fff;
	background: #50b3a2;
	padding: 10px 20px;
	border-radius: 5px;
	transition: background 0.3s;
}

.buttons a:hover {
	background: #3e8e83;
}

.buttons input[type="submit"] {
	background: #e8491d;
	color: #fff;
	border: none;
	padding: 10px 20px;
	border-radius: 5px;
	cursor: pointer;
	transition: background 0.3s;
}

.buttons input[type="submit"]:hover {
	background: #d83c0e;
}
</style>
<%-- <link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/board.css' />?v=${now}" />
</head> --%>
<body>
	<div class="container">
		<%-- 헤더부분 include 액션 태그 사용, c:url 사용금지, 경로 직접 지정해야함. --%>
		<jsp:include page="/resources/common/mainheader.jsp" />
		<main>
			<table border="1">
				<tr>
					<th>상품명</th>
					<td><c:out value="${productWithImageVo.name}" /></td>
				</tr>
				<tr>
					<th>가격</th>
					<td><c:out value="${productWithImageVo.price}" /></td>
				</tr>
				<%-- <tr>
					<th>카테고리</th>
					<td><c:out value="${productVo.categoryKey_ID }" /></td>
				</tr> --%>
				<tr>
					<th>상품 내용</th>
					<td>${productWithImageVo.content}</td>
				</tr>
			</table>
			<c:if test="${not empty productWithImageVo.imgList}">
                <div class="row">
                    <c:forEach var="image" items="${productWithImageVo.imgList}">
                        <div class="col-md-3">
                            <div class="card mb-3">
                                <img src="${pageContext.request.contextPath}/resources/uploads/${image.imgPath}/${image.fileName}" class="card-img-top" alt="Image">
                                <div class="card-body">
                                    <p class="card-text">${image.fileName}</p>
                                    <c:if test="${image.isMain == 1}">
                                        <span class="badge badge-primary">대표 이미지</span>
                                    </c:if>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </c:if>
			</li> <br> <a href="<c:url value='/product/list'/>">목록</a>
			<!-- 업데이트랑 삭제는 일단 보류 -->
			<%-- <a href="<c:url value='/product/update'/>?proId=${productVo.proId}">수정</a>
			<form action="<c:url value='/product/delete'/>" method="post"> 
				<input type="hidden" name="proId" value="${productVo.proId}"> 
				<input type="submit" value="삭제" onclick="return confirm('정말 삭제하시겠습니까?');">
			</form>
			--%>
		</main>
	</div>
</body>
</html>
