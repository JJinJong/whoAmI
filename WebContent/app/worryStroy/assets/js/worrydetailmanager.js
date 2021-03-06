var managerinfos;
var check = false;
getManagerCommentList();

console.log("자바스크립트");
function getManagerCommentList() {
	console.log("전문가 댓글 실행");
	$.ajax({
		url : contextPath + "/worry/WorryCommentManagerListOK.bo",
		type : "get",
		dataType : "json",
		data : {"worryNumber" : worryNumber},
		success : showmyManagerCommentList,
		error : function(a, b, c) {
			console.log("오류" + c);
		}
	});
};


function showmyManagerCommentList(managerinfos) {
	console.log("전문가 댓글");
	var text = "";
	if (managerinfos != null && managerinfos.length != 0) {
		$ .each( managerinfos, function(index, info) {
		text +='<div class="story-comments">'
		text += '	<div class="Comment__CommentWrapper-sc-1u7skh9-2 eYUUGp counselor">'
    	text += '	<div class="header">'
    	text += '		<div class="profile">'
    	text += '			<div class="profile-img">'
    	text += '				<img alt="상담사 프로필" src="' + contextPath +'/upload/'+ info.ManagerPictureNameOrignal +'">'
    	text += '			</div>'
    	text += '			<div class="nickname clickable">' + info.ManagerName + '님의 전문답변</div>'
    	text += '		</div>'
    	text += '		<div class="info">'
    	text += '			<div class="move-to-profile">프로필</div>'
    	text += '			<div class="from-now">'
    	text += '				<svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 512 512" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">'
    	text += '					<path d="M256 8C119 8 8 119 8 256s111 248 248 248 248-111 248-248S393 8 256 8zm0 448c-110.5 0-200-89.5-200-200S145.5 56 256 56s200 89.5 200 200-89.5 200-200 200zm61.8-104.4l-84.9-61.7c-3.1-2.3-4.9-5.9-4.9-9.7V116c0-6.6 5.4-12 12-12h32c6.6 0 12 5.4 12 12v141.7l66.8 48.6c5.4 3.9 6.5 11.4 2.6 16.8L334.6 349c-3.9 5.3-11.4 6.5-16.8 2.6z"></path>'
    	text += '				</svg>' + info.ManagerNumberDate + '</div>'
    	text += '		</div>'
    	text += '	</div>'
    	text += '	<div class="contents">'
    	text += '		<div class="counselling">'
    	text += '		 <div class="counselling__detail counselling__detail--title"><pre style="white-space: pre-wrap;">' + info.WorryCommentManagerContent + '</pre></div>'
    	text += '		</div>'
    	text += '	</div>'
    	text += '	<div class="footer"></div>'
    	text += '</div>'
    	text += '</div>'
						
						});
	}
	$("#wrap_worryManagerComment").html(text);
}










    const $list = $('.More__MoreWrapper-indjn2-0');
    const $more = $('.more');
    
  function expertsend(){
	  console.log( $('#commentManagerWrite_textarea').val())
	  $.ajax({
		  url : contextPath + "/worry/WorryCommentManagerWriteOK.bo", 
			type : "post",
			data : {"worryNumber" : worryNumber, "ManagerContents" : $('#commentManagerWrite_textarea').val()},
			success : function(){
				getManagerCommentList();
			},
			error : function(a, b, c) {
				console.log("오류" + c);
			}
	  });
  }