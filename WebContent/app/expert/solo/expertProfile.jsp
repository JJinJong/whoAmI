<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전문가 프로필</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/expert/solo/expert.css" />
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
</head>
<body>
	<c:set var="profile" value="${profile}"/>
	<c:set var="price" value="${price}" />
	<c:set var="userStatus" value="${sessionScope.userStatus}" />
	<c:set var="userStatus" value="${userStatus}"/>	
	<c:set var="managerProfileNumber" value="${managerProfileNumber}"/>	
	
	
	<!-- Header -->
		<c:if test="${userStatus == 0 or userStatus == null}">
			<jsp:include page="/app/fix/header.jsp" />
		</c:if>
		<c:if test="${userStatus == 1}">
			<jsp:include page="/app/fix/headerExpert.jsp" />
		</c:if>
	
	<!-- 전체 wrapper  -->
	<div class="wrapper expert">
		<!-- 이름 및 사진 -->
		<div class="wrapper_self">
			<div class="expert_profile_name">
				${profile.getManagerName()}
			</div>
			<div	class="expert_profile_img">
				<img src="${pageContext.request.contextPath}/upload/${profile.getManagerPictureNameOrignal()}" >
			</div>
		</div>
		
		<!-- 간단한 소개 -->
		<div class="wrapper_degree">
			<div class="degree_intro">
				${profile.getManagerIntroduce()}
			</div>
			<br>
			<br>
			<div class="degree_career_wrapper">
				<div class="career" >
					<div>경력  <img src="${pageContext.request.contextPath}/images/expert/solo/경력.png"> </div>
					<div class="career_list">${profile.getManagerCareer()}</div>			
				</div>
				<div class="academy">
					<div>학력  <img src="${pageContext.request.contextPath}/images/expert/solo/학력.png"> </div>
					<div class="acardemy_list">${profile.getManagerDegree()}</div>
				</div>
			</div>
		</div>

		<div class="wrapper_consult_intro">
			<div class="consult_intro_left">
				소개
			</div>
			<div class="consult_intro_right">
				<div class="consult_intro_right_detail">
					<div class="left">
						심리상담을 망설이는 분에게
					</div>
					<div class="right">${profile.getManagerContent1()}</div>
				</div>
	
				<div class="consult_intro_right_detail">
					<div class="left">
						상담사님과의 심리상담 효과
					</div>
					<div class="right">${profile.getManagerContent2()}</div>
				</div>
	
				<div class="consult_intro_right_detail">
					<div class="left">
						상담사님의 심리상담 방식
					</div>
					<div class="right">${profile.getManagerContent3()}</div>
				</div>
			</div>
		</div>
		
		<div class="wrapper_consult_intro_review">
			<div class="consult_intro_left">
				후기
			</div>
			<div class="consult_intro_right">
			
				<div class="consult_review_wrapper">
				
				</div>
					<div class="review_bar" onclick="plusReview()">
						<div class="plusReviewBtn">더보기</div> <div><img src="${pageContext.request.contextPath}/images/expert/solo/하단애로우.png"></div>
					</div>
			</div>
		</div>

	</div>
	
	<c:if test="${userStatus == 0}">
		<!-- 결제 footer -->
		<jsp:include page="/app/fix/profileFooter.jsp"/>
	</c:if>

	<c:if test="${userStatus == 1}">
		<!-- 결제 footer -->
		<jsp:include page="/app/fix/expertFooter.jsp"/>
	</c:if>
	
	
	<!-- footer -->
	<jsp:include page="/app/fix/footer.jsp" />
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	var managerProfileNumber = "${managerProfileNumber}";
</script>
<script src="${pageContext.request.contextPath}/js/expert/solo/expertProfile.js"></script>
</html>