// 프로필  업데이트
var expertmyPage;
var check = false;

getList();

// 프로필 업데이트 
function getList(){
   $.ajax({
       url: contextPath + "/expertPage/ExpertProflieUpdateSee.ddy",
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
function showList(expertmyPage){
	console.log("안녕");
    var text = "";
    if(expertmyPage != null && expertmyPage.length != 0){
           text += "<div class='profile card'>"
        	   text +=  "<div class='profile__header card__title'>프로필</div>"
        		   text +=  "<div class='profile__main'>"
        	text += "<div class='profile__main__item'>"
        	text += "<div class='profile__main__item__label'>이메일</div>"
        	text += "<div class='profile__main__item__value'>"+expertmyPage.userEmail+"</div>"
        		text += "</div>" 
        	text += "<div class='profile__main__item'>"
        	text += "<div class='profile__main__item__label'>이름</div>"
        		text += "<div class='profile__main__item__value'>"+expertmyPage.userName+"</div>"
        			text += "</div>"
        	text += "<div class='profile__main__item'>"
        	text += "<div class='profile__main__item__label'>번호</div>"
        		text += "<div class='profile__main__item__value'>"+expertmyPage.userHP+"</div>"
        			text += "</div>"
        		text += "<div class='profile__main__item'>"
        		text += "<div class='profile__main__item__label'>성별</div>"
        		text += "<div class='profile__main__item__value'>"+expertmyPage.userGender+"</div>"
        			text += "</div>"
        	text += "<div class='profile__main__item'>"
        	text += "<div class='profile__main__item__label'></div>"
        		text += "<div class='profile__main__item__value profile__main__item__value profile__main__item__value--btn' id='myPage-2-Start' onclick='change()'>수정하기</div>"
        			text += "</div>"
        text += "</div>"
        text += "</div>"
    }else{
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
		url:contextPath + "/expertPage/ExpertCheckPwOK.ddy",
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
		url:contextPath + "/expertPage/CheckPwOK.ddy?userPw=" + userPw,
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
function send(){
	const userGender = $("input[name='userGender']").val();
	const userHP = $("input[name='userGender']").val();
	const userPw = $("input[name='newHP']").val();
	const check1 = $("input[name='new_login_pwd']").val();
	const check2 = $("input[name='new_login_pwd_confirm']").val();
	
	if(check1 != check2){
		alert("비밀번호가 다릅니다.");
		return;
	}
	
	   $.ajax({
	       url: contextPath + "/expertPage/ExpertProflieUpdateOK.ddy",
	       type: "post",
	       data: {"userPw" : userPw, "userHP" : userHP}, 
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

