/**
 * 
 */

const $joinCode =  $('#join_code');
// 전문가로 가입 
function expertJoinSend() {
	console.log($joinCode.val());
	console.log($joinCode);
   $.ajax({
       // url: contextPath + "/board/BoardReplyListOk.bo?boardNumber=" + boardNumber,
       url: contextPath + "/expert/ExpertJoinCheck.me",
       type: "post",
        dataType: "json", //text일 경우 dataType 생략 가능
        data:{"joinCode":$joinCode.val()},
//       contentType: "application/json;charset=utf-8",
       success: function(result) {
    	   if(result.check){
    		   location.href=contextPath+'/expert/ExpertJoin.me';
    	   }else{
    		   alert("코드가 틀렸습니다.");
    	   }
       },
       error: function(a, b, c){
       console.log("오류" + c);
       }
   });
};




// 전문가 가입 버튼
$expertJoinBtn = $('.expertJoin');

// 전문가 닫기 창
$cloeseBtn = $('.modal_content span');

// 전문가 가입 창
$epxertJoinList = $('.modal_back');

$expertJoinBtn.click(function() {
	$epxertJoinList.show();
});

$cloeseBtn.click(function() {
	$epxertJoinList.hide();
});



// 공지사항 버튼
const $notice_btn = $('.footer_nav_alarm');
// 공지사항창
const $notice_list = $('.notice_wrapper');
// 공지사항 닫기 버튼
const $notice_close = $('.notice_header_colse');

var check = false;

/* 공지사항 열고 닫기 기능 */
$notice_btn.click(function () {
	if(check == false){
		$notice_list.css("right", "0");
		$notice_list.css("opacity", "1");
		
		check = true;
	}else{
		$notice_list.css("right", "-350px");
		$notice_list.css("opacity", "0");
		check = false;
	}
});

/* 공지사항 닫기 기능 */
$notice_close.click(function () {
	$notice_list.css("right", "-350px");
	$notice_list.css("opacity", "0");
})