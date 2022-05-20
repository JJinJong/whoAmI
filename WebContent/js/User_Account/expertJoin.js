var check = false;

// 주소 찾기(Daum API)
function find() {
    new daum.Postcode({
        oncomplete: function(data) {
            var addr = ''; // 주소 변수
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('zipcode').value = data.zonecode;
            document.getElementById("address").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("addressDetail").focus();
        }
    }).open();
}

//// 이용 약관
//const $all = $("#term");
//const $inputs = $(".terms");
//
//$all.on('click', function(){
//    if($(this).is(":checked")){
//        $inputs.prop('checked', true);
//    }else{
//        $inputs.prop('checked', false);
//    }
//});
//
//$inputs.on('click', function(){
//    var check = true;
//    if(!$(this).is(":checked")){
//        $all.prop('checked', false);
//    }
//
//    if($inputs.filter(":checked").length == 2){
//        $all.prop('checked', true);
//    }
//});
//
//// 약관 펼쳐보기
//const aTags = $("a.showTerm");
//const textAreas = $("textArea.term-content");
//var check = -1;
//aTags.on('click', function(e){
//	e.preventDefault();
//	
//	if($(this).attr("href") == "term1-content"){
//		$("#term1-content").slideToggle(function(){
//			check *= -1;
//			$(aTags[0]).text(check > 0 ? "닫기 X" : "펼쳐보기");
//		});
//		
//	}else if($(this).attr("href") == "term2-content"){
//		$("#term2-content").slideToggle(function(){
//			check *= -1;
//			$(aTags[1]).text(check > 0 ? "닫기 X" : "펼쳐보기");
//		});
//	}
//});

// 아이디 중복검사
function checkId(userEmail){
	if(!userEmail){
		$("#result").text("이메일을 입력해주세요.");
		$("#result").css("color", "red");
		return;
	}
	
	$.ajax({ 
		url: contextPath + "/user/UserCheckIdOk.user?userEmail=" + userEmail,
		type: "get",
		dataType: "json", //받을 애, 데이터 타입을 전부 제이슨으로 바꿔서 가져온다는 뜻
		success: function(result){
			if(result.status == "ok"){
				$("#result").text("사용한 가능한 이메일입니다.");
				$("#result").css("color", "blue");
				check = true;
			}else{
				$("#result").text("중복된 이메일입니다.");
				$("#result").css("color", "red");
				$("input#userEmail").focus();
			}
		},
		error: function(){
			console.log("중복검사 오류");
		}
	});
}

// 키 이벤트
//$("input#userEmail").keyup(function(){//사용자가 입력한 아이디
//	checkId($(this).val()); 
// });


$("input#userEmail").blur(function(){
	check = false;
	checkId($(this).val());
});

// 회원가입 유효성 검사
function ExpertJoinSend(){
//	if(!$all.is(":checked")){
//		alert("약관에 동의해주세요.");
//		return;
//	}
	
	if(!check){
		alert("이메일을 확인해주세요.");
		return;
	}
	
	if(!expertjoinForm.userPw.value){
		alert("패스워드를 확인해주세요.");
		return;
	}
	
	if(!expertjoinForm.userName.value){
		alert("이름을 확인해주세요.");
		return;
	}
	
	if($('#expertremember').is(':checked') === false){
		alert("이용약관에 동의해주세요");
		return;
	}
	
	expertjoinForm.submit();
}
