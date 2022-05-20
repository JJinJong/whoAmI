<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>심리검사 리스트</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/expert/solo/expert.css">
</head>
<body>
	<c:set var="testInfoList" value="${testInfoList}" />
	<c:set var="page" value="${page}" />
	<c:set var="startPage" value="${startPage}" />
	<c:set var="endPage" value="${endPage}" />
	<c:set var="realEndPage" value="${realEndPage}" />
	<c:set var="total" value="${total}" />
	<!-- Header -->
	<div id="admin-whole-wrapper">

		<div id="navigation">
			<div id="padding-div">
				<div class="logo-wrapper-manager">
					<img src="${pageContext.request.contextPath}/images/expert/solo/로고대두.png">
					<span>Who Am I</span>
				</div>
				<div id="first-a-wrapper">
					<br>
					<div class="a-wrapper">
						<a href="${pageContext.request.contextPath}/admin/AdminDetail.mg" class="admin-a">메인 페이지</a>
					</div>
					<div id="hr-tag3"></div>
					<div class="a-wrapper">
						<a href="${pageContext.request.contextPath}/managerMbti/TestInfoListOk.ns" class="admin-a">심리검사 관리</a>
					</div>
					<div id="hr-tag3"></div>
					<div class="a-wrapper">
						<a href="${pageContext.request.contextPath}/expert/ManagerExpertListOk.me" class="admin-a">전문가 관리</a>
					</div>
					<div id="hr-tag3"></div>
					<div class="a-wrapper">
						<a href="${pageContext.request.contextPath}/worry/WorryManagermentListOK.bo" class="admin-a">고민/사연 관리</a>
					</div>
					<div id="hr-tag3"></div>
					<div class="a-wrapper">
						<a href="${pageContext.request.contextPath}/userMyPage/UserListOk.dy" class="admin-a">이용자 관리</a>
					</div>
					<div id="hr-tag3"></div>
				</div>

			</div>
		</div>
		
		
		
		<div id="first-wrapper">
			<div id="second-wrapper">
				<div class="upper-wrapper1">
         	<div class="loginJoin-send-wrapper-position">
               <div class="loginJoin-wrapper">
               <div class="loginJoin-send-wrapper">
               <c:choose>
                  <c:when test="${managerNumber eq null}">
                  <a href="${pageContext.request.contextPath }/admin/AdminLogin.mg"> 로그인 </a>/ 
                  <a href="${pageContext.request.contextPath}/admin/AdminJoin.mg"> 회원가입 </a>
               </c:when>

               <c:otherwise>
               	관리자 아이디: ${managerId}
               <a href="${pageContext.request.contextPath}/admin/AdminLogout.mg">로그아웃</a>
               </c:otherwise>
               </c:choose>
               </div>
            </div>
         	</div>
            </div>
            <div class="upper-wrapper2">
					<div class="manager-title-wrapper">
						<span class="marks">"</span><span>말은 마음을 담는다 그래서 말에도 체온이 있다.</span><span class="marks">"</span>
					</div>
				</div>	
		<section class="management_wrapper managelist">
			<span>작성글 개수 : ${total}개</span> 
	
			<table class="management_profileList">
				<caption>mbti검사 관리</caption>
				<colgroup>
					<col width="10%">
					<col width="30%">
					<col width="25%">
					<col width="20%">
					<col width="20%">
					<col width="20%">
					<col width="0%">
				</colgroup>
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성날짜</th>
						<th></th>
						<th colspan="2" style="display: flex; justify-content: flex-end;">
							<div class="management-delete-img" onclick="location.href='${pageContext.request.contextPath}/managerMbti/TestInfoWrite.ns'">
								<img style="margin-right: 12px" src="${pageContext.request.contextPath}/images/management/작성.png">
							</div>		
						</th>
						<th>
						</th>
	
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when
							test="${testInfoList != null and fn:length(testInfoList) > 0}">
							<c:forEach var="testInfo" items="${testInfoList}">
								<tr>
									<td>${testInfo.getTestInfoNumber()}</td>
									<td>${testInfo.getTestInfoTitle()}</td>
									<td>${testInfo.getTestInfoDate()}</td>
									<td>
									<td colspan="2" style=" margin-top: 6px;display: flex; justify-content: space-evenly;">
											<div class="management-delete-img" onclick="location.href='${pageContext.request.contextPath}/managerMbti/TestInfoDetailOk.ns?testInfoNumber=${testInfo.getTestInfoNumber()}&page=${page}'" >
												<img src="${pageContext.request.contextPath}/images/management/상세보기.png">
											</div>										
											<div class="management-delete-img" onclick="location.href='${pageContext.request.contextPath}/managerMbti/TestInfoUpdate.ns?testInfoNumber=${testInfo.getTestInfoNumber()}&page=${page}'" >
												<img src="${pageContext.request.contextPath}/images/management/수정.png">
											</div>										
											<div class="management-delete-img" onclick="location.href = '${pageContext.request.contextPath}/managerMbti/TestInfoDeleteOk.ns?testInfoNumber=${testInfo.getTestInfoNumber()}'">
												<img src="${pageContext.request.contextPath}/images/management/휴지통.png">
											</div>										
									</td>
								</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td colspan="5" align="center">등록된 게시물이 없습니다.</td>
							</tr>
						</c:otherwise>
					</c:choose>
				</tbody>
			</table>
	
			<!-- 페이징 처리 -->
			 <table class="expert_page_table" style="font-size: 1.3rem">
				<tr align="center" valign="middle">
	
					<td class="web-view"><c:if test="${startPage > 1}">
							<a href="${pageContext.request.contextPath}/managerMbti/TestInfoListOk.ns?page=${startPage - 1}">&lt;</a>
						</c:if> 
						<c:forEach var="i" begin="${startPage}" end="${endPage}">
							<c:choose>
								<c:when test="${i eq page}">
									<c:out value="${i}" />&nbsp;&nbsp;
								</c:when>
								<c:otherwise> <a href="${pageContext.request.contextPath}/managerMbti/TestInfoListOk.ns?page=${i}">
									<c:out value="${i}" /></a>&nbsp;&nbsp;
								</c:otherwise>
							</c:choose>
						</c:forEach> <c:if test="${endPage < realEndPage}">
							<a href="${pageContext.request.contextPath}/managerMbti/TestInfoListOk.ns?page=${endPage + 1}">&gt;</a>
						</c:if></td>
				</tr>
			</table> 
		</section>
		</div>
		</div>
	</div>

</body>

</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</html>