<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>쿠폰</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/coupon/couponDetail.css">

</head>
<body>
	<div class="Layout__LayoutWrapper-w6dyul-0 ddCubf">
		<!-- Header -->
		<jsp:include page="/app/fix/header.jsp" />

		<div class="write__WriteWrapper-sc-4elezg-0 fCgOpG page">
			<div class="BackTitle__BackTitleWrapper-sc-13svaxc-3 kNfuaY">
				<div class="back">
					<svg stroke="currentColor" fill="currentColor" stroke-width="0"
						viewBox="0 0 24 24" height="1em" width="1em"
						wmlns="http://www.w3.org/2000/svg">
                        <path
							d="M21 11H6.83l3.58-3.59L9 6l-6 6 6 6 1.41-1.41L6.83 13H21z"></path>
                    </svg>
				</div>
				<div>
					<div class="top__title">
						<div class="BackTitle__TitleDiv-sc-13svaxc-1 goChkk title">쿠폰받기</div>
					</div>
				</div>
			</div>
			<div class="write card">

				<div class="main">
				<div class="imgTag">
					<div
						style="display: flex; text-align: center; justify-content: space-evenly;">
						<div class="files">
					사업자정보 파일
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
				</div>
				<br>
					<p>이름</p>
					<input type="text" > <br>

				</div>
				<div class="footer">
					<button type="button">쿠폰발급하기</button>
				</div>
			</div>
		</div>
	</div>

</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script
	src="${pageContext.request.contextPath}/management/js/profileWrite.js"></script>

</html>