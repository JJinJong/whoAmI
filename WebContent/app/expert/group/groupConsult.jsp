<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8" />
<title>그룹디테일</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet" 	href="${pageContext.request.contextPath}/css/expert/group/groupConsult.css" />
</head>
<body>
	<div id="__next">
		<div class="Layout__LayoutWrapper-w6dyul-0 ddCubf">
			<!-- Header -->
			<jsp:include page="/app/fix/header.jsp" />
			<!-- content -->
			<div class="counselors__StyledCounselors-sc-6rdxuk-0 erRPPf">
				<div class="counselors__FilterWrapper-sc-6rdxuk-1 hEEjKX">
					<div class="counselors__CounselTypesDiv-sc-6rdxuk-2 fOTDxW">
						<div
							class="counselors__CounselorTypeWrapperDiv-sc-6rdxuk-8 fPSmBr">
							<div class="counselors__CounselorTypeDiv-sc-6rdxuk-7 fUhDCr">심리상담</div>
						</div>
						<div
							class="counselors__CounselorTypeWrapperDiv-sc-6rdxuk-8 fHZEnR">
							<div
								class="counselors__CounselorTypeDiv-sc-6rdxuk-7 fUhDCr selected">그룹</div>
						</div>
					</div>
					<div class="counselors__Filters-sc-6rdxuk-3 TWEiE">
						<img
							src="data:image/png;base64,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"
							class="counselors__FilterImg-sc-6rdxuk-4 dovAOW" />
					</div>
				</div>
				<div display="block" width="100%"
					class="_mobileHidden-dj5l14-0 gxWOWq">
					<div class="counselors__Line-sc-6rdxuk-5 ebDwuW"></div>
					<div class="counselors__Divider-sc-6rdxuk-6 RbebY"></div>
				</div>
				<div height="20" color="" class="_blank-sc-10grpd2-0 gZQbVb"></div>
				<div class="counselors__GroupListDiv-sc-6rdxuk-14 ioqDwp">
					<div class="Groups__GroupDiv-sc-165xw7p-2 URHOH">
						<div class="Groups__ImgWrapper-sc-165xw7p-0 bsOXap">
							<img
								src="http://atommerce.s3-ap-northeast-2.amazonaws.com/0f577a6061973fd18ea2c03980efd4b0611cafa9825b57c8f781e9fb85b86578.png"
								class="Groups__GroupImg-sc-165xw7p-7 eaEItQ" />
						</div>
						<div height="8" color="" class="_blank-sc-10grpd2-0 kkMAUr"></div>
						<div class="Groups__TitleTextDiv-sc-165xw7p-8 bYfoVU">우울을 위한
							감정 조절 테라피</div>
						<div class="Groups__InfoDiv-sc-165xw7p-5 hDDgCR">
							<div class="Groups__InfoTitleDiv-sc-165xw7p-6 igxNIx">3/12
								(토) 16:00~18:00</div>
						</div>
					</div>
					<div class="Groups__GroupDiv-sc-165xw7p-2 URHOH">
						<div class="Groups__ImgWrapper-sc-165xw7p-0 bsOXap">
							<img
								src="http://atommerce.s3-ap-northeast-2.amazonaws.com/5f8c632719c85799065a2b33de84ffbfb1e5c128f4405ff2f504df8c5ce1c09f.png"
								class="Groups__GroupImg-sc-165xw7p-7 eaEItQ" />
						</div>
						<div height="8" color="" class="_blank-sc-10grpd2-0 kkMAUr"></div>
						<div class="Groups__TitleTextDiv-sc-165xw7p-8 bYfoVU">자존감
							회복을 위한 독서치료 테라피</div>
						<div class="Groups__InfoDiv-sc-165xw7p-5 hDDgCR">
							<div class="Groups__InfoTitleDiv-sc-165xw7p-6 igxNIx">3/12
								(토) 19:00~21:00</div>
						</div>
					</div>
					<div class="Groups__GroupDiv-sc-165xw7p-2 URHOH">
						<div class="Groups__ImgWrapper-sc-165xw7p-0 bsOXap">
							<img
								src="http://atommerce.s3-ap-northeast-2.amazonaws.com/d36b8e70eb41e189e0c7ff2c2da426be15213d9a625cccfa2afb2fc1e4ae2aec.png"
								class="Groups__GroupImg-sc-165xw7p-7 eaEItQ" />
						</div>
						<div height="8" color="" class="_blank-sc-10grpd2-0 kkMAUr"></div>
						<div class="Groups__TitleTextDiv-sc-165xw7p-8 bYfoVU">그림검사로
							나의 스트레스 알아보기</div>
						<div class="Groups__InfoDiv-sc-165xw7p-5 hDDgCR">
							<div class="Groups__InfoTitleDiv-sc-165xw7p-6 igxNIx">3/16
								(수) 20:00~22:00</div>
						</div>
					</div>
					<div class="Groups__GroupDiv-sc-165xw7p-2 URHOH">
						<div class="Groups__ImgWrapper-sc-165xw7p-0 bsOXap">
							<img
								src="http://atommerce.s3-ap-northeast-2.amazonaws.com/4d7010251db3c243d2cac9b2a073e057d1b56d302d773952507c9426aa4a738d.png"
								class="Groups__GroupImg-sc-165xw7p-7 eaEItQ" />
						</div>
						<div height="8" color="" class="_blank-sc-10grpd2-0 kkMAUr"></div>
						<div class="Groups__TitleTextDiv-sc-165xw7p-8 bYfoVU">알아차림
							명상을 통한 감정 이해</div>
						<div class="Groups__InfoDiv-sc-165xw7p-5 hDDgCR">
							<div class="Groups__InfoTitleDiv-sc-165xw7p-6 igxNIx">3/17
								(목) 20:00~22:00</div>
						</div>
					</div>
					<div class="Groups__GroupDiv-sc-165xw7p-2 URHOH">
						<div class="Groups__ImgWrapper-sc-165xw7p-0 bsOXap">
							<img
								src="http://atommerce.s3-ap-northeast-2.amazonaws.com/cb55ce290030b46e3a11f8eef019b05bc64bf6e05fef71893ce3be54eb7eb9af.png"
								class="Groups__GroupImg-sc-165xw7p-7 eaEItQ" />
						</div>
						<div height="8" color="" class="_blank-sc-10grpd2-0 kkMAUr"></div>
						<div class="Groups__TitleTextDiv-sc-165xw7p-8 bYfoVU">주도적인
							삶을 위한 커리어 코칭</div>
						<div class="Groups__InfoDiv-sc-165xw7p-5 hDDgCR">
							<div class="Groups__InfoTitleDiv-sc-165xw7p-6 igxNIx">3/19
								(토) 14:00~16:00</div>
						</div>
					</div>

					<div class="Groups__GroupDiv-sc-165xw7p-2 URHOH">
						<div class="Groups__ImgWrapper-sc-165xw7p-0 bsOXap">
							<img
								src="http://atommerce.s3-ap-northeast-2.amazonaws.com/c29530e6c23f370c8cefa26a135daed32ce6128641ab4db4ffc9596d506f52c7.png"
								class="Groups__GroupImg-sc-165xw7p-7 eaEItQ" />
						</div>
						<div height="8" color="" class="_blank-sc-10grpd2-0 kkMAUr"></div>
						<div class="Groups__TitleTextDiv-sc-165xw7p-8 bYfoVU">연애고민
							즉문즉답</div>
						<div class="Groups__InfoDiv-sc-165xw7p-5 hDDgCR">
							<div class="Groups__InfoTitleDiv-sc-165xw7p-6 igxNIx">3/19
								(토) 17:00~19:00</div>
						</div>
					</div>

					<div class="Groups__GroupDiv-sc-165xw7p-2 URHOH">

						<div class="Groups__ImgWrapper-sc-165xw7p-0 bsOXap">
							<img
								src="http://atommerce.s3-ap-northeast-2.amazonaws.com/0c042deab909dd33d746aebdc674198491025e3be3aad40c32cb4d78129d310d.png"
								class="Groups__GroupImg-sc-165xw7p-7 eaEItQ" />
						</div>
						<div height="8" color="" class="_blank-sc-10grpd2-0 kkMAUr"></div>
						<div class="Groups__TitleTextDiv-sc-165xw7p-8 bYfoVU">욱하는
							성격을 다스리는 그룹 테라피</div>
						<div class="Groups__InfoDiv-sc-165xw7p-5 hDDgCR">
							<div class="Groups__InfoTitleDiv-sc-165xw7p-6 igxNIx">3/20
								(일) 16:00~18:00</div>
						</div>
					</div>

					<div class="Groups__GroupDiv-sc-165xw7p-2 URHOH">

						<div class="Groups__ImgWrapper-sc-165xw7p-0 bsOXap">
							<img
								src="http://atommerce.s3-ap-northeast-2.amazonaws.com/812f65989e4f412c95c098c3246288152945d1b25c17aebd29c41bc81f845149.png"
								class="Groups__GroupImg-sc-165xw7p-7 eaEItQ" />
						</div>
						<div height="8" color="" class="_blank-sc-10grpd2-0 kkMAUr"></div>
						<div class="Groups__TitleTextDiv-sc-165xw7p-8 bYfoVU">후회없는
							선택을 위한 의사결정 코칭</div>
						<div class="Groups__InfoDiv-sc-165xw7p-5 hDDgCR">
							<div class="Groups__InfoTitleDiv-sc-165xw7p-6 igxNIx">3/22
								(화) 20:00~22:00</div>
						</div>
					</div>

					<div class="Groups__GroupDiv-sc-165xw7p-2 URHOH">

						<div class="Groups__ImgWrapper-sc-165xw7p-0 bsOXap">
							<img
								src="http://atommerce.s3-ap-northeast-2.amazonaws.com/03a2ad2af346c1ded1d00125aff365f08ede1ae90954ca91e60a8947653b9424.png"
								class="Groups__GroupImg-sc-165xw7p-7 eaEItQ" />
						</div>
						<div height="8" color="" class="_blank-sc-10grpd2-0 kkMAUr"></div>
						<div class="Groups__TitleTextDiv-sc-165xw7p-8 bYfoVU">무기력의
							원인을 탐색하는 알아차림 명상</div>
						<div class="Groups__InfoDiv-sc-165xw7p-5 hDDgCR">
							<div class="Groups__InfoTitleDiv-sc-165xw7p-6 igxNIx">3/24
								(목) 20:00~22:00</div>
						</div>
					</div>

					<div class="Groups__GroupDiv-sc-165xw7p-2 URHOH">

						<div class="Groups__ImgWrapper-sc-165xw7p-0 bsOXap">
							<img
								src="http://atommerce.s3-ap-northeast-2.amazonaws.com/25b2baa1fae3a3b568a00d759c189c552143f77382fb50a1e69c6afafea8937b.png"
								class="Groups__GroupImg-sc-165xw7p-7 eaEItQ" />
						</div>
						<div height="8" color="" class="_blank-sc-10grpd2-0 kkMAUr"></div>
						<div class="Groups__TitleTextDiv-sc-165xw7p-8 bYfoVU">나의
							이성관계 패턴 알아보기</div>
						<div class="Groups__InfoDiv-sc-165xw7p-5 hDDgCR">
							<div class="Groups__InfoTitleDiv-sc-165xw7p-6 igxNIx">3/26
								(토) 16:00~18:00</div>
						</div>
					</div>

					<div class="Groups__GroupDiv-sc-165xw7p-2 URHOH">

						<div class="Groups__ImgWrapper-sc-165xw7p-0 bsOXap">
							<img
								src="http://atommerce.s3-ap-northeast-2.amazonaws.com/84879bacc64fa515156c1e0c4d448b6d52264f349ba329f3afe7f804c203bc61.png"
								class="Groups__GroupImg-sc-165xw7p-7 eaEItQ" />
						</div>
						<div height="8" color="" class="_blank-sc-10grpd2-0 kkMAUr"></div>
						<div class="Groups__TitleTextDiv-sc-165xw7p-8 bYfoVU">마인드컨트롤을
							위한 감정 조절 테라피</div>
						<div class="Groups__InfoDiv-sc-165xw7p-5 hDDgCR">
							<div class="Groups__InfoTitleDiv-sc-165xw7p-6 igxNIx">3/26
								(토) 19:00~21:00</div>
						</div>
					</div>

					<div class="Groups__GroupDiv-sc-165xw7p-2 URHOH">

						<div class="Groups__ImgWrapper-sc-165xw7p-0 bsOXap">
							<img
								src="http://atommerce.s3-ap-northeast-2.amazonaws.com/a8397f91207af9f3bb0956c11d1af10025f38161bb823910a385fee36597eb48.png"
								class="Groups__GroupImg-sc-165xw7p-7 eaEItQ" />
						</div>
						<div height="8" color="" class="_blank-sc-10grpd2-0 kkMAUr"></div>
						<div class="Groups__TitleTextDiv-sc-165xw7p-8 bYfoVU">몰랐던 나의
							강점 발견 코칭</div>
						<div class="Groups__InfoDiv-sc-165xw7p-5 hDDgCR">
							<div class="Groups__InfoTitleDiv-sc-165xw7p-6 igxNIx">3/29
								(화) 20:00~22:00</div>
						</div>
					</div>

				</div>
			</div>

			<jsp:include page="/app/fix/footer.jsp" />
		</div>
	</div>


</body>
</html>