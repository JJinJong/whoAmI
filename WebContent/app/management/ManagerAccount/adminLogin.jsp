<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>관리자 로그인</title>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/css/User_Account/adminLogin.css">
</head>

<body>
   <c:if test="${not empty param.code}">
      <script>
         alert("아이디 또는 비밀번호를 다시 확인하세요");
      </script>
   </c:if>
   <div class="wrap">
      <div class="position">
         <div class="form-wrap">
            <div class="button-wrap">
               <div id="btn"></div>
               <div class="Text">관리자 로그인</div>
            </div>
            <div style="margin-left:50px">
            <form method="post" action="${pageContext.request.contextPath}/admin/AdminLoginOk.mg" name="adminLoginForm" class="input-group">
               <input type="text" name="managerId" id="managerId" class="input-field" placeholder="아이디 입력" required> 
               <input type="password" name="managerPw" id="managerPw"  class="input-field" placeholder="비밀번호 입력" required> 
                  <!-- <input type="checkbox" class="checkbox"><span>Remember Password</span> -->
            </form>
            </div>
               <button type="button" onclick="send()" class="submit">로그인</button>
            <span class="FormDivider__LineThrough-sc-1mk5332-0 dHVBa-D">
                </span>
            <button type="button" onclick="location.href='${pageContext.request.contextPath}/admin/AdminJoin.mg'" class="submit_bottom">회원가입</button>
         </div>
      </div>
   </div>
</body>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
   <script>var contextPath = "${pageContext.request.contextPath }";</script>
   <script src="${pageContext.request.contextPath }/js/management/adminLogin.js"></script> 
</html>