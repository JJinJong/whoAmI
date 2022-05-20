<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>감정 일기 수정</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/app/diary/aseets/css/diaryRevise.css" />
<style type="text/css">
		.${diary.getDiaryFileName()} {
            opacity: 100%;
        }
        .${diary.getDiaryFileName()} .card {
            width: 95%;
            height: 95%;
            margin-top: 1%;
            margin-bottom: 5%;
            z-index: 5;
            overflow: visible;
            align-items: center;
        }
        .${diary.getDiaryFileName()} .emotion {
            margin: 0 auto;
            margin-top: 3%;
            width: 85%;
            font-size: 1.1em;
        }
</style>
</head>
<body>
	<!-- Header -->
	<jsp:include page="/app/fix/header.jsp" />

    <div class="page">
        <div class="writeWrapper">
            <div class="backTitle">
                <div class="back">
                    ←
                </div>
                <div>
                    <div class="topTitle">
                        <div class="title">감정 일기 수정</div>
                    </div>
                </div>
            </div>
            <form id="writeForm" action="${pageContext.request.contextPath}/diary/DiaryReviseOk.di" method="post">
            <div class="writeCard">
                <div class="header">
                    <div class="TimerWrapper">
                        <span id="clock">${diary.getDiaryDate()}</span>
                    </div>
                    <div class="options">
                        <div class="option">
                        	<div class="OnOffWrapper">
                        <c:choose>
                             <c:when test="${diary.getDiaryAnonymous() == 'off'}">
			                     <div class="on-off off">
                                    <div class="switch"></div>
                                </div>
                                <div class="label off">닉네임 비공개</div>
			                 </c:when>
			                 <c:otherwise>
			                     <div class="on-off">
                                    <div class="switch"></div>
                                </div>
                                <div class="label">닉네임 비공개</div>
			                 </c:otherwise>
			            </c:choose>
                            </div>
                        </div>
                        <div class="option">
                            <div class="OnOffWrapper">
                            <c:choose>
                             <c:when test="${diary.getDiaryAnonymous() == 'off'}">
			                     <div class="on-off off">
                                    <div class="switch"></div>
                                </div>
                                <div class="label off">나만 보기</div>
			                 </c:when>
			                 <c:otherwise>
			                     <div class="on-off">
                                    <div class="switch"></div>
                                </div>
                                <div class="label">나만 보기</div>
			                 </c:otherwise>
			            </c:choose>
                            </div>
                        </div>
                    </div>
                </div>
                        <input type="hidden" class="inputOption" id="diaryAnonymous" name="diaryAnonymous" value="${diary.getDiaryDate()}">
                        <input type="hidden" class="inputOption" id="diaryPublic" name="diaryPublic" value="${diary.getDiaryDate()}">
                        <input type="hidden" id="diaryFileName" name="diaryFileName" value="${diary.getDiaryFileName()}">
                        <input type="hidden" id="diaryNumber" name="diaryNumber" value="${diary.getDiaryNumber()}">
                <div class="main">
                    <div class="step">
                        <div class="q">
                            <span>1. 오늘의 감정을 가장 잘 설명해주는 표현을 골라줘~</span>
                        </div>
                        <div class="cardsWrapper">
                            <div class="cards">
                                <div class="wrapper card1">
                                    <div class="cardWrapper">
                                        <div class="card" id="card1"></div>
                                    </div>
                                    <div class="emotionWrapper">
                                        <div class="emotion">
                                            <span>사랑스러운</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="wrapper card2">
                                    <div class="cardWrapper">
                                        <div class="card" id="card2"></div>
                                    </div>
                                    <div class="emotionWrapper">
                                        <div class="emotion">
                                            <span>피곤한</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="wrapper card3">
                                    <div class="cardWrapper">
                                        <div class="card" id="card3"></div>
                                    </div>
                                    <div class="emotionWrapper">
                                        <div class="emotion">
                                            <span>용기있는</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="wrapper card4">
                                    <div class="cardWrapper">
                                        <div class="card" id="card4"></div>
                                    </div>
                                    <div class="emotionWrapper">
                                        <div class="emotion">
                                            <span>행복한</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="wrapper card5">
                                    <div class="cardWrapper">
                                        <div class="card" id="card5"></div>
                                    </div>
                                    <div class="emotionWrapper">
                                        <div class="emotion">
                                            <span>화난</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="wrapper card6">
                                    <div class="cardWrapper">
                                        <div class="card" id="card6"></div>
                                    </div>
                                    <div class="emotionWrapper">
                                        <div class="emotion">
                                            <span>자신있는</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="wrapper card7" id="anxious">
                                    <div class="cardWrapper">
                                        <div class="card" id="card7"></div>
                                    </div>
                                    <div class="emotionWrapper">
                                        <div class="emotion">
                                            <span>불안한</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="wrapper card8">
                                    <div class="cardWrapper">
                                        <div class="card" id="card8"></div>
                                    </div>
                                    <div class="emotionWrapper">
                                        <div class="emotion">
                                            <span>기쁜</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="wrapper card9">
                                    <div class="cardWrapper">
                                        <div class="card" id="card9"></div>
                                    </div>
                                    <div class="emotionWrapper">
                                        <div class="emotion">
                                            <span>미안한</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="wrapper card10">
                                    <div class="cardWrapper">
                                        <div class="card" id="card10"></div>
                                    </div>
                                    <div class="emotionWrapper">
                                        <div class="emotion">
                                            <span>좌절한</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="wrapper card11">
                                    <div class="cardWrapper">
                                        <div class="card" id="card11"></div>
                                    </div>
                                    <div class="emotionWrapper">
                                        <div class="emotion">
                                            <span>감동적인</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="wrapper card12">
                                    <div class="cardWrapper">
                                        <div class="card" id="card12"></div>
                                    </div>
                                    <div class="emotionWrapper">
                                        <div class="emotion">
                                            <span>안타까운</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="wrapper card13">
                                    <div class="cardWrapper">
                                        <div class="card" id="card13"></div>
                                    </div>
                                    <div class="emotionWrapper">
                                        <div class="emotion">
                                            <span>편안한</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="wrapper card14">
                                    <div class="cardWrapper">
                                        <div class="card" id="card14"></div>
                                    </div>
                                    <div class="emotionWrapper">
                                        <div class="emotion">
                                            <span>놀라운</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="step">
                        <div class="q">
                            <span>2. 그런 감정이 생긴 원인이 뭐였을까~? </span>
                            <div class="a">
                                <textarea name="diaryContent2" id="a2" cols="30" rows="10">${diary.getDiaryContent2()}</textarea>
                            </div>
                        </div>
                        <div class="comfort">
                            <span class="message">그래서 그런 감정이 들었구나~ 그럴 수 있지, 이해 돼~</span>
                            <img src="https://thumbs.gfycat.com/CoarseNeedyBluefish-size_restricted.gif" alt="">
                        </div>
                    </div>
                    <div class="step">
                        <div class="q">
                            <span>3. 그러면 내가 바라는 것은 무엇일까~? </span>
                            <div class="a">
                                <textarea name="diaryContent3" id="a3" cols="30" rows="10">${diary.getDiaryContent3()}</textarea>                         
                            </div>                        
                        </div>
                        <div class="comfort">
                            <span class="message">그랬구나~ 그래서 그런 감정이 느꼈구나! </span>
                            <img src="https://mblogthumb-phinf.pstatic.net/MjAxOTAxMzFfMjky/MDAxNTQ4ODY0NDYzMzE2.GHx86THeo18H2UrZgtOsTN9oUOiISGh13_O-sTPXebcg.RYbLmRk5crP1imsyijjQfJiAqHfHoGIXu843KsV2RDQg.JPEG.fls6473/IMG_8150.JPG?type=w800" alt="">
                        </div>
                    </div>
                    <div class="step">
                        <div class="q">
                            <span>4. 이런 감정이 생기게 한 상대에게 어떤 이야기를 하고 싶어~? </span>
                            <div class="a">
                                <textarea name="diaryContent4" id="a4" cols="30" rows="10">${diary.getDiaryContent4()}</textarea>
                            </div>                        
                        </div>
                        <div class="comfort">
                            <img src="https://pbs.twimg.com/media/Djqrwn1VAAILo9N.jpg" alt="">
                            <span class="message">그래~ 그런 이야기가 하고 싶었구나~ </span>
                        </div>
                    </div>
                    <div class="step">
                        <div class="q">
                            <span>5. 그러면 듣고 싶은 이야기는~? </span>
                            <div class="a">
                                <textarea name="diaryContent5" id="a5" cols="30" rows="10">${diary.getDiaryContent5()}</textarea>
                            </div>                       
                        </div>
                        <div class="comfort">
                            <span class="message">그런 말을 듣고 싶었구나~ 이해 돼~ </span>
                            <img src="https://thumbs.gfycat.com/CoarseNeedyBluefish-size_restricted.gif" alt="">
                        </div>
                    </div>
                    <div class="step">
                        <div class="q">
                            <span>6. 원하는 것을 이루기 위해서 할 수 있는 일은 무엇이 있을까? </span>
                            <div class="a">
                                <textarea name="diaryContent6" id="a6" cols="30" rows="10">${diary.getDiaryContent6()}</textarea>
                            </div>
                        </div>
                        <div class="comfort">
                            <span class="message">좋아~ 훌륭해~! </span>
                            <img src="https://item.kakaocdn.net/do/44ba1b2a59c2ada3f7119660091f96c8f43ad912ad8dd55b04db6a64cddaf76d" alt="">
                        </div>
                    </div>
                    <div class="step">
                        <div class="q">
                            <span>7. 스스로에게 해주고 싶은 이야기가 있어? </span>
                            <div class="a">
                                <textarea name="diaryContent7" id="a7" cols="30" rows="10">${diary.getDiaryContent7()}</textarea>
                            </div>
                        </div>
                        <div class="comfort">
                            <span class="message">그래~ 우리는 오늘 하루도 수고했다는 말을 해주고 싶어~</span>
                            <img src="https://eso.psiu.kr/data/editor/2012/b976a9102e0b54805a03497611b8bbfb_1607703251_1272.gif" alt="">
                        </div>
                    </div>
                    <div class="step" id="step8">
                        <div class="q">
                            <span>8. 일기를 쓰고 나서 감정의 변화가 있으면 적어줘~</span>
                            <div class="a">
                                <textarea name="diaryContent8" id="a8" cols="30" rows="10">${diary.getDiaryContent8()}</textarea>
                            </div>
                        </div>
                        <div class="comfort">
                            <img src="https://i.pinimg.com/originals/18/ef/ba/18efbac1e48e18353980015635911725.gif" alt="">
                            <span>항상 우리가 응원해~ 내일 또 보아!</span>
                        </div>
                    </div>
                </div>
                <div class="footer">
                    <button class="footerBtn revise" type="button" id="reviseDiary">수정 완료</button>
                    <button class="footerBtn delete" type="button" id="deleteDiary">삭제</button>
                </div>
            </div>
            </form>
        </div>
    </div>
    
     	<!-- footer -->
		<jsp:include page="/app/fix/footer.jsp" />
		
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script>var contextPath = "${pageContext.request.contextPath}";</script>
	<%-- <script src="${pageContext.request.contextPath}/js/expert/solo/expertList.js"></script> --%>
	<script src="${pageContext.request.contextPath}/app/diary/aseets/js/diaryRevise.js"></script>
</body>
</html>

