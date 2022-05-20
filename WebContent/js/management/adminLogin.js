//관리자 로그인
function send(){
	if(!adminLoginForm.managerId.value){
		alert("아이디를 확인하세요");
		return;
	}
	if(!adminLoginForm.managerPw.value){
		alert("비밀번호를 확인하세요");
		return;
	}
	adminLoginForm.submit();
}