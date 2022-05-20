<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>footer 카피라이트 부분</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/app/fix/header.css" />
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
</head>
<body>
<c:set var="userStatus" value="${userStatus}"/>
		<div class="modal_back">
			<div class="modal">
				<div class="modal_content" title="클릭하면 창이 닫힙니다.">
				<span>취소</span>
				<br>
				<br>
						코드를 입력하세요
						<form action="">
							<input id="join_code" type="text">
						</form>
						<br>
						<input class="code_btn" type="button" value="확인" onclick="expertJoinSend()">
				</div>
			</div>
		</div>
		
	<footer class="footer_wrapper_footer">
        <section class="footer_copyright_wrapper_wrapper">
            <div class="footer_info_main">
                <div class="footer_nav">
                    <a class="footer_nav_clause" href="${pageContext.request.contextPath}/app/termsOfuse/termsOfuse.jsp">이용 약관</a>
                    <div class="footer_columbar">|</div>
                    <a class="footer_nav_priateInfo" href="${pageContext.request.contextPath}/app/termsOfuse/private.jsp">개인정보 취급방침</a>
                    <div class="footer_columbar">|</div>
                    <a class="footer_nav_alarm">WhoAmI 이야기(공지사항)</a>
                </div>
                <div class="footer_companyInfo">
                    <div class="footer_companyInfo_content_wrapper">
                        <span class="footer_companyInfo_content">
                            사업자등록번호
                            <span>
                            123-4567-8910    
                            </span>
                        </span>
                        <div class="footer_columbar">|</div>
                        
                        <span class="footer_companyInfo_content">
                            통신판매업신고
                            <span>
                     whoAmI프로젝트
                            </span>
                        </span>
                        <div class="footer_columbar">|</div>
        
                        <span class="footer_companyInfo_content">
                            대표
                            <span>
                            홍길동 
                            </span>
                        </span>
                        <div class="footer_columbar">|</div>
                        <span class="footer_companyInfo_content">
                            주소
                            <span>
                            홍길동역 3번 출구  호부호형사무실
                            </span>
                        </span>
                        <div style="width: 100%; margin-bottom: 3px;"></div>
                        <span class="footer_companyInfo_content">
                            대표번호
                            <span>
                            123-4567-8910  
                            </span>
                        </span>
                        <div class="footer_columbar">|</div>
                        <span class="footer_companyInfo_content">
                            이메일
                            <span>
                            whoamI@naver.com    
                            </span>
                        </span>
                        <div class="footer_columbar">|</div>
                        <span class="footer_companyInfo_content">
                            운영시간 : 평일 9시~16시, 휴무시간 : 11:50~13:00시, 주말 및 공휴일
                        </span>
                        <div style="width: 100%; margin-bottom: 3px;"></div>
                        <div class="footer_SNSList">
                            WAI주식회사
                        </div>
                    </div>
                    </div>
            </div>
            <article>
                <div class="footer_app">
                    <div class="footer_app_img">
                        <img src="${pageContext.request.contextPath}/images/expert/solo/로고대두.png" alt="">
                        <div class="footer_app_content">
                            <div class="footer_app_content_title">WhoAmI</div>
                            <div class="footer_app_content_detail">심리상담&마음 치유 플랫폼</div>
                        </div>
                    </div>
                    <div class="footer_app_link">
                        <a href="#" >
                            <img src="${pageContext.request.contextPath}/images/expert/solo/구글.png" alt="">
                        </a>
                        <a href="#" >
                            <img src="${pageContext.request.contextPath}/images/expert/solo/애플.png" alt="">
                        </a>
                    </div>
                    <c:if test="${userStatus != 1 or userStatus == null}">
	                    <div class="expertJoin">
								<input class="footer_btn" type="button"  value="전문가 회원가입">                    
	                    </div>
                    </c:if>
                </div>
            </article>
        </section>
        <!-- notice 공지 사항 section  -->
        <section class="notice_wrapper">
       	 	<!-- notice header 부분 -->
        	<div class="notice_header">
        		<div class="notice_header_title">
        			<svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 192 512" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg"><path d="M20 424.229h20V279.771H20c-11.046 0-20-8.954-20-20V212c0-11.046 8.954-20 20-20h112c11.046 0 20 8.954 20 20v212.229h20c11.046 0 20 8.954 20 20V492c0 11.046-8.954 20-20 20H20c-11.046 0-20-8.954-20-20v-47.771c0-11.046 8.954-20 20-20zM96 0C56.235 0 24 32.235 24 72s32.235 72 72 72 72-32.235 72-72S135.764 0 96 0z"></path></svg>
        			공지사항
        		</div>
        		<div class="notice_header_colse">
        			<svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 24 24" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg"><path d="M19 6.41L17.59 5 12 10.59 6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 12 13.41 17.59 19 19 17.59 13.41 12z"></path></svg>
        		</div>
        	</div>
        	
        	<!-- notice main 부분 -->
        	<div class="notice_main">
        		<!-- 개별 공지사항 -->
        		<div class="notice_main_text">
        			<div class="notice_main_day">
        				<div class="notice_main_day_badge">
        					new
        				</div>
        				<div class="notice_main_regist_time">
        					2022-03-07
        				</div>
        			</div>
        			<div class="notice_main_content">
        				[공지사항] 3/9 마인드카페 이용 안내
        			</div>
        		</div>
        		
        		<div class="notice_main_text">
        			<div class="notice_main_day">
        				<div class="notice_main_regist_time">
        					2022-03-07
        				</div>
        			</div>
        			<div class="notice_main_content">
        				[공지사항] 3/9 마인드카페 이용 안내
        			</div>
        		</div>
        		
        		<div class="notice_main_text">
        			<div class="notice_main_day">
        				<div class="notice_main_regist_time">
        					2022-03-07
        				</div>
        			</div>
        			<div class="notice_main_content">
        				[공지사항] 3/9 마인드카페 이용 안내
        			</div>
        		</div>
        		
        		<div class="notice_main_text">
        			<div class="notice_main_day">
        				<div class="notice_main_regist_time">
        					2022-03-07
        				</div>
        			</div>
        			<div class="notice_main_content">
        				[공지사항] 3/9 마인드카페 이용 안내
        			</div>
        		</div>
        		
        		<div class="notice_main_text">
        			<div class="notice_main_day">
        				<div class="notice_main_regist_time">
        					2022-03-07
        				</div>
        			</div>
        			<div class="notice_main_content">
        				[공지사항] 3/9 마인드카페 이용 안내
        			</div>
        		</div>
        		
        		<div class="notice_main_text">
        			<div class="notice_main_day">
        				<div class="notice_main_regist_time">
        					2022-03-07
        				</div>
        			</div>
        			<div class="notice_main_content">
        				[공지사항] 3/9 마인드카페 이용 안내
        			</div>
        		</div>
        		
        		<div class="notice_main_text">
        			<div class="notice_main_day">
        				<div class="notice_main_regist_time">
        					2022-03-07
        				</div>
        			</div>
        			<div class="notice_main_content">
        				[공지사항] 3/9 마인드카페 이용 안내
        			</div>
        		</div>
        		
        		<div class="notice_main_text">
        			<div class="notice_main_day">
        				<div class="notice_main_regist_time">
        					2022-03-07
        				</div>
        			</div>
        			<div class="notice_main_content">
        				[공지사항] 3/9 마인드카페 이용 안내
        			</div>
        		</div>
        		
        		<div class="notice_main_text">
        			<div class="notice_main_day">
        				<div class="notice_main_regist_time">
        					2022-03-07
        				</div>
        			</div>
        			<div class="notice_main_content">
        				[공지사항] 3/9 마인드카페 이용 안내
        			</div>
        		</div>
        	</div>
        </section>
	</footer>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
var contextPath = "${pageContext.request.contextPath}";
</script>
<script src="${pageContext.request.contextPath}/js/expert/solo/footer.js"></script>
</html>