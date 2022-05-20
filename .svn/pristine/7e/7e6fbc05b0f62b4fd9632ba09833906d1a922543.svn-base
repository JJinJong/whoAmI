/**
 * 
 */

/* 알람 보이기 버튼 */
/* 알람창 */
/* 알람 닫기 버튼 */

var check = false;

// 고민/사연 oncilck
function send(){
	location.href=contextPath + "/worry/ListOK.bo";
};

function expertSend() {
	location.href = contextPath + "/expert/ExpertList.me"
};

function consultSend() {
	location.href = contextPath + "/managerMbti/TestInfoMainList.ns"
};

// 감정일기 클릭
function diary() {
	location.href = contextPath + "/diary/DiaryListOk.di"
};

//상담내역
function expertCounselingDetail(){
	location.href = contextPath + "/expertPage/ExpertCousultUpdateOK.ddy"
}

//나의 댓글
function expertCommentFix(){
	location.href = contextPath + "/expertPage/ExpertCommentList.ddy"
}

//글쓰기

function writesend(){
	var uid = '<%=(Integer)session.getAttribute("userNumber")%>';
	console.log(uid);
if(uid != ""){
	alert("로그인 후 사용하실 수 있습니다.")
}else{
	location.href=contextPath +"/app/worryStroy/worrypage.jsp";
}
};


// 카테고리 색깔 변경
var $categoryBtns = $('.header_nav  button');

console.log($categoryBtns);

$.each($categoryBtns, function(index, item) {
	$(item).click(function() {
		$(item).removeClass('category_on')
			$(this).addClass('category_on')
	});
});

// 프로필 작성 여부 체크 후 분기처리 
function profileCheckSend() {
	location.href = contextPath + "/expert/ExpertListCheck.me"
};