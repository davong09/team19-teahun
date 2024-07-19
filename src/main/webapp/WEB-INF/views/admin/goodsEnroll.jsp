<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="now" value="<%= new java.util.Date() %>" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 등록</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/board.css' />?v=${now}" />
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
    form {
        display: flex;
        flex-direction: column;
    }
    form div {
        margin-bottom: 15px;
    }
    form label {
        font-weight: bold;
        margin-bottom: 5px;
    }
    .form-group {
        display: flex;
        align-items: center;
    }
    .form-group .form-item {
        flex: 1;
        display: flex;
        align-items: center;
    }
    .form-group .form-item label {
        flex: 2;
        margin-right: 10px;
    }
    .form-group .form-item input {
        flex: 8;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }
    form textarea {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }
    form input[type="file"] {
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }
    .button-group {
        display: flex;
        justify-content: flex-start;
    }
    form input[type="submit"],
    form input[type="reset"] {
        width: 100px;
        padding: 10px;
        background-color: #50b3a2;
        color: white;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        margin-right: 10px;
    }
    form input[type="submit"]:hover,
    form input[type="reset"]:hover {
        background-color: #3e8e83;
    }
</style>
<script src='<c:url value="/resources/ckeditor/ckeditor.js" />'></script>
<script src='<c:url value="/resources/ckeditor/config.js" />'></script>
</head>
<body>
   <div class="container">
        <jsp:include page="/resources/common/mainheader.jsp" />
        <main>
            <h3>상품 등록</h3>
            <form action="<c:url value='/admin/goodsEnroll'/>" method="post" enctype="multipart/form-data">
                <div class="form-group">
                    <div class="form-item">
                        <label for="categoryKey_ID">카테고리 ID</label>
                        <input type="text" id="categoryKey_ID" name="categoryKey_ID">
                    </div>
                    <div class="form-item">
                        <label for="name">상품명</label>
                        <input type="text" id="name" name="name">
                    </div>
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
                <div class="button-group">
                    <input type="submit" value="저장">
                    <input type="reset" value="다시쓰기">
                </div>
            </form>
        </main>
    </div>
</body>
</html>
