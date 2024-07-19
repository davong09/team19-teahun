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
<title>상품 목록</title>
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

.product-content {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
}

.product-item {
    width: 23%; /* 4개의 아이템을 한 줄에 표시 */
    box-sizing: border-box;
    margin-bottom: 20px;
    text-align: center;
    border: 1px solid #e0e0e0;
    padding: 10px;
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
}

.product-item img {
    width: 100%; /* 이미지가 아이템의 너비에 맞게 조정 */
    height: 200px; /* 고정된 높이 설정 */
    object-fit: cover; /* 비율을 유지하며 이미지를 잘 맞도록 조정 */
    border-radius: 4px;
}

.product-item .price {
    color: #ff5722;
    font-weight: bold;
    margin-top: 10px;
}

.search-form {
    display: flex;
    justify-content: center;
    margin-bottom: 20px;
}

.search-form input[type="text"] {
    width: 300px;
    padding: 10px;
    margin-right: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
}

.search-form input[type="submit"] {
    padding: 10px 20px;
    border: none;
    background-color: #50b3a2;
    color: white;
    border-radius: 4px;
    cursor: pointer;
}

.search-form input[type="submit"]:hover {
    background-color: #3e8e83;
}

.footer {
    background-color: #f1f1f1;
    text-align: center;
    padding: 10px;
    position: fixed;
    bottom: 0;
    width: 100%;
}
</style>
</head>
<body>
    <div class="container">
        <jsp:include page="/resources/common/mainheader.jsp" />
        <main>
            <h3>상품 목록</h3>
            <form action="<c:url value='/productList'/>" method="get" class="search-form">
                <input type="text" name="keyword" placeholder="검색어 입력" />
                <input type="submit" value="검색" />
            </form>

            <c:if test="${not empty productList}">
                <div class="content">
                    <div class="product-content">
                        <c:forEach var="product" items="${productList }" varStatus="idx">
                            <div class="product-item">
                                <a href="<c:url value='/product/detail/${product.proId }'/>">
                                    <img src="${contextPath}/resources/uploads/${product.imgPath}/${product.fileName}" alt="상품" />
                                </a>
                                <a href="<c:url value='/product/detail/${product.proId }'/>">
                                    <c:out value="${product.name }"></c:out>
                                </a>
                                <div class="price">
                                    <c:out value="${product.price }"></c:out> 원
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </c:if>
        </main>
    </div>
</body>
</html>
