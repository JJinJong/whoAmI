<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>감정 일기</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/app/diary/aseets/css/diaryDetail.css" />
</head>
<body>
<c:set var="diary" value="${diary}"/>
<c:set var="userNumber" value="${userNumber}"/>
	<!-- Header -->
	<jsp:include page="/app/fix/header.jsp" />

    <div class="page">
        <div class="writeWrapper">
            <div class="backTitle">
                <div class="back" onclick="history.back()">
                    ←
                </div>
                <div>
                    <div class="topTitle">
                        <div class="title">감정 일기</div>
                    </div>
                </div>
            </div>
            <div class="writeCard">
                <div class="header">
                    <div class="TimerWrapper">
                        <span id="clock">${diary.getDiaryDate()}</span>
                    </div>
                </div>
                <div class="main">
                    <div class="step">
                        <div class="q">
                            <span>1. 오늘의 감정</span>
                        </div>
                        <div class="cardsWrapper">
                            <div class="detailWrapper">
                                <div class="cardWrapper">
                                    <div class="card" id="${diary.getDiaryFileName()}"></div>
                                </div>
                                <div class="emotionWrapper">
                                    <div class="emotion">
                                        <c:choose>
                                			<c:when test="${diary.getDiaryFileName() == 'card1'}">
			                                    <span>사랑스러워</span> 
			                                </c:when>
			                                <c:when test="${diary.getDiaryFileName() == 'card2'}">
			                                    <span>피곤해</span> 
			                                </c:when>
			                                <c:when test="${diary.getDiaryFileName() == 'card3'}">
			                                    <span>용기있어</span> 
			                                </c:when>
			                                <c:when test="${diary.getDiaryFileName() == 'card4'}">
			                                    <span>행복해</span> 
			                                </c:when>
			                                <c:when test="${diary.getDiaryFileName() == 'card5'}">
			                                    <span>화나</span> 
			                                </c:when>
			                                <c:when test="${diary.getDiaryFileName() == 'card6'}">
			                                    <span>자신있어</span> 
			                                </c:when>
			                                <c:when test="${diary.getDiaryFileName() == 'card7'}">
			                                    <span>불안해</span> 
			                                </c:when>
			                                <c:when test="${diary.getDiaryFileName() == 'card8'}">
			                                    <span>기뻐</span> 
			                                </c:when>
			                                <c:when test="${diary.getDiaryFileName() == 'card9'}">
			                                    <span>미안해</span> 
			                                </c:when>
			                                <c:when test="${diary.getDiaryFileName() == 'card10'}">
			                                    <span>좌절스러워</span> 
			                                </c:when>
			                                <c:when test="${diary.getDiaryFileName() == 'card11'}">
			                                    <span>감동적이야</span> 
			                                </c:when>
			                                <c:when test="${diary.getDiaryFileName() == 'card12'}">
			                                    <span>안타까워</span> 
			                                </c:when>
			                                <c:when test="${diary.getDiaryFileName() == 'card13'}">
			                                    <span>편안해</span> 
			                                </c:when>
			                                <c:otherwise>
			                                    <span>놀라워</span> 
			                                </c:otherwise>
			                            </c:choose>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="step">
                        <div class="q">
                            <span>2. 감정의 원인</span>
                            <div class="a">
                                <span>${diary.getDiaryContent2()}</span>
                            </div>
                        </div>
                    </div>
                    <div class="step">
                        <div class="q">
                            <span>3. 바라는 것</span>
                            <div class="a">
                                <span>${diary.getDiaryContent3()}</span>               
                            </div>                        
                        </div>
                    </div>
                    <div class="step">
                        <div class="q">
                            <span>4. 감정이 생기게 한 상대에게하고 싶은 이야기</span>
                            <div class="a">
                                <span>${diary.getDiaryContent4()}</span>
                            </div>                        
                        </div>
                    </div>
                    <div class="step">
                        <div class="q">
                            <span>5. 듣고 싶은 이야기</span>
                            <div class="a">
                                <span>${diary.getDiaryContent5()}</span>
                            </div>                       
                        </div>
                    </div>
                    <div class="step">
                        <div class="q">
                            <span>6. 원하는 것을 이루기 위해서 할 수 있는 일</span>
                            <div class="a">
                                <span>${diary.getDiaryContent6()}</span>
                            </div>
                        </div>
                    </div>
                    <div class="step">
                        <div class="q">
                            <span>7. 스스로에게 해주고 싶은 이야기</span>
                            <div class="a">
                                <span>${diary.getDiaryContent7()}</span>
                            </div>
                        </div>
                    </div>
                    <div class="step" id="step8">
                        <div class="q">
                            <span>8. 감정의 변화</span>
                            <div class="a">
                                <span>${diary.getDiaryContent8()}</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="pageFooter">
	                	<c:if test="${userNumber eq diary.getUserNumber()}">
	                    	<button class="footerBtn revise" type="button" onclick="location.href = '${pageContext.request.contextPath }/diary/DiaryRevise.di?diaryNumber=${diary.getDiaryNumber()}'">수정</button>
	                    </c:if>
	                    <button class="footerBtn close" type="button" onclick="history.back()">닫기</button>
            	</div>
            </div>
        </div>
    </div>
    
     	<!-- footer -->
		<jsp:include page="/app/fix/footer.jsp" />
		
		
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script>
		var contextPath = "${pageContext.request.contextPath}";
		var userNumber = "${userNumber}";
	</script>
	<script src="${pageContext.request.contextPath}/app/diary/aseets/js/diaryDetail.js"></script>
</body>
</html>