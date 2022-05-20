<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로필 수정</title>
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/expert/solo/expert.css">
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>	
<body>
<c:set var="profile" value="${profile}" />
<c:set var="userStatus" value="${userStatus}"/>	
	<!-- Header -->
		<c:if test="${userStatus == 0 or userStatus == null}">
			<jsp:include page="/app/fix/header.jsp" />
		</c:if>
		<c:if test="${userStatus == 1}">
			<jsp:include page="/app/fix/headerExpert.jsp" />
		</c:if>
	
	<section class="management_wrapper_expert">
		<div class="management_header">
			<ul class="my">
				<li>
					프로필 수정
				</li>
				<li>
				<input type="button" value="취소"
					onclick="location.href = '${pageContext.request.contextPath}/expert/ExpertListCheck.me'">
				</li>
			</ul>
		</div>
		<form method="post" action="${pageContext.request.contextPath}/expert/ExpertProfleUpdateOk.me" class="my" enctype="multipart/form-data" name="updateForm">
			<input type="hidden" name="page" value="${page}">
			<input type="hidden" name="managerProfileNumber" value="${profile.getManagerProfileNumber()}">
			<p>이름을 작성해주세요</p> 
			<input type="text" name="managerName" value="${profile.getManagerName()}"> 
			<br>
			<p>사진을 첨부해주세요</p>
			<div style="display:flex;">
	            <div class="files">
	               <div>
	                  <label for="board_file1" style="display:inline;">
	                     <img id="board_file1Img" style="width: 122px; height: 180px" src="${pageContext.request.contextPath}/upload/${profile.getManagerPictureNameOrignal()}" width="50px" height="50px" style="display:inline;">
	                  </label>
	               </div>
	               <input id="board_file1" name="board_file1" type="file">
	               <input type="button" onclick="cancelFile('board_file1')" value="첨부 삭제">
	            </div>
			</div>
			<br>
			<p>간단한 자기 소개 문구를 작성해주세요</p> 
			<input type="text" name="managerIntroduce" value="${profile.getManagerIntroduce()}">
			<br>
			<p>심리 상담 급수를 입력해주세요</p>
			<c:choose>
				<c:when test="${profile.getManagerRank() == 1}">
				<div class="rank_select">
					<input type="radio" id="rank1" name="managerRank" value="1" checked="checked"> 
					<label for="rank1">1급</label>
					<input type="radio" id="rank2" name="managerRank" value="2"> 
					<label for="rank2">2급</label>
				</div>
				</c:when>
				<c:otherwise>
				<div class="rank_select">
					<input type="radio" id="rank1" name="managerRank" value="1"> 
					<label for="rank1">1급</label>
					<input type="radio" id="rank2" name="managerRank" value="2" checked="checked"> 
					<label for="rank2">2급</label>
				</div>	
				</c:otherwise>
			</c:choose>
			<br>
			<p>경력을 작성해주세요</p> 
			<textarea rows="" cols="" name="managerCareer">${profile.getManagerCareer()}</textarea>
			<br>
			<p>학력을 작성해주세요</p>
			<input type="text" placeholder="간단한 문구" name="managerDegree" id="managerDegree" value="${profile.getManagerDegree()}"/>
			<br>
			<p>심리 상담을 망설이는 분에게 할말을 작성해주세요</p> 
			<textarea rows="" cols="" name="managerContent1">${profile.getManagerContent1()}</textarea>
			<br>
			<p>상담사님과의 심리상담 효과를 작성해주세요</p> 
			<textarea rows="" cols="" name="managerContent2">${profile.getManagerContent2()}</textarea>
			<br>
			<p>상담사님의 심리상담 방식을 작성해주세요</p> 
			<textarea rows="" cols="" name="managerContent3">${profile.getManagerContent3()}</textarea>
			<br>
			<p>상담 방식을 선택해주세요</p>
			<div>
				<c:choose>
					<c:when test="${profile.getManagerconsultText() != null}">
						<input type="checkbox" id="text" name="managerconsultText" value="채팅" checked="checked">
						<label for="text">채팅</label>
					</c:when>
					<c:otherwise>
						<input type="checkbox" id="text" name="managerconsultText" value="채팅">
						<label for="text">채팅</label>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${profile.getManagerconsultVoice() != null}">
						<input type="checkbox" id="voice" name="managerconsultVoice" value="전화" checked="checked">
						<label for="voice">전화</label>
					</c:when>
					<c:otherwise>
						<input type="checkbox" id="voice" name="managerconsultVoice" value="전화">
						<label for="voice">전화</label>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${profile.getManagerconsultMeet() != null}">
						<input type="checkbox" id="meet" name="managerconsultMeet" value="대면" checked="checked">
						<label for="meet">대면</label>
					</c:when>
					<c:otherwise>
						<input type="checkbox" id="meet" name="managerconsultMeet" value="대면">
						<label for="meet">대면</label>
					</c:otherwise>
				</c:choose>
			</div>
			<br>
			<div class="management_footer">
				<ul class="my">
					<li>
					<input type="button" value="수정" onclick="UpdateSend()">
					</li>
					<li>
				</ul>
			</div>
		</form>
		
	</section>
	
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	const contextPath = "${pageContext.request.contextPath}";
</script>
<script src="${pageContext.request.contextPath}/js/expert/solo/profileUpdate.js"></script>
</html>