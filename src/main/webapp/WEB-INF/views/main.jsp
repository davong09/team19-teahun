<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 컨텍스트패스(진입점폴더) 변수 설정 -->
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main.jsp</title>
<style>
* {
   margin: 0;
   padding: 0;
   box-sizing: border-box;
   font-weight: bold;
}

body {
   font-family: Arial, sans-serif;
   display: flex;
   flex-direction: column;
   min-height: 100vh;
   color: black;
   width: 1500px;
   margin-left: auto;
   margin-right: auto;
}

.mainheader {
   display: flex;
   justify-content: space-between;
   align-items: center;
   padding: 10px 20px;
   background-color: #f8f8f8;
   border-bottom: 1px solid #e7e7e7;
}

.mainheader .cart {
   max-height: 30px;
   margin-left: 20px;
}

.nav-menu {
   background-color: #ffffff;
   padding: 20px;
   display: flex;
   justify-content: center;
   gap: 20px;
   flex-wrap: wrap;
}

.nav-menu .nav-category .cate {
   margin: 0 15px;
   text-align: left;
   text-decoration: none;
}

.nav-menu .nav-category .imgmenu {
   width: 20px;
   height: auto;
   vertical-align: middle;
   margin-right: 5px;
}

.imgmain {
   margin-left: 20px;
}

.nav-menu .nav-categorymain {
   display: flex;
   gap: 50px;
   flex-wrap: wrap;
}

.nav-menu .nav-categorymain a {
   margin: 0 15px;
   text-align: center;
   text-decoration: none;
   color: #000;
}

.content {
   padding: 20px;
   display: flex;
   flex-direction: column;
   align-items: center;
   overflow: hidden;
}

.slideshow-container {
   width: 30%;
   max-width: 1200px; /* 슬라이드 컨테이너의 최대 너비를 설정 */
   margin: auto;
   overflow: hidden;
   position: relative; /* 슬라이드 애니메이션을 위해 상대 위치 설정 */
}

.mySlides {
   width: 100%;
   display: none; /* 모든 슬라이드를 처음에 숨김 */
}

.mySlides img {
   width: 100%;
   height: auto; /* 슬라이드 이미지의 높이를 자동으로 조정 */
   object-fit: cover; /* 이미지가 잘리지 않도록 설정 */
}

.product-content {
   display: flex;
   flex-wrap: wrap;
   justify-content: space-between;
   max-width: 1200px;
   width: 100%;
}

.product-item {
   margin-top: 10px;
   width: 23%;
   box-sizing: border-box;
   margin-bottom: 20px;
   text-align: center;
   border: 1px solid #e0e0e0;
   padding: 10px;
}

.product-item img {
   width: 100%;
   height: auto;
}

.product-item .price {
   color: #ff5722;
   font-weight: bold;
   margin-top: 10px;
}

.footer {
   background-color: #f1f1f1;
   text-align: center;
   padding: 10px;
   width: 100%;
}

.login_success_area>a {
   font-size: 15px;
   font-weight: 900;
   display: inline-block;
   margin-top: 5px;
   background: #e1e5e8;
   width: 82px;
   height: 22px;
   line-height: 22px;
   border-radius: 25px;
   color: #606267;
   margin-left: 30%;
}

.login_success_area {
   width: 60%;
   max-width: 500px;
   border: 2px solid #7474ad;
   border-radius: 15px;
   margin: 5% auto;
   padding-top: 5%;
   display: flex;
   flex-direction: column;
   align-items: flex-start;
}

.login_success_area>span {
   display: block;
   text-align: left;
   margin-left: 10%;
}

.search-bar {
   display: flex;
   align-items: center;
   margin-left: 25px;
   padding: 20px;
   width: 100%;
   max-width: 460px;
}

.search-bar input[type="text"] {
   padding: 10px;
   font-size: 16px;
   border: 1px solid #ccc;
   border-radius: 4px;
   flex-grow: 1;
}

.search-bar button {
   padding: 10px 20px;
   font-size: 16px;
   border: 1px solid #ccc;
   border-radius: 4px;
   margin-left: 5px;
   cursor: pointer;
   background-color: #007BFF;
   color: #fff;
}

.header-container {
   display: flex;
   justify-content: space-between;
   align-items: center;
}

#asd {
   display: flex;
}

.logo_area {
   width: 25%;
   height: 100%;
   background-color: red;
   float: left;
   margin-left: 20px;
}

.search_area {
   width: 50%;
   height: 100%;
   background-color: yellow;
   float: left;
}

.login_area {
   width: 25%;
   height: 100%;
   display: inline-block;
   text-align: center;
   overflow: hidden;
   white-space: nowrap;
}

.login_button {
   overflow: hidden;
   white-space: nowrap;
   width: 70%;
   height: 50%;
   background-color: #D4DFE6;
   margin-top: 30px;
   line-height: 77px;
   font-size: 35px;
   font-weight: 900;
   border-radius: 10px;
   cursor: pointer;
}

.login_area>span {
   margin-top: 10px;
   font-weight: 900;
   display: inline-block;
   margin-right: 70px;
}

.nav-category {
   position: relative;
   float: left;
}

.nav-category a {
}

.sub-menu {
   display: none;
   position: absolute;
   top: 100%;
   left: 0;
   background-color: #f1f1f1;
   padding: 10px;
   z-index: 1;
}

.nav-category:hover .sub-menu {
   display: block;
}
</style>

</head>
<body>
<div>
      <jsp:include page="/resources/common/mainheader.jsp" />
   </div>
     <div id="asd" class="header-container">
        <div class="imgmain">
        <a href="/"><img src="/resources/image/logo.png" alt="로고" class="logo" /></a>
        </div>
        <div class="search-bar">
            <input type="text" placeholder="Search for products...">
            <button type="button">검색</button>
        </div>
        <div class="login_area">

            <!-- 로그인 하지 않은 상태 -->
            <c:if test="${member == null }">
                <div class="login_button"><a href="/member/login">로그인</a></div>
                <span><a href="/member/join">회원가입</a></span>
            </c:if>

            <!-- 로그인한 상태 -->
            <c:if test="${ member != null }">
                <div class="login_success_area">
                     <span>회원 :<a href="<c:url value='/MyPage'/>"> ${member.memberName}</a></span> 
                    <span>충전금액 : ${member.money }</span>
                    <span>포인트 : ${member.point }</span>
                    <a href="/member/logout.do">로그아웃</a>
                </div>
            </c:if>
        </div>
    </div>

   <!-- 네비게이션 바 시작 -->
   <div class="nav-menu">
    <div class="nav-category">
        <img src="/resources/image/menubar.png" class="imgmenu"> 
        <a href="/list" class="category-link">카테고리</a>
        <div class="sub-menu">
            <li><a href="product/productListvg">채소</a></li>
            <li><a href="#">과일</a></li>
            <li><a href="#">정육</a></li>
        </div>
    </div>
      <div class="nav-categorymain">
         <a href="<c:url value='/product/list'/>">신상품</a> 
         <a href="<c:url value='/category3'/>">베스트</a> 
         <a href="<c:url value='/category4'/>">특가/혜택</a> 
         <a href="<c:url value='/category5'/>">계절별음식</a>
      </div>
   </div>
   <!-- 네비게이션 바 끝 -->

   <!-- 메인 콘텐츠 시작 -->
   <div class="content">
      <div class="slideshow-container">
         <div class="mySlides fade">
            <img  src="/resources/uploads/감귤1.jpg">
         </div>
         <div class="mySlides fade">
            <img src="/resources/uploads/돼지고기1.jpg">
         </div>
         <div class="mySlides fade">
            <img src="/resources/uploads/상추1.jpg">
         </div>
      </div>
      <div class="product-content">
         <div class="product-item">
            <img  src="/resources/uploads/감귤1.jpg" alt="상품 이미지 1">
            <p>제주 감귤 5입</p>
            <p class="price">4,000원</p>
         </div>
         <div class="product-item">
            <img src="/resources/uploads/돼지고기1.jpg" alt="상품 이미지 2">
            <p>국내산 돼지고기 목심 300g</p>
            <p class="price">12,000원</p>
         </div>
         <div class="product-item">
            <img src="/resources/uploads/상추1.jpg" alt="상품 이미지 3">
            <p>곰곰적상추 150g</p>
            <p class="price">2,000원</p>
         </div>
         <div class="product-item">
            <img src="/resources/uploads/오리고기1.jpg" alt="상품 이미지 4">
            <p>국내산 오리훈제 300g</p>
            <p class="price">14,000원</p>
         </div>
      </div>
   </div>
   <!-- 메인 콘텐츠 끝 -->

   <!-- 푸터 시작 -->
   <footer class="footer"> © 2024 Your Company. All Rights
      Reserved. </footer>
   <!-- 푸터 끝 -->

   <script>
    let slideIndex = 0;
    showSlides();

    function showSlides() {
        let slides = document.getElementsByClassName("mySlides");
        for (let i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";  
        }
        slideIndex++;
        if (slideIndex > slides.length) {slideIndex = 1}    
        slides[slideIndex-1].style.display = "block";  
        setTimeout(showSlides, 2000); // Change image every 2 seconds
    }
    
    
    </script>
</body>
</html>
