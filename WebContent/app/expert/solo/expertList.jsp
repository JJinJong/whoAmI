<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전문가 리스트</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/expert/solo/expert.css" />
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
</head>
<body>

	<c:set var="userStatus" value="${userStatus}"/>	
	<!-- Header -->
		<c:if test="${userStatus == 0 or userStatus == null}">
			<jsp:include page="/app/fix/header.jsp" />
		</c:if>
		<c:if test="${userStatus == 1}">
			<jsp:include page="/app/fix/headerExpert.jsp" />
		</c:if>

		<!-- map -->
		<div class="bigWrapper">
			<div id="map"></div>
		</div>
		
		<!-- Menu -->
		<div class="wrapper_top">
			<div class="menuDetail">
				<span> 심리상담 </span>
			</div>
			<div class="filter">
				<img class="fiterimg"
					src="${pageContext.request.contextPath}/images/expert/solo/필터.png">
			</div>
		</div>

		<div class="line"></div>

		<div class="wrapper_category">
			<div class="category" onclick="getList()">최근등록순</div>
			<input type="hidden" value="1">
			<div class="category" onclick="getListPrice()">높은가격순</div>
			<input type="hidden" value="2">
		</div>
		
		<div class="filter_wrapper">
			<div class="filter_content_wrapper">
				<div class="filter_content">
					<div class="filter_content_header">
						<span class="filter_content_header_cancel">취소</span>
						<div class="filter_content_header_title">필터</div>
					</div>
					
					<div class="filter_content_section">
						<form id="filterForm" method="post" action="${pageContext.request.contextPath}/expert/ExpertListFilterOk.me" name="filterForm">
						<div class="filter_content_section_title">
							상담 방식
						</div>
						<div class="filter_content_section_text_wrapper">
							<div class="filter_content_section_text">
								<input type="checkbox" id="text" name="consultText" value="채팅">
								<label for="text"><span>텍스트 테라피</span></label>
							</div>
							<div class="filter_content_section_text">
								<input type="checkbox" id="voice" name="consultVoice" value="전화">
								<label for="voice"><span>보이스 테라피</span></label>
							</div>
							<div class="filter_content_section_text">
								<input type="checkbox" id="meet" name="consultMeet" value="대면">
								<label for="meet"><span>대면 상담</span></label>
							</div>
						</div>
						
						<div class="filter_content_section_title">
							상담사 성별
						</div>
						<div class="filter_content_section_text_wrapper">
							<div class="filter_content_section_text">
								<input type="checkbox" id="female" name="consultGender" value="여자">
								<label for="female"><span>여성</span></label>
							</div>
							<div class="filter_content_section_text">
								<input type="checkbox" id="male" name="consultGender" value="남자">
								<label for="male"><span>남성</span></label>
							</div>
						</div>
						</form>
						
						<div class="filter_content_footer_wrapper">
							<span class="filter_content_footer_reset">
								초기화
							</span>
							<button class="filter_content_footer_button" onclick="keywordFilter()">
								결과 보기
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="wrapper_expert" id="wrapper_expert">

		</div>
		
		
		<!-- footer -->
		<jsp:include page="/app/fix/footer.jsp" />
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a6e1ad03b348a3a5a60279406678d08f"></script>
<script>
	var contextPath = "${pageContext.request.contextPath}";
</script>
<script src="${pageContext.request.contextPath}/js/expert/solo/expertList.js"></script>
</html>