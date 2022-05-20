<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Setup_pw</title>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/User_Account/User_Account.css">
</head>



<body>
<c:set var="FindEmail" value="${param.FindEmail}"/>

		

   <div id="container">
      <div id="logo">
         <img id="top_logo" src="${pageContext.request.contextPath}/app/User_Account/img/logo.png" alt="이미지없음">
      </div>
   </div>
   <div id="content-main" class="content-main" role="main">
      <div class="container block-content text-center">
         <div class="row">
            <div class="col-sm-8 col-sm-offset-2">
               <h1>비밀번호 재설정하기</h1>
               <p>
                  새로운 비밀번호를 입력해주세요. ${FindEmail}
               </p>
            </div>
            <div class="col-sm-6 col-sm-offset-3">





               <form name="setupForm" method="post" action="${pageContext.request.contextPath}/user/ChangePwOK.user"
                  id="forgot-password-index" novalidate="novalidate">
                  <input type="hidden" name="FindEmail" value="${FindEmail}">
                  <div class="hidden ajax-spinner"></div>
                  <div id="form">
                     <div class="row">
                        <div class="col-md-12">
                           <div class="form-group">
                              <label class="control-label required" for="form_input">
                                 비밀번호  </label>
                            <input type="password" id="setupPw" name="setupPw"
                             class="form-control">
                              <label for="form_input">비밀번호를 입력하세요</label>
                           </div>
                        </div>
                     </div>
                     <div class="row">
                        <div class="col-md-12">
                           <div class="form-group">
                              <label class="control-label required" for="form_input">
                                 	비밀번호 재확인 </label>
                          <input type="password" id="setupPwCheck" name="setupPwCheck"
                                required="value" class="form-control">
                                            <label for="form_input">비밀번호를 다시 입력하세요</label>
                           </div>
                        </div>
                     </div>
                     <div class="row">
                        <div class="col-md-12">
                           <div class="form-group">
                              
                             <!--  <input type="hidden" id="captcha-hidden" name="captcha_hidden"
                                 class="required"> -->
                           </div>
                        </div>
                     </div>
                     <div class="row-buttons-bordered">
                        <button type="button" id="setup" name="setup"
                           class="btn btn-green" onclick="pwsend()">재설정하기</button>
                     </div>
                     <input type="hidden" id="form__token" name="form[_token]"
                        class="form-control"
                        value="eyJ0aW1lIjoxNjQ2MjgxMTA5LCJoYXNoIjoiZjQzNzBmZDMwNWViNTM5NzQ2NGRiZmUzY2Q4MWU5MTI1NThiZTAxOTY1OTAxNzdjMTUwNzAxNDhmNDc1YTNmMyJ9">
                  </div>
               </form>
               <p>
                  여전히 도움이 필요할 경우 <a id="password-link-support"
                     class="what-is-spotify" target="_blank" rel="noopener noreferrer"
                     href="">Who
                     am I ? 지원 부서</a>에 문의하세요.
               </p>
            </div>
         </div>
      </div>
   </div>
</body>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>var contextPath = "${pageContext.request.contextPath }";</script>
<script src="${pageContext.request.contextPath }/js/User_Account/pw_setup.js"></script>

</html>