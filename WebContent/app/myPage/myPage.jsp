<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="#">
<title>Insert title here</title>
</head>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/app/myPage/assets/css/main.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/app/myPage/assets/css/mainControl.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/app/myPage/assets/css/MyActivity.css" />
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
<style type="text/css" >
.wrap-loading{ /*화면 전체를 어둡게 합니다.*/
    position: fixed;
    left:0;
    right:0;
    top:0;
    bottom:0;
    background: rgba(0,0,0,0.2); /*not in ie */
    filter: progid:DXImageTransform.Microsoft.Gradient(startColorstr='#20000000', endColorstr='#20000000');/* ie */
    
}

	.wrap-loading{
	    z-index: 2000;	
	}
    .wrap-loading div{ /*로딩 이미지*/
        position: fixed;
        top:50%;
        left:50%;
        margin-left: -21px;
        margin-top: -21px;
    }
    .display-none{ /*감추기*/
        display:none;
    }
</style>
<body>
	<c:set var="user" value="${user}" />
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
				<div class="mypage_ProfileWrapper gXilxt" id="myPage-1">
					<%--  <%-- <div class="profile card">
                    <div class="profile__header card__title">프로필</div>
                   <div class="profile__main">
                       <div class="profile__main__item">
                           <div class="profile__main__item__label">이메일</div>
                           <div class="profile__main__item__value">${user.getUserEmail()}</div>
                        </div> 
                        <div class="profile__main__item">
                            <div class="profile__main__item__label">닉네임</div>
                            <div class="profile__main__item__value">${user.getUserNickname()}</div>
                        </div>
                        <div class="profile__main__item">
                            <div class="profile__main__item__label">출생년도</div>
                            <div class="profile__main__item__value">${user.getUserBirth()}</div>
                        </div>
                        <div class="profile__main__item">
                            <div class="profile__main__item__label">성별</div>
                            <div class="profile__main__item__value">${user.getUserGender()}</div>
                        </div>
                        <div class="profile__main__item">
                            <div class="profile__main__item__label">주소</div>
                            <div class="profile__main__item__value">${user.getUserAddress()}</div>
                        </div>
                        <div class="profile__main__item">
                        	<div class="profile__main__item__label"></div>
                            <div class="profile__main__item__value profile__main__item__value profile__main__item__value--btn" id="myPage-2-Start">수정하기</div>
                        </div>
                    </div>
                </div>     --%>
				</div>
				<!-- 수정하기 클릭시 나오는 페이지 -->
				<div class="mypage_ProfileWrapper gXilxt mypage-control"
					id="myPage-2">
					<div class="profile card">
						<form method="post" name="userInform">
							<div class="profile__header card__title">프로필</div>
							<div class="profile__main">
								<div class="profile__main__item">
									<div class="profile__main__item__label">이메일</div>
									<div class="profile__main__item__value">${user.getUserEmail()}</div>
								</div>
								<div class="profile__main__item">
									<div class="profile__main__item__label">닉네임</div>
									<div class="profile__main__item__value">
										<input type="text" name="nickName"
											placeholder="변경할 닉네임을 입력해주세요"
											value="${user.getUserNickname()}">
									</div>
								</div>
								<div class="profile__main__item">
									<div class="profile__main__item__label">출생년도</div>
									<div class="profile__main__item__value">
										<input type="text" name="Birth"
											placeholder="0000-00-00으로 입력해주세요"
											value="${user.getUserBirth()}">
									</div>
								</div>
								<div class="profile__main__item">
									<div class="profile__main__item__label">성별</div>
									<div class="profile__main__item__value">
										<input type="radio" name="userGender" value="여자"
											style="width: 15px; height: 16px; box-shadow: none;" /> <label
											for="managerconsultText">여자</label> <input type="radio"
											name="userGender" value="남자"
											style="width: 15px; height: 16px; box-shadow: none;"/> <label
											for="managerconsultVoice">남자</label>
									</div>
								</div>
								<div class="profile__main__item">
									<div class="profile__main__item__label">현재 비밀번호</div>
									<div class="profile__main__item__value">
										<input type="password" name="passwordCheck"
											autocomplete="new-password">
									</div>
									<span id="result3" style="font-size: 0.7em;"></span>
								</div>
								<div class="profile__main__item">
									<div class="profile__main__item__label">변경할 비밀번호</div>
									<div class="profile__main__item__value">
										<input type="password" name="new_login_pwd"
											autocomplete="new-password">
									</div>
									<span id="result" style="font-size: 0.7em;"></span>
								</div>
								<div class="profile__main__item">
									<div class="profile__main__item__label">비밀번호 확인</div>
									<div class="profile__main__item__value">
										<input type="password" name="new_login_pwd_confirm"
											autocomplete="new-password">
									</div>
									<span id="result2" style="font-size: 0.7em;"></span>
								</div>
								<div class="profile__main__item">
									<div class="profile__main__item__label">주소</div>
									<div class="profile__main__item__value">
										<input type="text" name="newAddress">
									</div>
								</div>
								<div class="profile__main__item">
									<div class="profile__main__item__label"></div>
									<div
										class="profile__main__item__value profile__main__item__value--btn"
										onclick="profileSend()">수정</div>
									<div
										class="profile__main__item__value profile__main__item__value--btn"
										id="Exit">취소</div>
								</div>
							</div>
						</form>
					</div>
				</div>
				<div class="mypage__ExcludedUsersWrapper-sc-1mcixjt-3 eaAYhJ">
                 <div class="excluded-users card">
                    <div class="excluded-users__header card__title">상담내역</div>
                    <table class="comment table" style="padding-left: 25px">
                    <colgroup>
            <col width="15%">
            <col width="41%">
            <col width="14%">
            <col width="9%">
            <col width="6%">
            <col width="4%">
         </colgroup>
                    <tr>
                        <th class="GuideLine">상담사</th>
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
	                    <div class="Zrvvs">
	                        <div class="contents">
	                        <table class="comment table">
	                    <colgroup>
	            			<col width="115px">
				            <col width="9px">
				            <col width="223px">
				            <col width="209px">
				            <col width="129px">
	         			</colgroup>
	                        <tr style="text-align: center;">
	                        	<td>${consult.getManagerName()}</td>
	                        	<td></td>
	                        	<td colspan="1">${consult.getConsultType()}</td>
	                        	<td>${consult.getConsultTitle()}</td>
	                        	<td class="bookingStatus">${consult.getConsultStatus()}</td>
	                        </tr>
	                        </table>
	<%--                        <span class="comment Expert name">${consult.getManagerName()}</span>
	                            <span class="comment CounselingMethod" style="margin-left: 36px">${consult.getConsultType()}</span>
	                            <span class="comment CounselingProgram">${consult.getConsultTitle()}</span>
	                            <span class="comment Status">${consult.getConsultStatus()}</span> --%>
	                        </div>
	                    </div>
                    </c:forEach>
                    </c:when>
                    </c:choose>
                </div>
            </div>
			</div>
			<div class="mypage__HistoryWrapper-sc-1mcixjt-6 bDiAZE card">
				<div class="histroy__header card__title">활동기록</div>
				<div class="histroy__main">
					<div class="mypage__NavigatorWrapper-sc-1mcixjt-8 fykiXJ">
						<div class="navigator__item navigator__item--selected">고민 /
							사연</div>
						<div class="navigator__item">나의 댓글</div>
						<div class="navigator__item">나의 리뷰</div>
					</div>
					<!--고민/사연  -->
					<div class="history__main__histories MyStroy" id="MyStroyC">
						<div class="Stories__StoriesWrapper-clu9ot-0 enwmNA">
							<div class="stories worryStories" id="worryStories"></div>
						</div>
					</div>
					<!-- 로딩 -->
					<div class="wrap-loading display-none">
 						<div><img src="${pageContext.request.contextPath}/images/loading.gif"/></div>
 						
					</div> 
					<!-- 나의 댓글 -->
					<div class="history__main__histories MyComments" id="wrap_myComment">
					
						</div>
					<!--나의 리뷰  -->
 					<div class="history__main__histories MyReview"  id="MyReview">
						</div> 
				</div>
			</div>
		</div>
	</div>
	<!-- footer -->
	<div >
	<jsp:include page="/app/fix/footer.jsp" />
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	var contextPath = "${pageContext.request.contextPath}";
</script>
<script
	src="${pageContext.request.contextPath}/app/myPage/assets/js/myWorry.js"></script>
<script
	src="${pageContext.request.contextPath}/app/myPage/assets/js/myReview.js"></script> 
<script
	src="${pageContext.request.contextPath}/app/myPage/assets/js/myComment.js"></script>
<script
	src="${pageContext.request.contextPath}/app/myPage/assets/js/mainControl.js"></script>
<script
	src="${pageContext.request.contextPath}/app/myPage/assets/js/gender.js"></script>
</html>