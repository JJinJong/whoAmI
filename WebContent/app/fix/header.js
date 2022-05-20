/**
 * 
 */


var check = false;


// 고민/사연 oncilck
function sibalSend(){
	location.href = contextPath + "/worry/ListOK.bo";
};

function consultSend() {
	location.href = contextPath + "/managerMbti/TestInfoMainList.ns";
};

function expertSend() {
	location.href = contextPath + "/expert/ExpertList.me";
};

// 감정일기 클릭
function diary() {
	location.href = contextPath + "/diary/DiaryListOk.di";
};



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

/*// 카테고리 색깔 변경
var $categoryBtns = $('.header_nav  button');

console.log($categoryBtns);

$each($categoryBtns, function(index, item) {
	$(item).click(function() {
		$(item).parent.removeCalss('category_on');
			$(this).addClass('category_on');
	});
});*/


