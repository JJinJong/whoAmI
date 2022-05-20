<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/app/management/CustomerCare/assets/css/MyReview.css" />
<body>
	<!-- Header -->
	<jsp:include page="/app/fix/managementHeader.jsp"/>

	<section class="management_wrapper">
	<header>
                    					<div class="card__title">My 상담고객관리</div>
										</header>
										<div class="ReservationManagement">
                 							<div class="ReservationManagement-users card">
                    								<div class="Guide">
                        								<span class="GuideLineFirst">고객명</span>
								                        <span class="GuideLine">상담형태</span>
								                        <span class="GuideLine">상담 프로그램</span>
								                        <span class="GuideLine">진행 사항</span>
								                        <span class="GuideLineEnd">관리</span>
                    								</div>
                    							<div class="Zrvvs">
                        							<div class="contents ">
							                            <span class="comment ExpertName">공도윤</span>
							                            <span class="comment CounselingMethod" style="margin-left: -10px;">대면</span>
							                            <span class="comment CounselingProgram" style="margin-left: -34px;">2급) 텍스트 테라피 1회기권</span>
							                            <span class="comment Status" id="commentStatusSelected-OR" style="margin-left: -11px margin-right: -25px;">예약대기</span>
								                            <div class="comment__Status__item" id="commentStatusSelected" style="display: none;">
								                            <div class="comment__Status__item__label"></div>
								                            <div class="comment__Status__item__value">
								                                <div class="StatusPicker__StatusPickerWrapper-sc-1dr2nod-0 commentStatus">
								                                    <div class="selected__comment__Status" id="btn_toggle2">
								                                        <span class="Status3" id="status-selected2">예약대기</span>
								                                        <span class="more ">
								                                            <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 512 512" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
								                                                <path d="M128 192l128 128 128-128z"></path>
								                                            </svg>
								                                        </span>
								                                    </div>
								                                    <div class="Status2" id="Toggle2" style="display: none;">
								                                        <div class="Status3 selected2">예약대기</div>
								                                        <div class="Status3 ">진행중</div>
								                                        <div class="Status3 ">완료</div>
								                                    </div>
								                                </div>
								                            </div>
								                        </div>
							                            <div>
							                            <span class="comment Status" id="button__1"><input id="button1" type="button" value="수정"></span>     
							                            <span class="comment Status"><input id="button2" type="button" value="삭제" style="margin-left: 47px;"></span>     
							                            </div>
							                        </div>
							                    </div>
							                </div>
							            </div>
	</section>


	
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="${pageContext.request.contextPath}/management/js/profileWrite.js"></script>
<script src="${pageContext.request.contextPath}/management/MyCustomer.js"></script>
</html>