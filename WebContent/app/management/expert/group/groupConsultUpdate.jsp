<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/app/management/assets/css/groupConsult.css">
<body>
	<!-- Header -->
	<jsp:include page="/app/fix/managementHeader.jsp" />

	<section class="management_wrapper">
		<div class="management_header">
			<ul class="my">
				<li>그룹상담 작성</li>
				<li><input type="button" value="목록"
					onclick="location.href = ">
				</li>
			</ul>
		</div>
		<form action="" class="my">
		
			<div
				style="display: flex; text-align: center; justify-content: space-evenly;">
				<div class="files">
					썸네일사진
					<div>
						<label for="board_file1" style="display: inline;"> <img
							id="board_file1Img"
							src="http://atommerce.s3-ap-northeast-2.amazonaws.com/0f577a6061973fd18ea2c03980efd4b0611cafa9825b57c8f781e9fb85b86578.png"
							width="50px" height="50px" style="display: inline; width: 122px; height: 180px">
						</label>
					</div>
					<input id="board_file1" name="board_file1" type="file"> <input
						type="button" onclick="cancelFile('board_file1')" value="첨부 삭제">
				</div>
				<div class="files">
					내용포스터
					<div>
						<label for="board_file2" style="display: inline;"> <img
							id="board_file2Img"
							src="http://atommerce.s3-ap-northeast-2.amazonaws.com/110eac8881464137f3861ffb8eb9c8a677821d779edcbbed7010836ba0c82db2.png"
							width="50px" height="50px" style="display: inline; width: 122px; height: 180px">
						</label>
					</div>
					<input id="board_file2" name="board_file2" type="file"> <input
						type="button" onclick="cancelFile('board_file2')" value="첨부 삭제">
				</div>
				<div class="files">
					프로필사진
					<div>
						<label for="board_file3" style="display: inline;"> <img
							id="board_file3Img"
							src="http://atommerce.s3-ap-northeast-2.amazonaws.com/ce6a4f461b05109f8309a09879505d083e885cfb5b4dd2c5c95a06479d9e1faf.JPG"
							width="50px" height="50px" style="display: inline;width: 122px; height: 180px">
						</label>
					</div>
					<input id="board_file3" name="board_file3" type="file"> <input
						type="button" onclick="cancelFile('board_file3')" value="첨부 삭제">
				</div>
			</div>
			<br>
			<p>간단한 자기 소개 문구 또는 심리 상담을 망설이는 분에게 할말을 작성해주세요</p>
			<textarea placeholder="간단한 문구를 작성해주세요" style="resize: none;" rows="5">마음 훈련을 통해 아픔을 회복하고 홀가분한 삶을 경험할 수 있도록 당신과 함께 하겠습니다</textarea>
			<br>

			<p>상담제목</p>
			<input type="text"  placeholder="제목을 입력해주세요" value="우울을 위한 감정 조절 테라피">
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