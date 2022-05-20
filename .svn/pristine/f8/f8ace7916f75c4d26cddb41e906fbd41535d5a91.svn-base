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


$("input#userEmail").blur(function(){
	check = false;
	checkId($(this).val());
});

// 회원가입 유효성 검사
function send(){
	if(!check){
		alert("이메일을 확인해주세요.");
		return;
	}
	
	if(!joinForm.userPw.value){
		alert("패스워드를 확인해주세요.");
		return;
	}
	
	if(!joinForm.userName.value){
		alert("이름을 확인해주세요.");
		return;
	}
	
	if(!joinForm.userNickname.value){
		alert("닉네임을 확인해주세요.");
		return;
	}
	if(!joinForm.userGender.value){
		alert("성별을 확인해주세요.");
		return;
	}
	
	if(!joinForm.userBirth.value){
		alert("생년월일을 확인해주세요.");
		return;
	}
	
	if($('#remember').is(':checked') === false){
		alert("이용약관에 동의해주세요");
		return;
	}
	
	alert("회원가입에 성공하셨습니다");
	joinForm.submit();
}










