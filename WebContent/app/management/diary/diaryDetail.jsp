<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE HTML>
<html>
	<head>
		<title>Untitled</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/expert/solo/expert.css">
	</head>
	<style>
		
		#main {
			width: 100%;
			margin-top: 10px;
			margin-left: -50px;			
		}
		section.main {
			margin-top: 0px;
		}
		#header {
			margin-top: -2rem;
		}

		hr.major {
			margin: 0px auto 20px;
			width: 100%;
			position: relative;
		}
		.ddBtns {
			font-size: 16px;
			font-family: Verdana, Geneva, Tahoma, sans-serif;
		}

		.ddcontent {
			color: black;
			padding-top: 5px;
			margin-left:30px;
			margin-bottom: 30px;
		}
		.ddBtns a {
			width: 20%;
			height: 40px;
			text-align: center;
			margin: 0 auto;
			margin-bottom: 20px;
		}
		p {
			display: block;
			margin-left: 10px;			
			padding-left: 20px;
		}
		.main > p {
			display: block;
			margin-left: 20px;
			padding-left: 20px;
		}
		.inner {
			margin: 10px auto;
			width: 90%;
		}
	</style>
	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Header -->
								<header id="header">
									<a href="" class="logo"><strong>감정일기 </strong>상세보기</a>
								</header>

							<!-- Content -->
								<section class="main">
									<p> 상세보기</p>
									<hr>
									<div class="ddcontent">
										1. 감정
										<p class="a1">기쁜</p>
										2. 원인
										<p class="a2">늦잠자서</p>
										3. 바라는 것
										<p class="a3">Donec eget ex magna.  </p>
										4. 상대에게 하고 싶은 말
										<p class="a4">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dapibus rutrum facilisis.</p>
										5. 상대에게 듣고 싶은 말
										<p class="a5">Donec eget ex magna. </p>
										6. 할 수 있는 일
										<p class="a6">Donec eget ex magna. </p>
										7. 자신에게 하고 싶은 말
										<p class="a7">Donec eget ex magna. </p>
										8. 감정의 변화
										<p class="a8">Donec eget ex magna. </p>
									</div>
									<hr class="major" />
									<div class="ddBtns">
										<a href="#" class="button small">삭제</a>
									</div>

								</section>

						</div>
					</div>

				<!-- Sidebar -->
				<jsp:include page="/app/fix/managementHeader.jsp" />	


			</div>


	</body>
</html>