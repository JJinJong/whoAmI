var check = false;

//아이디 중복검사
function checkId(managerId){
	if(!managerId){
		$("#result").text("아이디를 입력해주세요.");
		$("#result").css("color", "red");
		return;
	}
	
	$.ajax({ 
		url: contextPath + "/admin/AdminCheckIdOk.mg?managerId=" + managerId,
		type: "get",
		dataType: "json", //받을 애, 데이터 타입을 전부 제이슨으로 바꿔서 가져온다는 뜻
		success: function(result){
			if(result.status == "ok"){
				$("#result").text("사용한 가능한 아이디입니다.");
				$("#result").css("color", "blue");
				check = true;
			}else{
				$("#result").text("중복된 아이디입니다.");
				$("#result").css("color", "red");
				$("input#managerId").focus();
			}
		},
		error: function(){
			console.log("중복검사 오류");
		}
	});
}

$("input#managerId").blur(function(){
	check = false;
	checkId($(this).val());
});



//회원가입 유효성 검사
function send(){
	if(!adminJoinForm.managerName.value){
		alert("이름을 확인해주세요.");
		return;
	}
	if(!check){
		alert("아이디를 확인해주세요.");
		return;
	}
	
	if(!adminJoinForm.managerPw.value){
		alert("패스워드를 확인해주세요.");
		return;
	}
	
	
//	if(!joinForm.birth.value){
//		alert("생년월일을 확인해주세요.");
//		return;
//	}
	
	adminJoinForm.submit();
	alert("회원가입에 성공하셨습니다");
}
