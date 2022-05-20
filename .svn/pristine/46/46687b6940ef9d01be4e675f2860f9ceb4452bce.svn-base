<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>감정 일기</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/app/diary/aseets/css/diary.css" />
</head>
<body>
<c:set var="diaryList" value="${diaryList}"/>
	
	<!-- Header -->
	<jsp:include page="/app/fix/header.jsp" />
   	 
	<%-- <form action="${pageContext.request.contextPath}diary/diaryDetailOk.di" id="form"> --%>
	<!-- <input type="hidden" id="diaryNumber" name="diaryNumber" value=""> -->
	    
	<div class="page">
        <div class="body mainTitle">감정 일기</div>
        <div class="body header">
            <div class="headerTime">
                <div class="TimerWrapper">
                    <span id="clock">clock</span>
                </div>
                <div class="headerTitle">
                    <span class="headerTitleMessage">오늘도 수고했어요 :) 오늘 당신의 하루는 어땠나요?</span>
                    <span class="write" onclick="writeDiary()">감정 공유하기</span>
                </div>
            </div>
        </div>
        <div class="filterWrapper">
            <div class="diaryFilter">
                <div class="colorSorts">
                    <div class="colorSort">
                        <div class="color" id="pink"></div>
                    </div>
                    <div class="colorSort">
                        <div class="color" id="red"></div>
                    </div>
                    <div class="colorSort">
                        <div class="color" id="orange"></div>
                    </div>
                    <div class="colorSort">
                        <div class="color" id="yellow"></div>
                    </div>
                    <div class="colorSort">
                        <div class="color" id="green"></div>
                    </div>
                    <div class="colorSort">
                        <div class="color" id="skyblue"></div>
                    </div>
                    <div class="colorSort">
                        <div class="color" id="blue"></div>
                    </div>
                    <div class="colorSort">
                        <div class="color" id="purple"></div>
                    </div>
                    <div class="colorSort">
                        <div class="color" id="gray"></div>
                    </div>
                </div> 
            </div>
        </div>
        <div class="diariesWraper">
            <div class="diaries">
<c:choose>
<c:when test="${diaryList != null and fn:length(diaryList) > 0}">
<c:forEach var="diary" items="${diaryList}">
                <div class="diaryWrapper">
                    <div class="diary">
                        <div class= "${diary.getDiaryFileName()}">
                            <div class="diaryHeader">
                                <div class="nickname">${diary.getUserNickname()}</div>
                                <div class="diaryHeaderActions">
                                    <div class="diaryHeaderActionLike">
                                        <img class="heart" src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FblsNAi%2Fbtrvgm7hd28%2FSfdLBvfwjHr4sAktHOTCek%2Fimg.png" alt="">
                                    </div>
                                    <div class="likeCount">${diary.getDiaryLikeCount()}</div>
<!--                                     <div class="diaryHeaderActionReport">
										onclick="location.href = '${pageContext.request.contextPath }/diary/diaryDetailOk.di?diaryNumber=${diary.getDiaryNumber()}'"
                                        <img class="siren" src="https://blog.kakaocdn.net/dn/bTtwTL/btrvcH5lOQp/avDvy5beDkEdLAXKGdLDo1/tfile.svg" alt="">
                                    </div> -->
                                </div>
                            </div>
                            <div class="card ${diary.getDiaryFileName()}">
                                <p class="a2" id="${diary.getDiaryNumber()}"><a href = "${pageContext.request.contextPath }/diary/DiaryDetailOk.di?diaryNumber=${diary.getDiaryNumber()}">${diary.getDiaryContent2()}</a></p>
                                <p class="q2"></p>
                            </div>
                            <div class="triangle"></div>
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
</c:forEach>     
</c:when>
<c:otherwise>

</c:otherwise>
</c:choose>
                <div class="diaryWrapper">
                    <div class="diary">
                        <div class="card2">
                            <div class="diaryHeader">
                                <div class="nickname">세미콜론</div>
                                <div class="diaryHeaderActions">
                                    <div class="diaryHeaderActionLike">
                                        <img class="heart" src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FblsNAi%2Fbtrvgm7hd28%2FSfdLBvfwjHr4sAktHOTCek%2Fimg.png" alt="">
                                    </div>
                                    <div class="likeCount">59</div>
                                    <div class="diaryHeaderActionReport">
                                        <img class="siren" src="https://blog.kakaocdn.net/dn/bTtwTL/btrvcH5lOQp/avDvy5beDkEdLAXKGdLDo1/tfile.svg" alt="">
                                    </div>
                                </div>
                            </div>
                            <div class="card card2">
                                <p class="a2"> 프론트가 답이 없어서</p>
                                <p class="q2"></p>
                            </div>
                            <div class="triangle"></div>
                            <div class="emotionWrapper">
                                <div class="emotion">
                                    <span>피곤해</span> 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="diaryWrapper">
                    <div class="diary">
                        <div class="card13">
                            <div class="diaryHeader">
                                <div class="nickname">세미콜론!</div>
                                <div class="diaryHeaderActions">
                                    <div class="diaryHeaderActionLike">
                                        <img class="heart" src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FblsNAi%2Fbtrvgm7hd28%2FSfdLBvfwjHr4sAktHOTCek%2Fimg.png" alt="">
                                    </div>
                                    <div class="likeCount">59</div>
                                    <div class="diaryHeaderActionReport">
                                        <img class="siren" src="https://blog.kakaocdn.net/dn/bTtwTL/btrvcH5lOQp/avDvy5beDkEdLAXKGdLDo1/tfile.svg" alt="">
                                    </div>
                                </div>
                            </div>
                            <div class="card card13">
                                <p class="a2">잠을 많이 자서</p>
                                <p class="q2"></p>
                            </div>
                            <div class="triangle"></div>
                            <div class="emotionWrapper">
                                <div class="emotion">
                                    <span>편안해</span> 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="diaryWrapper">
                    <div class="diary">
                        <div class="card6">
                            <div class="diaryHeader">
                                <div class="nickname">세미콜론</div>
                                <div class="diaryHeaderActions">
                                    <div class="diaryHeaderActionLike">
                                        <img class="heart" src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FblsNAi%2Fbtrvgm7hd28%2FSfdLBvfwjHr4sAktHOTCek%2Fimg.png" alt="">
                                    </div>
                                    <div class="likeCount">59</div>
                                    <div class="diaryHeaderActionReport">
                                        <img class="siren" src="https://blog.kakaocdn.net/dn/bTtwTL/btrvcH5lOQp/avDvy5beDkEdLAXKGdLDo1/tfile.svg" alt="">
                                    </div>
                                </div>
                            </div>
                            <div class="card card6" id="card6">
                                <p class="a2">세미콜론</p>
                                <p class="q2"></p>
                            </div>
                            <div class="triangle"></div>
                            <div class="emotionWrapper">
                                <div class="emotion">
                                    <span>자신있어</span> 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="diaryWrapper">
                    <div class="diary">
                        <div class="card11">
                            <div class="diaryHeader">
                                <div class="nickname">비공개</div>
                                <div class="diaryHeaderActions">
                                    <div class="diaryHeaderActionLike">
                                        <img class="heart" src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FblsNAi%2Fbtrvgm7hd28%2FSfdLBvfwjHr4sAktHOTCek%2Fimg.png" alt="">
                                    </div>
                                    <div class="likeCount">59</div>
                                    <div class="diaryHeaderActionReport">
                                        <img class="siren" src="https://blog.kakaocdn.net/dn/bTtwTL/btrvcH5lOQp/avDvy5beDkEdLAXKGdLDo1/tfile.svg" alt="">
                                    </div>
                                </div>
                            </div>
                            <div class="card card11" id="card11">
                                <p class="a2">신쫄이 맛있어</p>
                                <p class="q2"></p>
                            </div>
                            <div class="triangle"></div>
                            <div class="emotionWrapper">
                                <div class="emotion">
                                    <span>감동적이야</span> 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="diaryWrapper">
                    <div class="diary">
                        <div class="card8">
                            <div class="diaryHeader">
                                <div class="nickname">세미콜론</div>
                                <div class="diaryHeaderActions">
                                    <div class="diaryHeaderActionLike">
                                        <img class="heart" src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FblsNAi%2Fbtrvgm7hd28%2FSfdLBvfwjHr4sAktHOTCek%2Fimg.png" alt="">
                                    </div>
                                    <div class="likeCount">59</div>
                                    <div class="diaryHeaderActionReport">
                                        <img class="siren" src="https://blog.kakaocdn.net/dn/bTtwTL/btrvcH5lOQp/avDvy5beDkEdLAXKGdLDo1/tfile.svg" alt="">
                                    </div>
                                </div>
                            </div>
                            <div class="card card8" id="card8">
                                <p class="a2">늦잠자서</p>
                                <p class="q2"></p>
                            </div>
                            <div class="triangle"></div>
                            <div class="emotionWrapper">
                                <div class="emotion">
                                    <span>기뻐</span> 
                                </div>
                            </div>
                        </div>
                    </div>
                </div> 
            </div> 
        </div>
    </div> 
    
   <!--  </form> -->
 	<!-- footer -->
		<jsp:include page="/app/fix/footer.jsp" />
		
</body>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script>var contextPath = "${pageContext.request.contextPath}";</script>
	<script src="${pageContext.request.contextPath}/app/diary/aseets/js/diary.js"></script>
<%-- 	<script src="${pageContext.request.contextPath}/app/diary/aseets/js/diaryList.js"></script> --%>
</html>

