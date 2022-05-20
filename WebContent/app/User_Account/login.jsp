<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>로그인</title>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/User_Account/User_Login.css">
</head>

<body>

	<c:if test="${not empty param.code}">
		<script> 
		alert("이메일 또는 비밀번호를 다시 확인하세요."); 
		</script>
	</c:if>

	<div class="encore-light-theme" style="background-color: #f5f6f7">
		<div class="indexpage__Signup-zyim1e-0 cUBnIY">
			<div class="Header__Container-nt28l4-0 cLyTtM">
				<a class="Header__LogoContainer-nt28l4-2 lXGct"> <img
					src="${pageContext.request.contextPath}/app/User_Account/img/logo.png"
					alt="이미지없음">
				</a>
				<h4
					class="Type__TypeElement-goli3j-0 kCSAnu Header__Title-nt28l4-1 bkLUvq">
					Who am I 에 로그인하세요.</h4>
			</div>
			<form method="post"
				action="${pageContext.request.contextPath }/user/UserLoginOk.user"
				name="loginForm">
				<div data-testid="login-form">
					<div class="Group-u9bcx5-0 UXQuB sc-kDTinF eCeSZs">
						<div class="LabelGroup-sc-1ibddrg-0 dUvQaU">
							<label for="login-username" class="Label-sc-1c0cv3r-0 jhxAUN">이메일
								주소</label>
						</div>
						<input type="text" name="userEmail" id="userEmail" type="text"
							placeholder="이메일 주소 " class="iFfIqr" />
					</div>
					<div class="Group-u9bcx5-0 UXQuB sc-kDTinF eCeSZs">
						<div class="LabelGroup-sc-1ibddrg-0 dUvQaU">
							<label for="login-password" class="jhxAUN">비밀번호</label>
						</div>
						<input name="userPw" id="userPw" type="password"
							placeholder="비밀번호" class=" iFfIqr" />
					</div>
					<a onclick="location.href='${pageContext.request.contextPath}/user/FindPw.user'"
					id="reset-password-link" data-testid="reset-password-link"
						class="Link-k8gsk-0 dvVOBw" style="cursor:pointer">비밀번호를 잊었나요?</a>
					<div class="sc-iqseJM kwIxbD">
						<div class="Group-u9bcx5-0 UXQuB sc-kDTinF eCeSZs">
							<div class="Checkbox-svpvf6-0 gJoDne">
								<input type="checkbox" id="login-remember" name="remember"
									data-testid="login-remember"
									class="VisuallyHidden-sc-17bibe8-0 gbnvEH" checked="">
								<label for="login-remember" class="Label-cpoq-0 iXswkd">
									<span class="Indicator-sc-1airx73-0 kHTWAk"
									style="border: 1px solid"></span> <span
									class="TextForLabel-sc-1jqya9m-0 bcyFQV">
										<p class="Type__TypeElement-goli3j-0 VNztd sc-furwcr jOnzgW">내
											정보 기억하기</p>
								</span>
								</label>
							
							</div>
						</div>
			</form>
			<div class="sc-crHmcD cRLnkK">
				<button type="button" id="login-button" data-testid="login-button"
					class="frUdWl">
					<div onclick="send()"
						class="ButtonInner-sc-14ud5tc-0 lbsIMA encore-bright-accent-set">
						<p class="Type__TypeElement-goli3j-0 dmuHFl sc-dkPtRN giKhHg">로그인하기</p>
					</div>
					<div class="ButtonFocus-sc-2hq6ey-0 eiuQDg"></div>
				</button>
			</div>
		</div>
	</div>
	
	<span class="FormDivider__LineThrough-sc-1mk5332-0 dHVBa-D"> 또는
	</span>
	
	<a href="#0" id="kakaoLogin"><img src="https://www.gb.go.kr/Main/Images/ko/member/certi_kakao_login.png"
		 alt="이미지 없음" style="height:60px; margin:auto; display:block;" ></a>

	<div id="sign-up-section" data-testid="signup-section">
		<p class="Type__TypeElement-goli3j-0 izDpgk sc-iCfMLu dPyJUA">계정이
			없나요?</p>
		<button id="sign-up-link" data-testid="signup-btn-link"
			class="Button-y0gtbx-0 hpTULc"
			onclick="location.href='${pageContext.request.contextPath }/user/Join.user'">
			<p class="Type__TypeElement-goli3j-0 cWkmRE sc-dkPtRN giKhHg">Who
				am I 가입하기</p>
		</button>
	</div>
</body>

<script src="${pageContext.request.contextPath }/js/User_Account/login.js"></script>
<script>var contextPath = "${pageContext.request.contextPath }";</script>

<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
        function saveToDos(token) { //item을 localStorage에 저장합니다. 
            typeof(Storage) !== 'undefined' && sessionStorage.setItem('AccessKEY', JSON.stringify(token)); 
        };

        window.Kakao.init('ae874377d2b476d04a628d10feab5f88');
        
        function kakaoLogin() {
            window.Kakao.Auth.login({
                scope: 'profile_nickname, account_email', //동의항목 페이지에 있는 개인정보 보호 테이블의 활성화된 ID값을 넣습니다.
                success: function(response) {
                    saveToDos(response.access_token)  // 로그인 성공하면 사용자 엑세스 토큰 sessionStorage에 저장
                    window.Kakao.API.request({ // 사용자 정보 가져오기 
                        url: '/v2/user/me',
                        success: (res) => {
                            const kakao_account = res.kakao_account;
                            console.log(kakao_account);
                            alert('로그인 성공');
                            window.location.href='${pageContext.request.contextPath}/user/UserJoin.user?kakaoEmail=' + kakao_account.email;
                        }
   });
                },
                fail: function(error) {
                    console.log(error);
                }
            });
        };

        const login = document.querySelector('#kakaoLogin');
        login.addEventListener('click', kakaoLogin);
    </script>

</html>