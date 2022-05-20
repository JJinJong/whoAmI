<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전문가 프로필 작성</title>
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
	
	
	<section class="management_wrapper_expert">
		<div class="management_header">
			<ul class="my">
				<li>
					프로필 작성
				</li>
				<li>
				<input type="button" value="목록"
					onclick="history.back()">
				</li>
			</ul>
		</div>
		<form method="post" action="${pageContext.request.contextPath}/expert/ExpertProfileWriteOk.me" name="writeForm" enctype="multipart/form-data" class="my update">
			<p>이름을 작성해주세요</p> 
			<input type="text" placeholder="이름을 작성해주세요" name="managerName" id="managerName"> 
			<br>
			<p>사진을 첨부해주세요</p>
			<div style="display:flex;">
	            <div class="files">
	               <div>
	                  <label for="board_file1" style="display:inline;">
	                     <img id="board_file1Img" src="${pageContext.request.contextPath}/images/expert/solo/첨부파일.png">
	                  </label>
	               </div>
	               <input id="board_file1" name="board_file1" type="file"/>
	               <input type="button" onclick="cancelFile('board_file1')" value="첨부 삭제"/>
	            </div>
			</div>
			<br>
			<span>간단한 자기 소개 문구를 작성해주세요</span><img onclick="explainPrint()" class="question_icon" src="${pageContext.request.contextPath}/images/expert/solo/물음표.png">
			<div class="explain_text">
				<pre class="explain_text_pre1">
<span>예시)</span>

삶이 버거울때 치유의 섬이 되어 드리겠습니다.</pre>
			</div>			
			<input type="text" name="managerIntroduce" id="managerIntroduce"/>
			<br>
			<span>심리 상담 급수를 선택해주세요</span>
				<div class="rank_select">
					<input type="radio" id="rank1" name="managerRank" value="1"> 
					<label for="rank1">1급</label>
					<input type="radio" id="rank2" name="managerRank" value="2"> 
					<label for="rank2">2급</label>
				</div>
			<br>
			<span>경력을 작성해주세요</span> <img onclick="explainPrint()" class="question_icon" src="${pageContext.request.contextPath}/images/expert/solo/물음표.png">
			<div class="explain_text">
				<pre class="explain_text_pre2">
<span>예시)</span>

전문상담사 2급 (한국상담학회)
사회복지사 1급(보건복지부)
정신건강증진상담사 2급 (한국정신건강상담사협의회)
가정폭력,성폭력 전문상담사(여성가족부)
협동적 결혼기술 부부대화법 지도자과정 수료
한국형애니어그램 역동적가족치료 교육과정 수료</pre>
			</div>
			<textarea rows="" cols="" name="managerCareer" id="managerCareer"></textarea>
			<br>
			<br>
			<span>학력을 작성해주세요</span> <img onclick="explainPrint()" class="question_icon" src="${pageContext.request.contextPath}/images/expert/solo/물음표.png">
			<div class="explain_text">
				<pre class="explain_text_pre3">
<span>예시)</span>

수원대학교 사회복지대학원 가족상담전공 석사졸업</pre>
			</div>
			<input type="text" name="managerDegree" id="managerDegree"/>
			<br>
			<br>
			<span>심리 상담을 망설이는 분에게 할말을 작성해주세요</span> <img onclick="explainPrint()" class="question_icon" src="${pageContext.request.contextPath}/images/expert/solo/물음표.png">
			<div class="explain_text">
				<pre class="explain_text_pre4">
<span>예시)</span>

심리상담을 받는 다면 마음이나 정신에 문제가 있을 경우에 
받는 것 아닌가?

상담사가 되기 전 저 역시 상담은 특별한 사람들이 받는 것이라고 
생각을 하였습니다.

혹 마음이 답답하여 친구에게 이야기를 해보았지만 그 때뿐이고 
마음만 답답한 적이 없으신가요?
타인과의 관계가 잘되지 않아 힘들어 본적이 없으신가요?
살아가면서 무엇인가에 답답함을 느껴지는 
순간 지금도 늦지 않습니다.
마음 편하게 클릭 해보세요.

여러분들의 답답함을 차분히 풀어 갈 수 있는 기회가 될 것입니다.
마음을 다해 여러분과 답답함을 나누어 드리겠습니다.</pre>
			</div>
			<textarea rows="" cols="" name="managerContent1" id="managerContnet1"></textarea>
			<br>
			<br>
			<span>상담사님과의 심리상담 효과를 작성해주세요</span> <img onclick="explainPrint()" class="question_icon" src="${pageContext.request.contextPath}/images/expert/solo/물음표.png">
			<div class="explain_text">
				<pre class="explain_text_pre5">
<span>예시)</span>

첫째, 내가 왜 이렇게 힘들고 고통스러운지 파악하고 
혼란스러운 생각과 마음을 정리할 수 있습니다.

둘째, 오랫동안 묵혀놓았던 혹은 너무 쌓여서 
터질 것 같은 감정을 해소하고 정화할 수 있습니다.
.
.
.
“선생님은 깊이있게 제 마음과 감정에 공감해주시면서도, 
정확한 피드백과 조언으로 제가 변화할 수 있게 도와주셨어요.” 
자살충동과 자해충동 때문에 틈틈이 비상약을 먹지 않으면 
생활할 수 없었던 내담자가 상담을 마치며 제게 한 말입니다.</pre>
			</div>			
			<textarea rows="" cols="" name="managerContent2" id="managerContnet2"></textarea>
			<br>
			<br>
			<span>상담사님의 심리상담 방식을 작성해주세요</span> <img onclick="explainPrint()" class="question_icon" src="${pageContext.request.contextPath}/images/expert/solo/물음표.png">
			<div class="explain_text">
				<pre class="explain_text_pre6">
<span>예시)</span>


보통의 상담의 진행방식은 다음과 같습니다.

1. 상담 초기 단계: 상담신청 동기와 증상 및 문제파악과 
목표를 설정합니다.

2. 상담 중기 단계: 억압된 감정표출과 함께 효과적인 해결방법 
모색을 위해 문제상황의 심리내적 어려움의 원인을 탐색하며 
대처방안을 스스로 찾아가도록 돕습니다.

3. 상담 종결 단계: 상담에서 깨닫고 배운 것을 실생활에 
적용해 보기도 하고 수정,보완하며 스스로 자생력을 
키울수 있도록 지지하고 돕습니다.
그리고 상담의 해결과제와 미해결과제를 점검하고 마무리 합니다.

모든 상담에는 일련의 '과정'이 필요합니다.</pre>
			</div>			
			<textarea rows="" cols="" name="managerContent3" id=""></textarea>
			<br>
			<br>
			<p>상담 방식을 선택해주세요</p>
				<input type="checkbox" id="managerconsultText" name="managerconsultText" value="채팅"/>
				<label for="managerconsultText"><span>채팅</span></label>
				<input type="checkbox" id="managerconsultVoice" name="managerconsultVoice" value="전화"/>
				<label for="managerconsultVoice"><span>전화</span></label>
				<input type="checkbox" id="managerconsultMeet" name="managerconsultMeet" value="대면"/>
				<label for="managerconsultMeet"><span>대면</span></label>
			<br>
			<div class="management_footer">
				<ul class="my">
					<li>
					<input type="button" value="완료" onclick='send()'/>
					</li>
				</ul>
			</div>
		</form>
	</section>
	
</body>
<script>
	var contextPath = "${pageContext.request.contextPath}";
</script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="${pageContext.request.contextPath}/js/expert/solo/expertProfileManagement.js"></script>
</html>