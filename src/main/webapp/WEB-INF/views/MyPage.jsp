<%@ page import="com.javalab.board.vo.MemberVo" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="now" value="<%= new java.util.Date() %>" />

<%
    // 세션에서 로그인된 사용자 정보를 가져옵니다.
    MemberVo memberVo = (MemberVo) session.getAttribute("memberVo");
    
    if (memberVo == null) {
        // 로그인된 사용자가 없으면 로그인 페이지로 리디렉션합니다.
        response.sendRedirect(request.getContextPath() + "/MyPage");
        return;
    }
    
    // 세션에서 사용자가 쓴 리뷰 목록을 가져옵니다.
    /* ArrayList<ReviewVo> reviewList = (ArrayList<ReviewVo>) session.getAttribute("reviewList"); */
%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>My Page</title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/MyPage.css' />?v=${now}" />
</head>
<body>
    <div class="container">
        <%-- 헤더부분 include 액션 태그 사용 --%>
        <jsp:include page="/resources/common/header.jsp" />
        <main>
            <h1>My Page</h1>
            <form action="${contextPath}/MyPage/update" method="post">
                <table border="1">
                    <tr>
                        <th>이름</th>
                        <td><input type="text" name="name" value="${memberVo.name }"/></td>
                    </tr>
                    <tr>    
                        <th>전화번호</th>
                        <td><input type="text" name="phone" value="${memberVo.phone }" /></td>
                    </tr>
                    <tr>    
                        <th>이메일</th>
                        <td><input type="text" name="email" value="${memberVo.email }" /></td>
                    </tr>
                    <tr>        
                        <th>성별</th>
                        <td>
                            <select name="gender">
                                <c:choose>
                                    <c:when test="${memberVo.gender == 'Male'}">
                                        <option value="Male" selected>남성</option>
                                        <option value="Female">여성</option>
                                    </c:when>
                                    <c:otherwise>
                                        <option value="Male">남성</option>
                                        <option value="Female" selected>여성</option>
                                    </c:otherwise>
                                </c:choose>
                            </select>
                        </td>
                    </tr>           
                </table>
                    
                <div class="form-group">
                    <button type="submit">수정</button>
                </div>
            </form>
            
            <h2>내가 쓴 리뷰 내역</h2>
            <c:if test="${not empty reviewList}">
                <table border="1">
                    <tr>
                        <th>리뷰 ID</th>
                        <th>제목</th>
                        <th>내용</th>
                        <th>작성일</th>
                    </tr>
                    <c:forEach var="review" items="${reviewList}">
                        <tr>
                            <td>${review.reviewId}</td>
                            <td>${review.title}</td>
                            <td>${review.content}</td>
                            <td><fmt:formatDate value="${review.regDate}" pattern="yyyy-MM-dd" /></td>
                        </tr>
                    </c:forEach>
                </table>
            </c:if>
            <c:if test="${empty reviewList}">
                <p>작성한 리뷰가 없습니다.</p>
            </c:if>
        </main>
    </div>
</body>
</html>
