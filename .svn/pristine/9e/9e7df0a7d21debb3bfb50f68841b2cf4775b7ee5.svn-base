/**
 * 
 */
const $questionIcon = $('.question_icon');
const $explainList = $('.explain_text');

function explainPrint(){
	$.each($questionIcon, function(index, item) {
		$(item).click(function() {
			$explainList.hide();
			$($explainList[index]).show();
		});
	});
};

function send() {
	if(!writeForm.managerName.value){
		alert("아이디 입력해주세요");
		return;
	}
	
	writeForm.submit();	
};
		// 파일 첨부시 썸네일 변화 기능
         	$(".files").change(function(e){
         		var file = e.target.files[0];
         		var img = $(this).find("img");
         		var reader = new FileReader();
         		reader.readAsDataURL(file);
         		
    	   		reader.onload = function(e){
    	   			if(e.target.result.indexOf("image") != -1){
    		   			img.attr("src", e.target.result)
    		   			$(img).css("width", "122px");
    		   			$(img).css("height", "180px");
    	   			}else{
    	   				img.attr("src", contextPath+"/images/expert/solo/비어서빈파일.png");
    	   				img.css("width", "50px");
    	   				img.css("height", "50px");
    	   			}
    	   		}
    	   	});
         	
         	// 파일 첨부 삭제시
         	function cancelFile(fileName){
         		$("input#" + fileName).val("");
         		$("img#" + fileName + "Img").attr("src", contextPath+"/images/expert/solo/첨부파일.png");
         		$("img#" + fileName + "Img").css("width", "50px");
         		$("img#" + fileName + "Img").css("height", "50px");
         	}
         	
         	
         	
//         	textarea 높이 조절
         	function adjustHeight() {
         		  var $textEle = $('textarea');
         		  
         		  $.each($textEle, function(index, item) {
         			$(item).css("height", "auto");
         			var textEleHeight = $(item).prop('scrollHeight');
         			console.log(textEleHeight);
         			$(item).css('height', textEleHeight);
         			$(item).css('height', textEleHeight);
         			if(textEleHeight > 191){
         				$(item).css('height', 191);
         			}
         		  });
         	};

         adjustHeight(); // 함수를 실행하면 자동으로 textarea의 높이 조절
         
//         타자시 함수 작동
         var $textEle = $('textarea');
         
         $.each($textEle, function(index, item) {
			$(item).on('keyup', function() {
		           adjustHeight();
	         });
		});
      