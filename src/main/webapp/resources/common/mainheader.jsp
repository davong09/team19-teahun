<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 컨텍스트패스(진입점폴더) 변수 설정 -->
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<style>
.mainheader {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 10px;
	background-color: #ffffff;
	
	position: sticky;
}

.mainheader nav {
	display: flex;
	align-items: center;
}

.mainheader .user-info li {
    display: flex; /* 리스트를 가로로 정렬 */
    list-style-type: none; /* 리스트 스타일을 제거 */
    padding: 0; /* 기본 패딩을 제거 */
    margin: 0; /* 기본 마진을 제거 */
}


.mainheader .logo {
	max-height: 50px; /* 로고 이미지의 최대 높이 설정 */
}

.mainheader .user-info {
	display: flex;
	align-items: center;
}

.mainheader .user-info p {
	margin: 0 10px;
	font-weight: bold;
}

.mainheader .user-info a {
	margin: 0 10px;
	text-decoration: none;
	color: #007bff;
}

.mainheader .user-info a:hover {
	text-decoration: underline;
}

.mainheader .cart {
	max-height: 30px; /* 장바구니 이미지의 최대 높이 설정 */
	margin-left: 20px; /* 왼쪽 여백 추가 */
}
</style>

<header class="mainheader" id="mainheader">
	<nav>
		<a href="/"><img src="/resources/image/logo.png" alt="로고" class="logo" /></a>

	</nav>
	<div class="user-info">
		<a href="<c:url value='/basket'/>"> <img src="/resources/image/cart.png" alt="장바구니" class="cart">
		</a>
		<c:if test = "${member == null}">	<!-- 로그인 x -->	
					<li >
						<a href="/member/login">로그인</a>
					</li>
					<li>
						<a href="/member/join">회원가입</a>
					</li>
					<li>
					고객센터
				</li>
				</c:if>
				<c:if test="${member != null }">	<!-- 로그인 o -->		
					<c:if test="${member.adminCk == 1 }">	<!-- 관리자 계정 -->
						<li><a href="/admin/main">관리자 페이지</a></li>
					</c:if>							
					<li>
						<a href="/member/logout.do">로그아웃</a>
					</li>
					<li>
						마이룸
					</li>
					<li>
						<a href="/cart/${member.memberId}">장바구니</a>
					</li>
				</c:if>
	</div>
</header>

<script>
// 스크롤 이벤트를 감지하여 헤더의 위치를 조정합니다.
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
    var header = document.getElementById("mainheader");
    if (document.body.scrollTop > 50 || document.documentElement.scrollTop > 50) {
        header.classList.add("fixed");
    } else {
        header.classList.remove("fixed");
    }
}
</script>