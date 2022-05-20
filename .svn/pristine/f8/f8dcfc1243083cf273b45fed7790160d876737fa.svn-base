var testInfolist;
var check = false;
getList();
function getList() {
	$.ajax({
		url : contextPath + "/managerMbti/TestInfoMainListOk.ns",
		type : "get",
		dataType : "json", // text일 경우 dataType 생략 가능
		// contentType: "application/json;charset=utf-8",
		success : showList,
		error : function(a, b, c) {
			console.log("오류" + c);
		}
	});
};
function showList(files) {
	var text = "";
	if (files != null && files.length != 0) {
		$.each(files, function(index, file) {
		
			text += 	"<div class='Interpret__InterpretDiv-sc-188uq7i-0 gATPvP'onclick='mbitSend("
							+ file.testInfoNumber + ")'>"
			text += 		"<div class='Interpret__ImgWrapper-sc-188uq7i-11 jnjoXM'>"
			text += 			"<img src='" + contextPath + "/upload/" + file.testInfoPicturePosterNameOrignal
									+ "'class='Interpret__InterpretImg-sc-188uq7i-12 kQmVof' style='height: 150px;/>"
			text += 		"</div>"
			text += 		"<div height='8' class='_blank-sc-10grpd2-0 kkMAUr'></div>"
			text += 		"<div class='Interpret__TitleTextDiv-sc-188uq7i-5 iFMcEj'>"
			text += 			"<div class='catchline'>" + file.testInfoTitle + "</div>"
			text += 		"</div>"
			text += 	"</div>"
			
		});
	} else {
		// / /댓글 없음
		text = "<p>게시물이 없습니다.</p>";
	}

	$("#wrapper_testInfo").html(text);
	
}
function mbitSend(testInfoNumber) {
	location.href = contextPath
	+ "/managerMbti/TestInfoDetailOk.ns?testInfoNumber="+ testInfoNumber;
}