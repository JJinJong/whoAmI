<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/app/management/CustomerCare/assets/css/MyReview.css" />
<body>
	<!-- Header -->
	<jsp:include page="/app/fix/managementHeader.jsp" />

	<section class="management_wrapper">
		<div class="management_header">
			<ul class="my">
				<li>
					리뷰 상세 내용
				</li>
				<li>
				<input type="button" value="목록"
					onclick="location.href = '/boardMVC/board/BoardListOk.bo'">
				</li>
			</ul>
		</div>
		<form action="" class="my">
			<p class="userWrite" style="margin-bottom: 14px;">리뷰</p>
			<div class="userProfile User">
				<span style="margin-right: 20px;">작성자:</span>
               <div class="userName ">공도윤</div>
            </div>
			
			 <span style="margin-right: 20px;">리뷰내용:</span>
			 <div class="contents MyReviewOriginal" id="MyReviewOr">
                   	<div class="comment">상담사님이 내 시간에 맞춰주시고 정말 친절하게 상담을 해주셔서 너무 고맙다 그리고 상담을 정말 잘하신다.</div>
             </div>
			
			
		</form>
		
	</section>
	
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="${pageContext.request.contextPath}/management/js/profileWrite.js"></script>
</html>