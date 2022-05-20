<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>감정일기 작성</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/app/diary/aseets/css/diaryWrite.css" />
</head>
<body>
<c:set var="userNickname" value="${userNickname}"/>
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
                        <div class="title">감정 일기</div>
                    </div>
                </div>
            </div>
            <form id="writeForm" action="${pageContext.request.contextPath}/diary/DiaryWriteOk.di" method="post" >  
            <div class="writeCard">
                <div class="header">
                    <div class="TimerWrapper">
                        <span id="clock">clock</span>
                    </div>
                    <div class="options">
                        <div class="option">
                            <div class="OnOffWrapper">
                                <div class="on-off off">
                                    <div class="switch"></div>
                                </div>
                                <div class="label off">닉네임 비공개</div>
                            </div>
                        </div>
                        <div class="option">
                            <div class="OnOffWrapper">
                                <div class="on-off off">
                                    <div class="switch"></div>
                                </div>
                                <div class="label off">나만 보기</div>
                            </div>
                        </div>
                    </div>
                </div>
                
                        <input type="hidden" id="diaryDate" name="diaryDate" value="">
                        <input type="hidden" class="inputOption" id="diaryAnonymous" name="diaryAnonymous" value="off">
                        <input type="hidden" class="inputOption" id="diaryPublic" name="diaryPublic" value="off">
                        <input type="hidden" id="diaryFileName" name="diaryFileName" value="">

                <div class="main">
                    <div class="step">
                        <div class="q">
                            <span>1. 오늘의 감정을 가장 잘 설명해주는 표현을 골라줘~</span>
                        </div>
                        <div class="cardsWrapper">
                            <div class="cards">
                                <div class="wrapper">
                                    <div class="cardWrapper">
                                        <div class="card" id="card1"></div>
                                    </div>
                                    <div class="emotionWrapper">
                                        <div class="emotion">
                                            <span>사랑스러운</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="wrapper">
                                    <div class="cardWrapper">
                                        <div class="card" id="card2"></div>
                                    </div>
                                    <div class="emotionWrapper">
                                        <div class="emotion">
                                            <span>피곤한</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="wrapper">
                                    <div class="cardWrapper">
                                        <div class="card" id="card3"></div>
                                    </div>
                                    <div class="emotionWrapper">
                                        <div class="emotion">
                                            <span>용기있는</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="wrapper">
                                    <div class="cardWrapper">
                                        <div class="card" id="card4"></div>
                                    </div>
                                    <div class="emotionWrapper">
                                        <div class="emotion">
                                            <span>행복한</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="wrapper">
                                    <div class="cardWrapper">
                                        <div class="card" id="card5"></div>
                                    </div>
                                    <div class="emotionWrapper">
                                        <div class="emotion">
                                            <span>화난</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="wrapper">
                                    <div class="cardWrapper">
                                        <div class="card" id="card6"></div>
                                    </div>
                                    <div class="emotionWrapper">
                                        <div class="emotion">
                                            <span>자신있는</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="wrapper">
                                    <div class="cardWrapper">
                                        <div class="card" id="card7"></div>
                                    </div>
                                    <div class="emotionWrapper">
                                        <div class="emotion">
                                            <span>불안한</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="wrapper">
                                    <div class="cardWrapper">
                                        <div class="card" id="card8"></div>
                                    </div>
                                    <div class="emotionWrapper">
                                        <div class="emotion">
                                            <span>기쁜</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="wrapper">
                                    <div class="cardWrapper">
                                        <div class="card" id="card9"></div>
                                    </div>
                                    <div class="emotionWrapper">
                                        <div class="emotion">
                                            <span>미안한</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="wrapper">
                                    <div class="cardWrapper">
                                        <div class="card" id="card10"></div>
                                    </div>
                                    <div class="emotionWrapper">
                                        <div class="emotion">
                                            <span>좌절한</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="wrapper">
                                    <div class="cardWrapper">
                                        <div class="card" id="card11"></div>
                                    </div>
                                    <div class="emotionWrapper">
                                        <div class="emotion">
                                            <span>감동적인</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="wrapper">
                                    <div class="cardWrapper">
                                        <div class="card" id="card12"></div>
                                    </div>
                                    <div class="emotionWrapper">
                                        <div class="emotion">
                                            <span>안타까운</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="wrapper">
                                    <div class="cardWrapper">
                                        <div class="card" id="card13"></div>
                                    </div>
                                    <div class="emotionWrapper">
                                        <div class="emotion">
                                            <span>편안한</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="wrapper">
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
                                <textarea class="diaryContent" name="diaryContent2" id="a2" cols="30" rows="10"></textarea>
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
                                <textarea class="diaryContent" name="diaryContent3" id="a3" cols="30" rows="10"></textarea>                         
                            </div>                        
                        </div>
                        <div class="comfort">
                            <span class="message">그랬구나~ 그래서 그런 감정을 느꼈구나! </span>
                            <img src="https://mblogthumb-phinf.pstatic.net/MjAxOTAxMzFfMjky/MDAxNTQ4ODY0NDYzMzE2.GHx86THeo18H2UrZgtOsTN9oUOiISGh13_O-sTPXebcg.RYbLmRk5crP1imsyijjQfJiAqHfHoGIXu843KsV2RDQg.JPEG.fls6473/IMG_8150.JPG?type=w800" alt="">
                        </div>
                    </div>
                    <div class="step">
                        <div class="q">
                            <span>4. 이런 감정이 생기게 한 상대에게 어떤 이야기를 하고 싶어~? </span>
                            <div class="a">
                                <textarea class="diaryContent" name="diaryContent4" id="a4" cols="30" rows="10"></textarea>
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
                                <textarea class="diaryContent" name="diaryContent5" id="a5" cols="30" rows="10"></textarea>
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
                                <textarea class="diaryContent" name="diaryContent6" id="a6" cols="30" rows="10"></textarea>
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
                                <textarea class="diaryContent" name="diaryContent7" id="a7" cols="30" rows="10"></textarea>
                            </div>
                        </div>
                        <div class="comfort">
                            <span class="message">그래~ 우리는 오늘 하루도 수고했다는 말을 해주고 싶어~</span>
                            <img src="https://eso.psiu.kr/data/editor/2012/b976a9102e0b54805a03497611b8bbfb_1607703251_1272.gif" alt="">
                        </div>
                    </div>
                    <div class="step" id="step8">
                        <div class="q">
                            <span>8. 일기를 쓰고 나서 감정의 변화가 있으면 적어줘~ </span>
                            <div class="a">
                                <textarea class="diaryContent" name="diaryContent8" id="a8" cols="30" rows="10"></textarea>
                            </div>
                        </div>
                        <div class="comfort">
                            <img src="https://i.pinimg.com/originals/18/ef/ba/18efbac1e48e18353980015635911725.gif" alt="">
                            <span>항상 우리가 응원해~ 내일도 와줬으면 좋겠다! 또 보아!</span>
                        </div>
                    </div>
                </div>
                <div class="footer">
                    <button type="button" id="saveDiary">일기 마치기</button>
                </div>
            </div>
            </form>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script>var contextPath = "${pageContext.request.contextPath}";</script>
	<%-- <script src="${pageContext.request.contextPath}/js/expert/solo/expertList.js"></script> --%>
	<script src="${pageContext.request.contextPath}/app/diary/aseets/js/diaryWrite.js"></script>
</body>
</html>