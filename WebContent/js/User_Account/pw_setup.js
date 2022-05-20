var check = false;


//비밀번호 재설정 전송
function pwsend(){
	var p1 = document.getElementById('setupPw').value;
    var p2 = document.getElementById('setupPwCheck').value;
	
	if(!setupForm.setupPw.value){
		alert("비밀번호를 확인하세요");
		return;
	}
	if(!setupForm.setupPwCheck.value){
		alert("비밀번호 확인을 확인하세요");
		return;
	}
	
	if( p1 != p2 ) {
        alert("비밀번호가 일치 하지 않습니다");
        return;
      } else{
        alert("비밀번호가 일치합니다");
      }
	
	setupForm.submit();
	alert("비밀번호가 변경되었습니다");
}