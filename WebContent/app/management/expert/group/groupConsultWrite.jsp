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
			<p>이름을 작성해주세요</p>
			<input type="text" placeholder="이름을 작성해주세요"> <br>

			<div
				style="display: flex; text-align: center; justify-content: space-evenly;">
				<div class="files">
					썸네일사진추가
					<div>
						<label for="board_file1" style="display: inline;"> <img
							id="board_file1Img"
							src="${pageContext.request.contextPath}/app/management/images/filePlus.png"
							width="50px" height="50px" style="display: inline;">
						</label>
					</div>
					<input id="board_file1" name="board_file1" type="file"> <input
						type="button" onclick="cancelFile('board_file1')" value="첨부 삭제">
				</div>
				<div class="files">
					내용포스터추가
					<div>
						<label for="board_file2" style="display: inline;"> <img
							id="board_file2Img"
							src="${pageContext.request.contextPath}/app/management/images/filePlus.png"
							width="50px" height="50px" style="display: inline;">
						</label>
					</div>
					<input id="board_file2" name="board_file2" type="file"> <input
						type="button" onclick="cancelFile('board_file2')" value="첨부 삭제">
				</div>
				<div class="files">
					프로필사진추가
					<div>
						<label for="board_file3" style="display: inline;"> <img
							id="board_file3Img"
							src="${pageContext.request.contextPath}/app/management/images/filePlus.png"
							width="50px" height="50px" style="display: inline;">
						</label>
					</div>
					<input id="board_file3" name="board_file3" type="file"> <input
						type="button" onclick="cancelFile('board_file3')" value="첨부 삭제">
				</div>
			</div>
			<br>
			<p>간단한 자기 소개 문구 또는 심리 상담을 망설이는 분에게 할말을 작성해주세요</p>
			<textarea placeholder="간단한 문구" style="resize: none;" rows="5"></textarea>
			<br>

			<p>상담제목</p>
			<input type="text"  placeholder="제목을 입력해주세요">
			<br>
			<p>참여인원</p>
			<input type="text" placeholder="참여인원을 입력해주세요">
			<br>
			<p>진행일정</p>
			<input type="text" placeholder="진행일정 입력해주세요">
			<br>
			<p>가격</p>
			<input type="text" placeholder="가격을 입력해주세요"> <br>

			
			<div class="management_footer">
				<ul class="my">
					<li><input type="button" value="완료"
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