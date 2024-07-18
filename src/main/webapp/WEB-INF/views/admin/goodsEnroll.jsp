<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<%-- 현재 시간의 시분초를 now 변수에 세팅 --%>
<c:set var="now" value="<%= new java.util.Date() %>" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/board.css' />?v=${now}" />
<script src='<c:url value="/resources/ckeditor/ckeditor.js" />'></script>
<script src='<c:url value="/resources/ckeditor/config.js" />'></script>
</head>
<body>
   <div class="container">
		<%-- 헤더 부분 include 액션 태그 사용, c:url 사용금지, 경로 직접 지정해야 함. --%>
		<jsp:include page="/resources/common/mainheader.jsp" />
        <main>
			<%-- <c:if test="${not empty sessionScope.memberVo && sessionScope.memberVo.memberId == 'java'}"> --%>
				<h3>게시물 작성</h3>
				<form action="<c:url value='/admin/goodsEnroll'/>"  method="post" enctype="multipart/form-data">
					<!-- <div>
						<label for="proId">상품 ID</label>
						<input type="text" id="proId" name="proId">
					</div> -->
					<div>
						<label for="categoryKey_ID">카테고리 ID</label>
						<input type="text" id="categoryKey_ID" name="categoryKey_ID">
					</div>
					<div>
						<label for="name">상품명</label>
						<input type="text" id="name" name="name">
					</div>
					<div>
						<label for="content">상품 설명</label>
						<textarea id="content" name="content" cols="80" rows="10"></textarea>
					</div>
					<div>
						<label for="price">금액</label>
						<input type="number" id="price" name="price">
					</div>
					<div>
						파일 1: <input type="file" name="files" /><br />
        				파일 2: <input type="file" name="files" /><br />
        				파일 3: <input type="file" name="files" /><br />
        				파일 4: <input type="file" name="files" /><br />
        				파일 5: <input type="file" name="files" /><br />
					</div>
					<div>
						<input type="submit" value="저장">
						<input type="reset" value="다시쓰기">
					</div>
				</form>
		</main>
	</div>
</body>
</html>
