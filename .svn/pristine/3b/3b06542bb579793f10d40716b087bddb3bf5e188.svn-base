<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/app/expertCounselingDetail/assets/css/main.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/app/expertCounselingDetail/assets/css/mainControl.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/app/expertCounselingDetail/assets/css/MyActivity.css" />
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
                    <div class="excluded-users__header card__title">상담내역</div>
                    <table class="comment table" style="padding-left: 25px">
                    <colgroup>
            <col width="10%">
            <col width="30%">
            <col width="12%">
            <col width="21%">
            <col width="12%">
            <col width="4%">
         </colgroup>
                    <tr>
                        <th class="GuideLine">고객명</th>
                        <th class="GuideLine">전화번호</th>
                        <th class="GuideLine">상담형태</th>
                        <th class="GuideLine" colspan="2">상담 프로그램</th>
                        <th></th>
                        <th></th>
                        <th class="GuideLine">진행 사항</th>
                     </tr>
                    </table>
                    <c:choose>
                    <c:when test="${ConsultList != null and fn:length(ConsultList) > 0}">
                    <c:forEach var="consult" items="${ConsultList}">
                    <div class="Zrvvs" id="expertCousult">
                    <input type="hidden" value="${consult.getConsultPaymentDetailNumber()}">
                        <div class="contents">
                        <table class="comment table">
                      <colgroup>
			            <col width="55px">
			            <col width="127px">
			            <col width="0px">
			            <col width="75px">
			            <col width="170px">
         			</colgroup>
                        <tr style="text-align: center;">
                        	<td>${consult.getUserName()}</td>
                        	<td>${consult.getUserHP()}</td>
                        	<td></td>
                        	<td colspan="1">${consult.getConsultType()}</td>
                        	<td>${consult.getConsultTitle()}</td>
                        	<td class="bookingStatus">${consult.getConsultStatus()}</td>
                        </tr>
                        </table>
                        </div>
                        	<div class="Typebutton" id="TB">
                        		<button class="Type" onclick="onGoing(${consult.getConsultPaymentDetailNumber()})">진행중</button>
                        		<button class="Type" onclick="theEnd(${consult.getConsultPaymentDetailNumber()})">상담완료</button>
                        	</div> 
                    </div>
                    </c:forEach>
                    </c:when>
                    <c:otherwise>
                    	<p>상담내역이 없습니다</p>
                    </c:otherwise>
                    </c:choose>
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
<script src="${pageContext.request.contextPath}/app/expertCounselingDetail/assets/js/mainControl.js"></script>
</html>