<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/app/expertCommentFix/assets/css/main.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/app/expertCommentFix/assets/css/mainControl.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/app/expertCommentFix/assets/css/MyActivity.css" />
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
<body>
<c:set var="user" value="${user}"/>
<c:set var="ConsultList" value="${ConsultList}"/>


<!-- Header -->
	<c:if test="${userStatus == 0 or userStatus == null}">
			<jsp:include page="/app/fix/header.jsp" />
		</c:if>
		<c:if test="${userStatus == 1}">
			<jsp:include page="/app/fix/headerExpert.jsp" />
		</c:if>
	<div class="iHLEDX" style="margin-top: 98px; padding-bottom: 0px;">
    <div class="mypage__MypageWrapper-sc-1mcixjt-2 iHLEDX page">
        <div class="mypage__header">
            <div class="mypage__header__title">나의 공간</div>
        </div>
        <div class="mypage__main">
               <div class="mypage__ExcludedUsersWrapper-sc-1mcixjt-3 eaAYhJ">
                 <div class="excluded-users card">
                    <div class="excluded-users__header card__title">댓글 관리</div>
                    <!-- 전문가 댓글 -->
					<div class="history__main__histories MyComments"
						id="wrap_myComment"></div>
                </div>
            </div>
         </div>       
    </div>             
   	</div>
       <!-- footer -->
		<jsp:include page="/app/fix/footer.jsp" />
		
 </body>
 <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
 <script>var contextPath = "${pageContext.request.contextPath}";</script>
<script src="${pageContext.request.contextPath}/app/expertCommentFix/assets/js/mainControl.js"></script>
</html>