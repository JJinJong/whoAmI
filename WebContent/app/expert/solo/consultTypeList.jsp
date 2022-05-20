<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상담 방식 선택창</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/expert/solo/expert.css">
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
</head>
<body>
	<c:set var="consults" value="${consults}" />
	<c:set var="profile" value="${profile}" />
	<c:set var="userStatus" value="${userStatus}"/>	
	
	<!-- Header -->
		<c:if test="${userStatus == 0 or userStatus == null}">
			<jsp:include page="/app/fix/header.jsp" />
		</c:if>
		<c:if test="${userStatus == 1}">
			<jsp:include page="/app/fix/headerExpert.jsp" />
		</c:if>/header.jsp" />


	<div class="consult_wrapper">
		<div class="consult_main_wrapper">
			<div class="consult_type_wrapper">

				<c:if test="${profile.getManagerconsultText() != null}">

					<!-- 채팅 -->
					<div class="conlut_type_wrapper2">
						<div class="consult_type_img">
							<img
								src="data:image/png;base64,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"
								alt="채팅">
							<div class="consult_type_content_wrapper">
								<div class="consult_type_content_title">${consults.get(0).getConsultType()}</div>
								<div class="consult_type_content">
									<span>채팅으로 언제 어디서든 상품을 이용할 수 있고 내용을 지속적으로 확인하고 싶으신 분</span>
								</div>
							</div>
						</div>

						<div class="consult_type_info_wrapper">

							<div class="consult_type_info">
								<div class="consult_type_info_content">
									<div class="consult_type_info_content1">${consults.get(0).getConsultRank()}급) 텍스트 테라피 1회기권</div>
									<div class="consult_type_info_content2">
										회기당 50분 ⨉ 1회 <br> 결제일로부터 2주간 유효
									</div>
									<div class="consult_type_info_content3">
										<div class="consult_type_info_pay1">${consults.get(0).getConsultPrice1()}</div>
										<div class="consult_type_info_pay2">${consults.get(0).getConsultSalePrice1()}</div>
									</div>
								</div>
							</div>

							<div class="consult_type_info">
								<div class="consult_type_info_content">
									<div class="consult_type_info_content1">${consults.get(0).getConsultRank()}급) 텍스트 테라피 4회기권</div>
									<div class="consult_type_info_content2">
										회기당 50분 ⨉ 4회 <br> 결제일로부터 6주간 유효
									</div>
									<div class="consult_type_info_content3">
										<div class="consult_type_info_pay1">${consults.get(0).getConsultPrice2()}</div>
										<div class="consult_type_info_pay2">${consults.get(0).getConsultSalePrice2()}</div>
									</div>
								</div>
							</div>
							<div class="consult_type_info">
								<div class="consult_type_info_content">
									<div class="consult_type_info_content1">${consults.get(0).getConsultRank()}급) 텍스트 테라피 8회기권</div>
									<div class="consult_type_info_content2">
										회기당 50분 ⨉ 8회 <br> 결제일로부터 12주간 유효
									</div>
									<div class="consult_type_info_content3">
										<div class="consult_type_info_pay1">${consults.get(0).getConsultPrice3()}</div>
										<div class="consult_type_info_pay2">${consults.get(0).getConsultSalePrice3()}</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:if>

				<c:if test="${profile.getManagerconsultVoice() != null}">
					<!-- 전화 -->
					<div class="conlut_type_wrapper2">
						<div class="consult_type_img">
							<img
								src="data:image/png;base64,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"
								alt="전화">
							<div class="consult_type_content_wrapper">
								<div class="consult_type_content_title">${consults.get(1).getConsultType()}</div>
								<div class="consult_type_content">
									<span>전화로 전문가와 즉각적인 소통을 하고 싶으신 분 </span>
								</div>
							</div>
						</div>

						<div class="consult_type_info_wrapper">
							<div class="consult_type_info">
								<div class="consult_type_info_content">
									<div class="consult_type_info_content1">${consults.get(1).getConsultRank()}급) 보이스 테라피 1회기권</div>
									<div class="consult_type_info_content2">
										회기당 50분 ⨉ 1회 <br> 결제일로부터 2주간 유효
									</div>
									<div class="consult_type_info_content3">
										<div class="consult_type_info_pay1">${consults.get(1).getConsultPrice1()}</div>
										<div class="consult_type_info_pay2">${consults.get(1).getConsultSalePrice1()}</div>
									</div>
								</div>
							</div>

							<div class="consult_type_info">
								<div class="consult_type_info_content">
									<div class="consult_type_info_content1">${consults.get(1).getConsultRank()}급) 보이스 테라피 4회기권</div>
									<div class="consult_type_info_content2">
										회기당 50분 ⨉ 4회 <br> 결제일로부터 6주간 유효
									</div>
									<div class="consult_type_info_content3">
										<div class="consult_type_info_pay1">${consults.get(1).getConsultPrice2()}</div>
										<div class="consult_type_info_pay2">${consults.get(1).getConsultSalePrice2()}</div>
									</div>
								</div>
							</div>
							<div class="consult_type_info">
								<div class="consult_type_info_content">
									<div class="consult_type_info_content1">${consults.get(1).getConsultRank()}급) 보이스 테라피 8회기권</div>
									<div class="consult_type_info_content2">
										회기당 50분 ⨉ 8회 <br> 결제일로부터 12주간 유효
									</div>
									<div class="consult_type_info_content3">
										<div class="consult_type_info_pay1">${consults.get(1).getConsultPrice3()}</div>
										<div class="consult_type_info_pay2">${consults.get(1).getConsultSalePrice3()}</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:if>

				<c:if test="${profile.getManagerconsultMeet() != null}">
					<!-- 대면 -->
					<div class="conlut_type_wrapper2">
						<div class="consult_type_img">
							<img
								src="data:image/png;base64,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"
								alt="대면">
							<div class="consult_type_content_wrapper">
								<div class="consult_type_content_title">대면 상담</div>
								<div class="consult_type_content">
									<span>오프라인 센터를 방문하여 넓고 쾌적한 최고급 시설에서 이용하고 싶으신 분</span>
								</div>
							</div>
						</div>

						<div class="consult_type_info_wrapper">
							<div class="consult_type_info_meet">
								<div class="consult_type_info_content">
									<div class="consult_type_info_content1">대면 상담 예약하기</div>
									<div class="consult_type_info_content2">
										심리상담 / 심리검사 및 평가 <br> 결과 해석상담 / 상담치료
									</div>
									<div class="consult_type_info_content3">
										<div class="consult_type_info_pay1">전화 걸기</div>
									</div>
								</div>
							</div>

							<div class="consult_type_info_meet">
								<div class="consult_type_info_content">
									<div class="consult_type_info_content1">심리케어센터 알아보기</div>
									<div class="consult_type_info_content2">
										연령대별 상담/검사/치료 프로그램 <br> 국내 최대 규모의 넓고 쾌적한 환경
									</div>
									<div class="consult_type_info_content3">
										<div class="consult_type_info_pay1">더 알아보기</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:if>

			</div>
			<form method="post"
				action="${pageContext.request.contextPath}/expert/ExpertPaymentOk.me"
				name="paymentForm">
				<input type="hidden" id="consultType" name="consultType"> 
				<input type="hidden" id="consultTitle" name="consultTitle"> 
				<input type="hidden" id="consultPrice" name=consultPrice> 
				<input type="hidden" id="consultSalePrice" name="consultSalePrice">
				<input type="hidden" id="userNumberExpert" name="userNumberExpert">
			</form>
			<div class="QnA_wrapper">
				<div class="QnA_wrapper_title">자주 묻는 질문</div>
				<div class="QnA_wrapper_content">
					<div class="QnA_wrapper_content1">
						<div id="content1" class="QnA_content1">
							<div class="QnA_content2">텍스트(채팅)와 보이스(전화), 어떤 차이가 있나요?</div>
							<img
								src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACwAAAAsCAYAAAAehFoBAAAAAXNSR0IArs4c6QAAAOpJREFUWAntlDEOAiEURBfttNaegmpPYUnJaen0FHbcwN4t14zZwhAgn4WEmMwv/w7DywvZaeLQAA3QAA3QAA3QAA3QAA38jYFjC6m19mKMOYcQ3pIe59xVa32S5lOdKrWU7AC7rusDWaXUzXv/Kp2rzee6DrkPFfsZ4ADKnfmBnXMZ6X63YVwQgTxTpiUZKSxyTcAoKAGVvuHsnmkGxqUpMOy3N45nkLSPTO10AcalMfQG0hUWnd2AURZBY9XNLMowXYFRiH/tsiz3b7ngd4fc8AE0bA8HIQAN0AAN0AAN0AAN0AAN0MBYAx+cyHKoQRYeDAAAAABJRU5ErkJggg=="
								alt="아래꺽쇠">
						</div>
						<div id="anwer1" class="QnA_content3">텍스트(채팅)와 보이스(전화)는 동일하게
							50분간 진행이 됩니다. 그러나 같은 시간 동안 심리상담/코칭이 진행되더라도 보이스(전화)의 경우, 텍스트(채팅)에
							비해서 훨씬 많은 양의 대화가 오고 가기 때문에 더 많은 내용이 심리상담/코칭에서 다뤄질 수 있습니다. 또한, 문자로
							주고받는 것에 비해서 비언어적인 측면들의 정보가 전달될 수 있어서 내용 전달에서 오해 발생 소지가 낮고 상담사/코치와
							더욱 빨리 친밀한 관계를 형성하는 데 도움이 됩니다. 그러나 보다 더 익명성이 보장되길 원하고, 음성을 통해 상담을
							진행하는 것이 어려우신 분들은 텍스트(채팅)가 더 효과적일 수 있습니다. 대화 시, 질문에 바로 대답하기가 어렵고
							생각이나 감정을 전달하는 데 시간이 필요하며 어느 정도 자신의 어려움에 대한 파악이 이루어지신 분들은 텍스트(채팅)의
							효과가 더 좋을 수도 있습니다.</div>
						<div class="line_shallow"></div>
					</div>
					<br>
					<div class="QnA_wrapper_content1">
						<div id="content2" class="QnA_content1">
							<div class="QnA_content2">심리상담과 코칭을 몇 번이나 받아야 하나요?</div>
							<img
								src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACwAAAAsCAYAAAAehFoBAAAAAXNSR0IArs4c6QAAAOpJREFUWAntlDEOAiEURBfttNaegmpPYUnJaen0FHbcwN4t14zZwhAgn4WEmMwv/w7DywvZaeLQAA3QAA3QAA3QAA3QAA38jYFjC6m19mKMOYcQ3pIe59xVa32S5lOdKrWU7AC7rusDWaXUzXv/Kp2rzee6DrkPFfsZ4ADKnfmBnXMZ6X63YVwQgTxTpiUZKSxyTcAoKAGVvuHsnmkGxqUpMOy3N45nkLSPTO10AcalMfQG0hUWnd2AURZBY9XNLMowXYFRiH/tsiz3b7ngd4fc8AE0bA8HIQAN0AAN0AAN0AAN0AAN0MBYAx+cyHKoQRYeDAAAAABJRU5ErkJggg=="
								alt="아래꺽쇠">
						</div>
						<div id="anwer2" class="QnA_content3">심리상담/코칭을 받고자 하는 주제나
							목적, 자신에 대한 통찰의 정도에 따라서 횟수와 기간이 달라질 수 있습니다. 심리상담은 예를 들어, 현재 경험하는
							어려움의 원인을 알고자 하는 측면이라면 1~4회기 내에서 해결될 수 있으나, 그러한 어려움을 해결하고 삶의 변화를
							원하는 측면이라면 8회기 이상의 상담이 필요할 수 있습니다. 코칭은 예를 들어, 목표를 달성하기 위한 현재 계획의
							적합성과 실행 단계의 수준에 따라 1-4회기 내에서 충분한 목적 달성이 이루어질 수도 있으나, 지속적인 전문성 축적과
							자기계발의 측면이라면 장기적인 계획과 관리가 이루어지는 8회기 이상의 코칭이 필요할 수 있습니다. 첫 심리상담/코칭
							시, 심리상담/코칭을 받고자 하는 목적 및 처한 환경, 겪고 있는 어려움의 수준 등에 대한 핵심 내용이
							상담사/코치에게 전달된 후에 자신에게 가장 적합한 심리상담/코칭 플랜과 기간을 확인하실 수 있습니다.</div>
						<div class="line_shallow"></div>
					</div>
					<br>
					<div class="QnA_wrapper_content1">
						<div id="content3" class="QnA_content1">
							<div class="QnA_content2">심리상담과 코칭은 얼마나 자주 받아야 하나요?</div>
							<img
								src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACwAAAAsCAYAAAAehFoBAAAAAXNSR0IArs4c6QAAAOpJREFUWAntlDEOAiEURBfttNaegmpPYUnJaen0FHbcwN4t14zZwhAgn4WEmMwv/w7DywvZaeLQAA3QAA3QAA3QAA3QAA38jYFjC6m19mKMOYcQ3pIe59xVa32S5lOdKrWU7AC7rusDWaXUzXv/Kp2rzee6DrkPFfsZ4ADKnfmBnXMZ6X63YVwQgTxTpiUZKSxyTcAoKAGVvuHsnmkGxqUpMOy3N45nkLSPTO10AcalMfQG0hUWnd2AURZBY9XNLMowXYFRiH/tsiz3b7ngd4fc8AE0bA8HIQAN0AAN0AAN0AAN0AAN0MBYAx+cyHKoQRYeDAAAAABJRU5ErkJggg=="
								alt="아래꺽쇠">
						</div>
						<div id="anwer3" class="QnA_content3">심리상담/코칭은 보통 주 1회 50분
							동안 진행됩니다. 심리상담/코칭 이후, 1주일 동안 스스로의 삶에 적용하며 적응하는 과정이 변화의 측면에서 필요하기
							때문에 심리상담/코칭 주기는 일반적으로 1주일의 간격을 두고 진행이 됩니다. 자신의 현재 상황과 심리상담/코칭의
							목적에 적합하지 않은 짧은 간격의 잦은 심리상담/코칭은 오히려 스스로의 자립에 방해가 될 수 있고, 상담사/코치에게
							의존하게 될 수도 있습니다. 단, 경험하는 어려움이 매우 크고 하루하루 일상을 보내는 것이 매우 힘들어서 심리상담을
							필요로 하는 경우나 또는 장기적인 전문 역량의 발전과 목표 달성을 위한 코칭이 필요한 경우처럼 자신의 문제, 목표,
							상황 등의 수준에 따라 상담사/코치와의 협의를 통해 주 2회 이상의 심리상담/코칭을 진행할 수 있습니다.</div>
						<div class="line_shallow"></div>
					</div>
					<br>
					<div class="QnA_wrapper_content1">
						<div id="content4" class="QnA_content1">
							<div class="QnA_content2">심리상담과 코칭, 어떤 차이가 있나요?</div>
							<img
								src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACwAAAAsCAYAAAAehFoBAAAAAXNSR0IArs4c6QAAAOpJREFUWAntlDEOAiEURBfttNaegmpPYUnJaen0FHbcwN4t14zZwhAgn4WEmMwv/w7DywvZaeLQAA3QAA3QAA3QAA3QAA38jYFjC6m19mKMOYcQ3pIe59xVa32S5lOdKrWU7AC7rusDWaXUzXv/Kp2rzee6DrkPFfsZ4ADKnfmBnXMZ6X63YVwQgTxTpiUZKSxyTcAoKAGVvuHsnmkGxqUpMOy3N45nkLSPTO10AcalMfQG0hUWnd2AURZBY9XNLMowXYFRiH/tsiz3b7ngd4fc8AE0bA8HIQAN0AAN0AAN0AAN0AAN0MBYAx+cyHKoQRYeDAAAAABJRU5ErkJggg=="
								alt="아래꺽쇠">
						</div>
						<div id="anwer4" class="QnA_content3">심리상담의 핵심은 상처받은 마음의
							치유입니다. 심리상담을 통해 자신의 과거와 현재를 탐색하며 아픔의 원인을 찾아 해결할 수 있습니다. 불안, 우울,
							스트레스, 트라우마 등 정신적 고통, 기능장애, 대인관계 갈등을 치유하며 현재와 미래의 삶을 개선할 수 있습니다.
							심리상담은 '원인탐색', '고통/증상 완화', '상황 개선', '마음 치유', '문제 해결'에 이르는 치유의
							과정입니다. 코칭의 핵심은 꿈, 목표, 성과의 달성입니다. 코칭을 통해 개인적, 전문적 성장을 하며 현재 자신이
							가지고 있는 강점과 역량을 최대한 이끌어낼 수 있습니다. 비즈니스, 성과, 관계, 가족, 진로 등의 영역에서 특정
							목표를 달성하기 위한 구체적 행동전략을 세우고 실천하며, 꿈을 이루기 위한 도움을 받을 수 있습니다. 코칭은 '목표
							수립', '행동 전략', '실행', '성취'에 초점을 맞춘 미래지향적 목표달성의 과정입니다.</div>
						<div class="line_shallow"></div>
					</div>
					<br>
					<div class="QnA_wrapper_content1">
						<div id="content5" class="QnA_content1">
							<div class="QnA_content2">그룹은 심리상담이나 코칭과 어떤 차이가 있나요?</div>
							<img
								src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACwAAAAsCAYAAAAehFoBAAAAAXNSR0IArs4c6QAAAOpJREFUWAntlDEOAiEURBfttNaegmpPYUnJaen0FHbcwN4t14zZwhAgn4WEmMwv/w7DywvZaeLQAA3QAA3QAA3QAA3QAA38jYFjC6m19mKMOYcQ3pIe59xVa32S5lOdKrWU7AC7rusDWaXUzXv/Kp2rzee6DrkPFfsZ4ADKnfmBnXMZ6X63YVwQgTxTpiUZKSxyTcAoKAGVvuHsnmkGxqUpMOy3N45nkLSPTO10AcalMfQG0hUWnd2AURZBY9XNLMowXYFRiH/tsiz3b7ngd4fc8AE0bA8HIQAN0AAN0AAN0AAN0AAN0MBYAx+cyHKoQRYeDAAAAABJRU5ErkJggg=="
								alt="아래꺽쇠">
						</div>
						<div id="anwer5" class="QnA_content3">심리상담/코칭은 전문가(상담사/코치)와의
							1:1 방식으로 진행됩니다. 이와 달리 그룹은 비슷한 고민을 가진 참가자들이 함께하며(4~10명), 그룹
							리더(상담사/코치)의 가이드에 따라 치유를 경험하고 목표를 달성하는 과정으로 진행됩니다. 그룹원들은 그룹에 참여하며
							서로의 관심사, 고민, 감정을 편안하게 이야기하고 수용받는 경험을 할 수 있습니다. 서로를 격려하고 도움을 주고받는
							과정 속에서 자신과 타인에 대한 이해를 증진시키고 자아존중감을 높일 수 있습니다. 그룹원들의 상호작용 속에서 타인에
							대한 바람직한 태도와 행동을 확인하고 문제해결에 필요한 적응적 기술과 대인관계 능력을 함양하여, 상처받은 마음을
							치유하고 목표에 도달하기 위한 능력을 키울 수 있습니다.</div>
						<div class="line_shallow"></div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- footer -->
	<jsp:include page="/app/fix/footer.jsp" />
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	var userNumberExpert = ${profile.getUserNumberExpert()}
</script>
<script
	src="${pageContext.request.contextPath}/js/expert/solo/consultTypeList.js"></script>
</html>