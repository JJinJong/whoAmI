<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>관리자 회원가입</title>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/User_Account/User_Account.css">
</head>

<body style="background-color: #999;">
	<div class="register">
		<p>관리자 회원가입</p>
		
		
		<form method="post" action="${pageContext.request.contextPath}/admin/AdminJoinOk.mg" name ="adminJoinForm">
			<div class="flex">
				<ul class="container">
					<li class="item center">이름</li>
					<li class="item"><input type="text" name="managerName" id="managerName" autofocus
						required value ></li>
					<li class="item"></li>
				</ul>
				<ul class="container">
				
					<li class="item center">아이디</li> 
					<li class="item"><input name="managerId" id="managerId" type="text" placeholder="아이디를 입력하세요."
						required required value></li>
					<!-- <li class="item">
                        <button class="idcheck">중복확인</button>
                    </li> -->
				</ul>
						<div id="result" style="font-size: 0.7em; margin-left:80px; margin-top:-7px;"></div>
				<ul class="container">
					<li class="item center">비밀번호</li>
					<li class="item">
					<input type="password" name="managerPw" id="managerPw" placeholder="비밀번호를 입력하세요." required value></li>
					<li class="item"></li>
				</ul>
				<!-- <ul class="container">
					<li class="item center">비밀번호 확인</li>
					<li class="item"><input type="password"
						placeholder="비밀번호를 입력하세요."></li>
					<li class="item"></li>
				</ul> -->
				<!-- <ul class="container">
                    <li class="item center">
                        생년월일
                    </li>
                    <li class="item">
                        <input type="date" required>
                    </li>
                    <li class="item">
                        
                    </li>
                </ul> -->
				<!-- <ul class="container">
                    <li class="item center">
                        성별
                    </li>
                    <li class="item">
                        <select name="gender" id="">
                            <option value="선택" selected>선택</option>
                            <option value="남성">남성</option>
                            <option value="여성">여성</option>
                        </select>
                    </li>
                    <li class="item">
                        
                    </li>
                </ul> -->
				<!-- <ul class="container">
                    <li class="item center">
                        전화번호
                    </li>
                    <li class="item">
                        <input type="text" placeholder="휴대전화번호">
                    </li>
                    <li class="item">
                        
                    </li>
                </ul> -->
				<hr style="margin-top: 14px;">
				<ul class="container">
					<li class="item center"></li>
		</form>
		<li class="item">
		
			<button type="button" class="submit" onclick="send()">
			가입하기
			</button>
		</li>
		<li class="item"></li>
		</ul>
	</div>
	</div>

</body>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>var contextPath = "${pageContext.request.contextPath }";</script>
<script src="${pageContext.request.contextPath }/js/management/adminJoin.js"></script>

</html>