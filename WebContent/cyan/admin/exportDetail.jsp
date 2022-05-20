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
		* {font-family: Verdana, Geneva, Tahoma, sans-serif;}
		
		#main {
			width: 100%;
			margin-top: 10px;
			margin-left: -50px;			
		}
		section.main {
			margin: 0px;
			width: 100%;
			margin-left: 5%;
		}
		#header {
			margin-top: -2rem;
		}

		hr.major, hr {
			margin: 0px auto 20px;
			width: 90%;
			position: relative;
		}
		.ddBtns {
			font-size: 16px;
			font-family: Verdana, Geneva, Tahoma, sans-serif;
			margin-left: 23%;
		}

		.ddcontent {
			color: black;
			padding-top: 5px;
			margin-left:20%;
			margin-bottom: 30px;
			width: 40%;
		}
		.ddBtns a {
			display: inline-block;
			width: 20%;
			height: 40px;
			position: relative;
			margin-bottom: 20px;
			margin-right: 5%;			
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
		.ddcontent textarea {
			width:100%;
			height: 48px;
			padding: 8.5px;
			padding-left: 15px;
			resize: none;
			margin: 5px 0;	 
			margin-bottom: 25px;			 
		}
		div.radio {
			margin: 10px auto;
			margin-bottom: 20px;			 
		}
		input {		
			display: inline-block;
			margin: 0 auto;
			text-align: center;
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
									<a href="" class="logo"><strong>관리자 </strong>상세보기</a>
								</header>

							<!-- Content -->
								<section class="main">
									<p> 상세보기</p>
									<hr>
									<div class="ddcontent">
										1. 이름
										<textarea class="a1">유정화</textarea>
										2. 소속
										<textarea class="a2">마포상담센터</textarea>
										3. 직책
										<textarea class="a3">전문 상담가</textarea>
										4. 아이디
										<textarea class="a4">yjh</textarea>
										5. 상담자격증
										<div class="radio">
										<!-- <form method="get" action=""> -->
											<input type="radio" name="level" value="최고관리자"><label>1급  </label>
											<input type="radio" name="level" value="중간관리자"><label>2급  </label>
											<input type="radio" name="level" value="일반관리자"><label>없음  </label>
										<!-- </form> -->
										</div>
										<!-- 6. 비밀번호
										<textarea class="a5">yjh1234</textarea> -->

									</div>
									<hr class="major" />
									<div class="ddBtns">
										<a href="#" class="button small">수정</a>
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