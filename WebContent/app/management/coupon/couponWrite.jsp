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
				<li>쿠폰발급</li>
				<li><input type="button" value="목록"
					onclick="location.href = '/boardMVC/board/BoardListOk.bo'">
				</li>
			</ul>
		</div>
		<form action="" class="my">
			<div
				style="display: flex; text-align: center; justify-content: space-evenly;">
				<div class="files">
					사업자정보 사진
					<div>
						<label for="board_file1" style="display: inline;"> <img
							id="board_file1Img"
							src="${pageContext.request.contextPath}/app/management/images/bin.png"
							width="50px" height="50px" style="display: inline;">
						</label>
					</div>
				
				</div>
			</div>
			<br>
			<p>이름</p>
			<input type="text"  >
			<br>
			<p>설명글</p>
			<textarea placeholder="간단한 문구를 작성해주세요" style="resize: none;" rows="5"></textarea>
			<br>

			
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