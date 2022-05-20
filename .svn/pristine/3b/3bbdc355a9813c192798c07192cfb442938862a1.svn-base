
// 프로필  업데이트
var mypage;
var check = false;

getList();

// 프로필 업데이트 
function getList(){
   $.ajax({
       url: contextPath + "/userMyPage/MyPageUpdateSee.dy",
       type: "get",
        dataType: "json", //text일 경우 dataType 생략 가능
//       contentType: "application/json;charset=utf-8",
       success: showList,
       error: function(a, b, c){
       console.log("오류" + c);
       }
   });
};

//프로필 목록
function showList(myPage){
    var text = "";
    if(myPage != null && myPage.length != 0){
           text += "<div class='profile card'>"
        	   text +=  "<div class='profile__header card__title'>프로필</div>"
        		   text +=  "<div class='profile__main'>"
        	text += "<div class='profile__main__item'>"
        	text += "<div class='profile__main__item__label'>이메일</div>"
        	text += "<div class='profile__main__item__value'>"+myPage.userEmail+"</div>"
        		text += "</div>" 
        	text += "<div class='profile__main__item'>"
        	text += "<div class='profile__main__item__label'>닉네임</div>"
        		text += "<div class='profile__main__item__value'>"+myPage.userNickname+"</div>"
        			text += "</div>"
        	text += "<div class='profile__main__item'>"
        	text += "<div class='profile__main__item__label'>성별</div>"
        		text += "<div class='profile__main__item__value'>"+myPage.userGender+"</div>"
        			text += "</div>"
        		text += "<div class='profile__main__item'>"
        		text += "<div class='profile__main__item__label'>출생년도</div>"
        		text += "<div class='profile__main__item__value'>"+myPage.userBirth+"</div>"
        			text += "</div>"
        	text += "<div class='profile__main__item'>"
        		text += "<div class='profile__main__item__label'>주소</div>"
        		text += "<div class='profile__main__item__value'>"+myPage.userAddress+"</div>"
        	text += "</div>"
        	text += "<div class='profile__main__item'>"
        	text += "<div class='profile__main__item__label'></div>"
        		text += "<div class='profile__main__item__value profile__main__item__value profile__main__item__value--btn' id='myPage-2-Start' onclick='change()'>수정하기</div>"
        			text += "</div>"
        text += "</div>"
        text += "</div>"
        
    }else{
        //댓글 없음
        text = "<p>프로필이 없습니다.</p>";
    }

   $("#myPage-1").html(text);
}


/**
 마이페이지 화면 클릭시 화면 전환 
 */

// 마이페이지 수정하기 버튼
const $MPS = $('#myPage-2-Start');
const $MP2 = $('#myPage-2');
const $MP1 = $('#myPage-1');
const $cancle = $('#Exit');
var check = false;


function change(){
		if(check == false) {
			$MP1.hide();
			$MP2.show();
	 $("input[name='passwordCheck']").val("");
	 $("input[name='new_login_pwd']").val("");
	 $("input[name='new_login_pwd_confirm']").val("");
			check = true;
		} else {
			$MP2.hide();
			$MP1.show();
			check = false;
		}
  };

$cancle.click(function (){
	if(check == false) {
		$MP2.hide();
		$MP1.show();
		check = true;
	} else {
		$MP1.hide();
		$MP2.show();
		check = false;
	}
});


// 마이페이지 수정

// 현재 로그인 비밀번호랑 비밀번호 확인 유효성 검사
function userCheckPw(){
	const password = $("input[name='passwordCheck']").val();
	console.log(password);
	$.ajax({
		url:contextPath + "/userMyPage/userCheckPwOK.dy",
		type:"get",
		data: {"password" : password}, 
		dataType:"json",
		success:function(result){
			if(result.status == 'ok') {
				$("#result3").text("알맞은 비밀번호입니다.");
				$("#result3").css("color", "blue");
				check = true;
			}else{
				$("#result3").text("비밀번호가 맞지 않습니다.");
				$("#result3").css("color", "red");
			}
		},
		error:function(){
			console.log("오류");
		}
	});
	
	
}

$("input[name='passwordCheck']").blur(function(){
	userCheckPw($(this).val());
});


// 새비밀번호 유효성 검사

function checkPw(userPw){
	$.ajax({
		url:contextPath + "/userMyPage/checkPwOK.dy?userPw=" + userPw,
		type:"get",
		dataType:"json",
		success:function(result){
			if(result.status == 'ok') {
				$("#result").text("사용한 가능한 비밀번호입니다.");
				$("#result").css("color", "blue");
				check = true;
			}else{
				$("#result").text("중복된 비밀번호입니다.");
				$("#result").css("color", "red");
			}
		},
		error:function(){
			console.log("오류");
		}
	});
	
	
}

$("input[name='new_login_pwd']").blur(function(){
	checkPw($(this).val());
});

//   새 비밀번호랑 비밀번호 확인 
$("input[name='new_login_pwd_confirm']").keyup(function(){
	const check1 = $("input[name='new_login_pwd']").val();
	const check2 = $("input[name='new_login_pwd_confirm']").val();
	if(check1 != check2) {
		$("#result2").text("비밀번호가 다릅니다.");
		$("#result2").css("color", "red");
		return true;
	} else {
		$("#result2").text("동일한 비밀번호 입니다.");
		$("#result2").css("color", "blue");
		return false;
	}
});


// 수정 버튼 서브밋
function profileSend(){
	const userNickname = $("input[name='nickName']").val();
	const userBirth = $("input[name='Birth']").val();
	const userGender = $("input[name='userGender']").val();
	const userPw = $("input[name='new_login_pwd_confirm']").val();
	const userAddress = $("input[name='newAddress']").val();
	const check1 = $("input[name='new_login_pwd']").val();
	const check2 = $("input[name='new_login_pwd_confirm']").val();
	
	if(check1 != check2){
		alert("비밀번호가 다릅니다.");
		return;
	}
	
	   $.ajax({
	       url: contextPath + "/userMyPage/MyPageUpdateOK.dy",
	       type: "post",
	       data: {"userNickname" : userNickname, "userBirth" : userBirth, "userGender" : userGender, "userPw" : userPw, "userAddress" : userAddress }, 
	       //dataType: "json", //text일 경우 dataType 생략 가능
//	       contentType: "application/json;charset=utf-8",
	        success: function(){
				getList();
				check = false;
			},
	       error: function(a, b, c){
	       console.log("오류" + c);
	       }
	   });
	   
	   if(check == true) {
			$MP2.hide();
			$MP1.show();
			check = false;
			}
	   
	};

// 활동기록 클릭시 변화

const $ActivityBtn = $('.navigator__item'); // 활동기록 선택 가져오기
const $Activityselected = $('.navigator__item--selected'); // 선택시 변화 css
const $MyStroy = $('.MyStroy'); // 고민/사연
const $MyComments = $('.MyComments'); // 나의 댓글
const $MyReview = $('.MyReview'); // 나의 리뷰


$.each($ActivityBtn, function(index, item){
	   $(item).click(function(){
		  $ActivityBtn.removeClass("navigator__item--selected");
	      $($ActivityBtn[index]).addClass("navigator__item--selected");
	   });
	})

$ActivityBtn.click(function (){
	if($($ActivityBtn[0]).hasClass("navigator__item--selected") === true){
		// class가 존재함.
		$MyStroy.show();
		getMyWorryList();
	} else {
		$MyStroy.hide();	 
	}
});

$ActivityBtn.click(function (){
	if($($ActivityBtn[1]).hasClass("navigator__item--selected") === true){
		// class가 존재함.
//		div html gif 심고 
		$MyComments.show();
		getCommentList();
	} else {
		$MyComments.hide();	 
	}
});

$ActivityBtn.click(function (){
	if($($ActivityBtn[2]).hasClass("navigator__item--selected") === true){
		// class가 존재함.
		$MyReview.show();
		getMyReviewList();
	} else {
		$MyReview.hide();	 
	}
});


// 상담형태 상태 변경	
const $booking = $(".bookingStatus");
		$.each($booking, function(index, item){
			console.log($(item).text());
			console.log($(item).text() == 0);
			if($(item).text() == 0) {
				console.log("들어옴666");
				$(item).text("예약대기");
			}
			if($(item).text() == 1) {
				$(item).text("진행중");
			}
			if($(item).text() == 2) {
				$(item).text("상담완료");
			}
		});
//		for(i = 0; i<booking.length; i++) {
//			console.log(booking.length);
//		if(booking == 0){
//			$("#bookingStatus").text("예약대기");
//			console.log(booking);
//		} else if(booking == 1){
//			$("#bookingStatus").text("진행중"); 
//		} else if(booking == 2){
//			$("#bookingStatus").text("상담완료"); 
//		}
//		}
	
	
