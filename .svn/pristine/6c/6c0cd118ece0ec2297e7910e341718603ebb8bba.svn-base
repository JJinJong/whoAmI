<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/app/expertMyPage/assets/css/main.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/app/expertMyPage/assets/css/mainControl.css" />
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
<body>
<c:set var="user" value="${user}"/>
<c:set var="ConsultList" value="${ConsultList}"/>


<!-- Header -->
	<c:set var="userStatus" value="${userStatus}"/>
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
                   <%-- <div class="profile card">
                    <div class="profile__header card__title">프로필</div>
                   <div class="profile__main">
                       <div class="profile__main__item">
                           <div class="profile__main__item__label">이메일</div>
                           <div class="profile__main__item__value">${user.getUserEmail()}</div>
                        </div> 
                        <div class="profile__main__item">
                            <div class="profile__main__item__label">이름</div>
                            <div class="profile__main__item__value">${user.getUserName()}</div>
                        </div>
                        <div class="profile__main__item">
                            <div class="profile__main__item__label">번호</div>
                            <div class="profile__main__item__value">${user.getUserHP()}</div>
                        </div>
                        <div class="profile__main__item">
                            <div class="profile__main__item__label">성별</div>
                            <div class="profile__main__item__value">${user.getUserGender()}</div>
                        </div>
                        <div class="profile__main__item">
                        	<div class="profile__main__item__label"></div>
                            <div class="profile__main__item__value profile__main__item__value profile__main__item__value--btn" id="myPage-2-Start">수정하기</div>
                        </div>
                    </div>
                </div>    --%>
           	</div>
         <div class="mypage_ProfileWrapper gXilxt mypage-control" id="myPage-2">
                <div class="profile card">
            	<form method="post"   name="userInform">
                    <div class="profile__header card__title">프로필</div>
                   <div class="profile__main">
                       <div class="profile__main__item">
                           <div class="profile__main__item__label">이메일</div>
                           <div class="profile__main__item__value">${user.getUserEmail()}</div>
                        </div> 
                       <div class="profile__main__item">
                           <div class="profile__main__item__label">이름</div>
                           <div class="profile__main__item__value">${user.getUserName()}</div>
                        </div> 
                        <div class="profile__main__item">
                            <div class="profile__main__item__label">변경할 전화번호
                            </div>
                            <div class="profile__main__item__value">
                                <input type="text" name="newHP" autocomplete="new-HP" placeholder="0000-0000-0000으로 입력해주세요" value="${user.getUserHP()}">
                            </div>
                        </div>
                        <div class="profile__main__item">
                            <div class="profile__main__item__label">현재 비밀번호
                            </div>
                            <div class="profile__main__item__value">
                                <input type="password" name="passwordCheck" autocomplete="new-password">
                            </div><span id="result3" style="font-size:0.7em;"></span>
                        </div>
                        <div class="profile__main__item">
                            <div class="profile__main__item__label">변경할 비밀번호
                            </div>
                            <div class="profile__main__item__value">
                                <input type="password" name="new_login_pwd" autocomplete="new-password">
                            </div><span id="result" style="font-size:0.7em;"></span>
                        </div>
                        <div class="profile__main__item">
                            <div class="profile__main__item__label">비밀번호 확인
                            </div>
                            <div class="profile__main__item__value">
                                <input type="password" name="new_login_pwd_confirm" autocomplete="new-password">
                            </div><span id="result2" style="font-size:0.7em;"></span>
                        </div>
                        <div class="profile__main__item">
        					<div class="profile__main__item__label"></div>
        					<div class="profile__main__item__value profile__main__item__value--btn" onclick="send()">수정</div>
       					 	<div class="profile__main__item__value profile__main__item__value--btn" id="Exit">취소</div>
    					</div>
                    </div>
                    </form>
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
<script src="${pageContext.request.contextPath}/app/expertMyPage/assets/js/mainControl.js"></script>
</html>