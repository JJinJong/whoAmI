var check = false;


//아이디 중복검사
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
			if(result.status == "not-ok"){
				$("#result").text("등록되어 있는 이메일 입니다");
				$("#result").css("color", "blue");
				check = true;
			}else{
				$("#result").text("등록되어 있지 않은 이메일 입니다.");
				$("#result").css("color", "red");
				$("input[name='FindEmail']").focus();
				return;
			}
		},
		error: function(){
			console.log("중복검사 오류");
		}
	});
}

$("input[name='FindEmail']").blur(function(){
	check = false;
	checkId($(this).val());
});

//이메일 보내기
function Emailsend(){
	if(!sendEmailFrom.FindEmail.value){
		alert("이메일을 확인하세요");
		return;
	}
	if(!check){
		alert("등록되지 않은 이메일 입니다");
		return;
	}else{
		alert("해당 이메일로 전송된 링크를 확인하세요");
	}
	sendEmailFrom.submit();
}
