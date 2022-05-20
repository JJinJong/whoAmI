<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/app/management/assets/css/main.css" />
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
<c:set var="managerId" value="${sessionScope.managerId}"/>
<!-- Wrapper -->
<!-- Wrapper -->
<div id="wrapper">

	<!-- Main -->
	<div id="main">
		<div class="inner">

			<!-- Header -->

		</div>
	</div>

	<div id="sidebar">
		<div class="inner">

			<!-- Search -->
			<section id="search" class="alt">
				<form method="post" action="#">
					<input type="text" name="query" id="query" placeholder="Search" />
				</form>
			</section>

			<!-- Menu -->
			<nav id="menu">
				<header class="major">
					<h2>Menu</h2>
				</header>
				<ul>
					<li><a href="index.html">메인 페이지</a></li>

					<!--로그인/회원가입  -->
					<li><span class="opener">로그인/회원가입</span>
						<ul>
							<c:choose>
								<c:when test="${managerNumber eq null}">
									<li><a
										href="${pageContext.request.contextPath }/admin/AdminLogin.mg">로그인</a></li>
									<li><a href="${pageContext.request.contextPath}/admin/AdminJoin.mg">회원가입</a></li>
								</c:when>

								<c:otherwise>
									<li>${managerId}님 환영합니다.</li>
									<li><a href="${pageContext.request.contextPath}/admin/AdminLogout.mg">로그아웃</a></li>
								</c:otherwise>
							</c:choose>
						</ul>
					</li>

					<li><a
						href="${pageContext.request.contextPath}/managerMbti/TestInfoListOk.ns">심리검사
							관리</a></li>

					<li><span class="opener">전문가 찾기</span>
						<ul>
							<li>
								<a href="${pageContext.request.contextPath}/expert/ManagerExpertListOk.me">
								전문가 상담 관리
								</a>
							</li>
						</ul></li>
					<li><span class="opener">고민/사연 관리</span>
						<ul>
							<li><a href="#" onclick="location.href='${pageContext.request.contextPath}/worry/WorryManagermentListOK.bo'">게시글 관리</a></li>
							<li><a href="${pageContext.request.contextPath}/app/management/worry/communityList.jsp">댓글 관리</a></li>
							<li><a href="#">전문가 댓글달기</a></li>
						</ul></li>
					<li><a
						href="${pageContext.request.contextPath}/app/management/diary/diary.jsp">감정일기
							관리</a></li>
					<li><span class="opener">나의 고객관리</span>
						<ul>
							<li><a
								href="${pageContext.request.contextPath}/app/management/CustomerCare/ReservationManagement.jsp">상담내역
									관리</a></li>
							<li><a
								href="${pageContext.request.contextPath}/app/management/CustomerCare/myRivewSee.jsp">상담리뷰
									관리</a></li>
						</ul></li>
					<li><span class="opener">공지 사항 및 쿠폰 관리</span>
						<ul>
							<li><a
								href="${pageContext.request.contextPath}/app/management/notice/noticeList.jsp">공지사항
									관리</a></li>
							<li><a
								href="${pageContext.request.contextPath}/app/management/coupon/couponList.jsp">쿠폰
									관리</a></li>
						</ul></li>
					<li><span class="opener">이용자 관리</span>
						<ul>
							<li><a
								href="${pageContext.request.contextPath}/app/management/admin/adminAdmintrator.jsp">관리자
									관리</a></li>
							<li><a
								href="${pageContext.request.contextPath}/app/management/admin/adminExpertr.jsp">전문가
									관리</a></li>
							<li><a
								href="${pageContext.request.contextPath}/app/management/admin/adminMember.jsp">회원
									관리</a></li>
						</ul></li>
				</ul>
			</nav>

			<!-- Section -->

			<!-- Footer -->
			<footer id="footer">
				<p class="copyright">&copy; The main page of the administrator.</p>
			</footer>

		</div>
	</div>

</div>

<!-- Scripts -->
<script
	src="${pageContext.request.contextPath}/app/management/assets/js/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/app/management/assets/js/browser.min.js"></script>
<script
	src="${pageContext.request.contextPath}/app/management/assets/js/breakpoints.min.js"></script>
<script
	src="${pageContext.request.contextPath}/app/management/assets/js/util.js"></script>
<script
	src="${pageContext.request.contextPath}/app/management/assets/js/main.js"></script>
