<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제창</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/expert/solo/expert.css" />
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>	
</head>
<body>
	<c:set var="consultType" value="${consultType}"/>
	<c:set var="consultTitle" value="${consultTitle}"/>
	<c:set var="consultPrice" value="${consultPrice}"/>
	<c:set var="consultSalePrice" value="${consultSalePrice}"/>
	<c:set var="user" value="${user}"/>
	<c:set var="userNumberExpert" value="${userNumberExpert}" />
	<c:set var="userStatus" value="${userStatus}"/>	
	<!-- Header -->
		<c:if test="${userStatus == 0 or userStatus == null}">
			<jsp:include page="/app/fix/header.jsp" />
		</c:if>
		<c:if test="${userStatus == 1}">
			<jsp:include page="/app/fix/headerExpert.jsp" />
		</c:if>

	<div class="payment_wrapper">
		<div class="payment_title_wrapper">
			<div class="payment_arrow" onclick="history.back()">
				<svg stroke="currentColor" fill="currentColor" stroke-width="0"
					viewBox="0 0 24 24" height="1em" width="1em"
					xmlns="http://www.w3.org/2000/svg">
					<path d="M21 11H6.83l3.58-3.59L9 6l-6 6 6 6 1.41-1.41L6.83 13H21z"></path></svg>
			</div>
			<div class="pament_title">${consultTitle}</div>
		</div>

		<div class="payment_content_wrapper">
			<div class="payment_content_header">
				<div class="payment_content_header_icon">
					<img alt="따옴표"
						src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxOCIgaGVpZ2h0PSIxOCIgdmlld0JveD0iMCAwIDE4IDE4Ij4KICA8cGF0aCBmaWxsPSIjMzMzIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik00LjAzNzM4MzE4LDguOTE4OTE4OTIgQzQuNTk4MTMzNjQsOC43NzQ3NzQwNSA1LjEzMDgzODYsOC43ODM3ODI5NyA1LjYzNTUxNDAyLDguOTQ1OTQ1OTUgQzYuMTQwMTg5NDQsOS4xMDgxMDg5MiA2LjU4ODc4MzA4LDkuMzUxMzQ5NzMgNi45ODEzMDg0MSw5LjY3NTY3NTY4IEM3LjM3MzgzMzc0LDEwLjAwMDAwMTYgNy42OTE1ODc1NywxMC4zOTYzOTQxIDcuOTM0NTc5NDQsMTAuODY0ODY0OSBDOC4xNzc1NzEzMSwxMS4zMzMzMzU3IDguMjk5MDY1NDIsMTEuODAxNzk5NSA4LjI5OTA2NTQyLDEyLjI3MDI3MDMgQzguMjk5MDY1NDIsMTMuMjA3MjExOSA3Ljk0MzkyODc5LDE0LjA2MzA1OTIgNy4yMzM2NDQ4NiwxNC44Mzc4Mzc4IEM2LjUyMzM2MDkzLDE1LjYxMjYxNjUgNS41ODg3OTA4NCwxNiA0LjQyOTkwNjU0LDE2IEMzLjAwOTMzODY5LDE2IDEuOTE1ODkxNjgsMTUuNTA0NTA5NSAxLjE0OTUzMjcxLDE0LjUxMzUxMzUgQzAuMzgzMTczNzM4LDEzLjUyMjUxNzYgMCwxMi4yODgyOTU3IDAsMTAuODEwODEwOCBDMCw4Ljc5Mjc4MjcgMC41NjA3NDIwNTYsNi45OTA5OTg5MiAxLjY4MjI0Mjk5LDUuNDA1NDA1NDEgQzIuODAzNzQzOTMsMy44MTk4MTE4OSA0LjQ2NzI3ODY5LDIuNjg0Njg4MTEgNi42NzI4OTcyLDIgTDcuNzM4MzE3NzYsMy40MDU0MDU0MSBDNi4zOTI1MTY2NCwzLjkwOTkxMjQzIDUuMzM2NDUyNDMsNC42MDM1OTkxOSA0LjU3MDA5MzQ2LDUuNDg2NDg2NDkgQzMuODAzNzM0NDksNi4zNjkzNzM3OCAzLjQyMDU2MDc1LDcuMzY5MzYzNzggMy40MjA1NjA3NSw4LjQ4NjQ4NjQ5IEMzLjQyMDU2MDc1LDguOTE4OTIxMDggMy42MjYxNjYxNyw5LjA2MzA2Mzc4IDQuMDM3MzgzMTgsOC45MTg5MTg5MiBaIE0xMy43MzgzMTc4LDguOTE4OTE4OTIgQzE0LjI5OTA2ODIsOC43NzQ3NzQwNSAxNC44NDExMTg5LDguNzgzNzgyOTcgMTUuMzY0NDg2LDguOTQ1OTQ1OTUgQzE1Ljg4Nzg1MzEsOS4xMDgxMDg5MiAxNi4zNDU3OTI0LDkuMzUxMzQ5NzMgMTYuNzM4MzE3OCw5LjY3NTY3NTY4IEMxNy4xMzA4NDMxLDEwLjAwMDAwMTYgMTcuNDM5MjUxMiwxMC4zOTYzOTQxIDE3LjY2MzU1MTQsMTAuODY0ODY0OSBDMTcuODg3ODUxNiwxMS4zMzMzMzU3IDE4LDExLjgwMTc5OTUgMTgsMTIuMjcwMjcwMyBDMTgsMTMuMjA3MjExOSAxNy42NDQ4NjM0LDE0LjA2MzA1OTIgMTYuOTM0NTc5NCwxNC44Mzc4Mzc4IEMxNi4yMjQyOTU1LDE1LjYxMjYxNjUgMTUuMjg5NzI1NCwxNiAxNC4xMzA4NDExLDE2IEMxMi43MTAyNzMzLDE2IDExLjYxNjgyNjMsMTUuNTA0NTA5NSAxMC44NTA0NjczLDE0LjUxMzUxMzUgQzEwLjA4NDEwODMsMTMuNTIyNTE3NiA5LjcwMDkzNDU4LDEyLjI4ODI5NTcgOS43MDA5MzQ1OCwxMC44MTA4MTA4IEM5LjcwMDkzNDU4LDguNzkyNzgyNyAxMC4yNjE2NzY2LDYuOTkwOTk4OTIgMTEuMzgzMTc3Niw1LjQwNTQwNTQxIEMxMi41MDQ2Nzg1LDMuODE5ODExODkgMTQuMTY4MjEzMywyLjY4NDY4ODExIDE2LjM3MzgzMTgsMiBMMTcuNDM5MjUyMywzLjQwNTQwNTQxIEMxNi4wOTM0NTEyLDMuOTA5OTEyNDMgMTUuMDM3Mzg3LDQuNjAzNTk5MTkgMTQuMjcxMDI4LDUuNDg2NDg2NDkgQzEzLjUwNDY2OTEsNi4zNjkzNzM3OCAxMy4xMjE0OTUzLDcuMzY5MzYzNzggMTMuMTIxNDk1Myw4LjQ4NjQ4NjQ5IEMxMy4xMjE0OTUzLDguOTE4OTIxMDggMTMuMzI3MTAwNyw5LjA2MzA2Mzc4IDEzLjczODMxNzgsOC45MTg5MTg5MiBaIi8+Cjwvc3ZnPgo=">
				</div>
				<div class="payment_content_header_text">1회기당 보이스 시간은 50분이며
					결제일로부터 12주간 사용할 수 있습니다</div>
			</div>

			<div class="payment_main_wrapper">
				<div class="payment_main_coupon_wrapper">
					<div class="payment_coupon_select_wrapper">
						<div class="payment_coupon_select_header">쿠폰 선택</div>
						<div class="payment_coupon_selected">
							사용 가능한 쿠폰이 없습니다
							<svg stroke="currentColor" fill="currentColor" stroke-width="0"
								viewBox="0 0 512 512" height="1em" width="1em"
								xmlns="http://www.w3.org/2000/svg">
								<path d="M128 192l128 128 128-128z"></path></svg>
						</div>
					</div>
					<div class="payment_coupon_regist_wrapper">
						<div class="payment_coupon_regist">
							<img alt="쿠폰 아이콘"
								src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iMTgiIGhlaWdodD0iMTgiIHZpZXdCb3g9IjAgMCAxOCAxOCI+CiAgPGRlZnM+CiAgICA8cGF0aCBpZD0iaWNfY291cG9uLWEiIGQ9Ik0xNi41LDYuNjY2NjY2NjcgTDE2LjUsNC4zMzMzMzMzMyBDMTYuNSwzLjkwMzc3ODUzIDE2LjE2NDIxMzYsMy41NTU1NTU1NiAxNS43NSwzLjU1NTU1NTU2IEwyLjI1LDMuNTU1NTU1NTYgQzEuODM1Nzg2NDQsMy41NTU1NTU1NiAxLjUsMy45MDM3Nzg1MyAxLjUsNC4zMzMzMzMzMyBMMS41LDYuNjY2NjY2NjcgTDE2LjUsNi42NjY2NjY2NyBaIE0xNi41LDguMjIyMjIyMjIgTDEuNSw4LjIyMjIyMjIyIEwxLjUsMTMuNjY2NjY2NyBDMS41LDE0LjA5NjIyMTUgMS44MzU3ODY0NCwxNC40NDQ0NDQ0IDIuMjUsMTQuNDQ0NDQ0NCBMMTUuNzUsMTQuNDQ0NDQ0NCBDMTYuMTY0MjEzNiwxNC40NDQ0NDQ0IDE2LjUsMTQuMDk2MjIxNSAxNi41LDEzLjY2NjY2NjcgTDE2LjUsOC4yMjIyMjIyMiBaIE0yLjI1LDIgTDE1Ljc1LDIgQzE2Ljk5MjY0MDcsMiAxOCwzLjA0NDY2ODkyIDE4LDQuMzMzMzMzMzMgTDE4LDEzLjY2NjY2NjcgQzE4LDE0Ljk1NTMzMTEgMTYuOTkyNjQwNywxNiAxNS43NSwxNiBMMi4yNSwxNiBDMS4wMDczNTkzMSwxNiAxLjY2NTMzNDU0ZS0xNiwxNC45NTUzMzExIDAsMTMuNjY2NjY2NyBMMCw0LjMzMzMzMzMzIEMtMS42NjUzMzQ1NGUtMTYsMy4wNDQ2Njg5MiAxLjAwNzM1OTMxLDIgMi4yNSwyIFoiLz4KICA8L2RlZnM+CiAgPHVzZSBmaWxsPSIjNzc3IiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIHhsaW5rOmhyZWY9IiNpY19jb3Vwb24tYSIvPgo8L3N2Zz4K">
							쿠폰 등록하기
						</div>
					</div>
				</div>

				<div class="payment_main_price_wrapper">
					<div>
						<div class="payment_main_price_header">최종 결제 금액</div>
						<div class="payment_main_price">
							<div class="payment_original_price">
								<div>정상가</div>
								<div>${consultSalePrice}</div>
							</div>
							<div class="payment_discount_price">
								<div>즉시 할인</div>
								<div class="payment_difference"></div>
							</div>
							<div class="payment_discount">
								<div>쿠폰 할인</div>
								<div>0원</div>
							</div>
							<div class="payment_realPrice">
								<div>결제 예정 금액</div>
								<div>${consultPrice}</div>
							</div>
						</div>
					</div>
				</div>

				<div class="payment_method_wrapper">
					<div>
						<div class="payment_method_header">결제 수단 선택</div>
						<div class="payment_method">
							<div class="payment_method_select">
								휴대폰 결제
								<svg stroke="currentColor" fill="currentColor" stroke-width="0"
									viewBox="0 0 512 512" height="1em" width="1em"
									xmlns="http://www.w3.org/2000/svg">
									<path d="M128 192l128 128 128-128z"></path></svg>
							</div>
							
							<div class="payment_method_select_hidden_wrapper1">
							</div>
						</div>
					</div>
				</div>
			</div>
			<form method="post" action="${pageContext.request.contextPath}/expert/ExpertPaymentListOk.me" name="paymentForm">
				<input type="hidden" name="consultSalePrice" value="${consultSalePrice}">
				<input type="hidden" name="consultPrice" value="${consultPrice}">
				<input type="hidden" name="userNumberExpert" value="${userNumberExpert}">
				<input type="hidden" name="consultTitle" value="${consultTitle}">
				<input type="hidden" name="consultType" value="${consultType}">
			</form>
			<div class="payment_content_footer">
				<div id="check_module" class="payment_footer_action">이용권 결제하기</div>
			</div>
		</div>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script>
var consultSalePrice = "${consultSalePrice}";
var consultPrice = "${consultPrice}";
var consultTitle = "${consultTitle}";
var consultType = "${consultType}";
var userName = "${user.getUserName()}";
var userEmail = "${user.getUserEmail()}";
var userAddress = "${user.getUserAddress()}";
var userHP = "${user.getUserHP()}";
</script>
<script src="${pageContext.request.contextPath}/js/expert/solo/expertPayment.js"></script>
</html>