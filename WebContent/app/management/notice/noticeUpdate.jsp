<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지 사항 수정</title>
</head>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/app/management/assets/css/groupConsult.css">
<body>
	<!-- Header -->
	<jsp:include page="/app/fix/managementHeader.jsp" />

	<section class="management_wrapper">
		<div class="management_header">
			<ul class="my">
				<li>공지사항 수정</li>
				<li><input type="button" value="목록"
					onclick="location.href = ">
				</li>
			</ul>
		</div>
		<form action="" class="my">
		
			<p>상담제목</p>
			<input type="text"  placeholder="제목을 입력해주세요" value="우울을 위한 감정 조절 테라피">
			<br>
			
			<p>간단한 자기 소개 문구 또는 심리 상담을 망설이는 분에게 할말을 작성해주세요</p>
			<textarea placeholder="간단한 문구를 작성해주세요" style="resize: none;" rows="5">마음 훈련을 통해 아픔을 회복하고 홀가분한 삶을 경험할 수 있도록 당신과 함께 하겠습니다</textarea>
			<br>

			<p>참여인원</p>
			<input type="text" placeholder="참여인원을 입력해주세요"value=" 4명 ~ 최대 8명">
			<br>
			<p>진행일정</p>
			<input type="text" placeholder="진행일정 입력해주세요"value="3/12 (토) 16:00 ~ 18:00">
			<br>
			<p>가격</p>
			<input type="text" placeholder="가격을 입력해주세요"value="59,000 "> <br>
	
			<div class="management_footer">
				<ul class="my">
					<li><input type="button" value="수정하기"
						onclick="location.href = '/boardMVC/board/BoardListOk.bo'">
					</li>
					<li><input type="button" value="취소"
						onclick="location.href = '/boardMVC/board/BoardListOk.bo'">
					</li>
				</ul>
			</div>
		</form>

	</section>

</body>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script
	src="${pageContext.request.contextPath}/management/js/profileWrite.js"></script>
</html>
</body>
</html>