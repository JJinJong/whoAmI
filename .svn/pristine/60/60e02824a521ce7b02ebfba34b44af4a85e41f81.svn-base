<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전문가 결제 footer</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/expert/solo/expert.css" />
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
</head>
<body>
<body>
	<div class="expert_footer">
        <div class="expert_footer_wrapper">
            <div class="footer">
            <c:if test="${price != 0}">
                <div>
                    1회기 최저 <strong>${price}</strong>원<span>(8회기권)</span>
                </div>
            </c:if>
                <button class="expert_footer_click" onclick="send()">
                    	선택하기
                </button>
            </div>
        </div>
	</div>
</body>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
var managerProfileNumber = ${profile.getManagerProfileNumber()}
</script>
<script src="${pageContext.request.contextPath}/js/expert/solo/profileFooter.js"></script>
</html>