//댓글 목록
var worryInfoList;

getMyWorryList();
console.log("고민들어왓지1111111111111111")
// ajax
function getMyWorryList() {
	$.ajax({
		url : contextPath + "/worry/MainPageWorryListOk.bo",
		type : "get",
		dataType : "json",
		success : showMyWorryList,
		error : function(a, b, c) {
			console.log("오류" + c);
		}
	});
};	


//목록+보기
function showMyWorryList(worryInfoList) {
	console.log("고민실행들어옴?");
	console.log(worryInfoList);
	var text = "";
	if (worryInfoList != null && worryInfoList.length != 0 ) {
		$.each( worryInfoList, function(index, worryInfo) {	
	text+='<div class="HomeStory__StoryItemWrapper-sc-17v51xg-4 kEQgrt worryDetail">              '
	text+='	<div class="HomeStory__HeadWrapper-sc-17v51xg-5 krWZbK">                  '
	text+='		<div class="category category-name" >'+ worryInfo.worryCategoryNumber +'</div>       '
	text+='		<div class="HomeStory__HashItemWrapper-sc-17v51xg-2 gqRIZN"></div>    '
	text+='	</div>                                                                    '
	text+='	<div class="story__title">'+ worryInfo.worryTitle +'</div>                '
	text+='	<div class="story__contents">'+ worryInfo.worryContent +'</div>           '
	text+='	<div class="HomeStory__BottomWrapper-sc-17v51xg-1 jIVrOD">                '
	text+='		<div class="HomeStory__ItemWrapper-sc-17v51xg-0 lnxrqd">              '
	text+='			<img                                                              '
	text+='				src="data:image/jpeg;base64,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" />'
	text+='			<div>'+ worryInfo.worryLikeNumber +'                              '
	text+='			</div>명이 공감 ·                                                    '
	text+='		</div>                                                                '
	text+='		<div class="HomeStory__ItemWrapper-sc-17v51xg-0 lnxrqd">              '
	text+='			<div>'+ worryInfo.userNickname +'</div>                     '
	text+='		</div>                                                                '
	text+='	</div>                                                                    '
	text+='</div> '
	text+='<input type="hidden" name="worryNumber" class="worryNumber" value="'+ worryInfo.worryNumber +'">     '
		});
	} else {
		text = "<p>게시글이 없습니다</p>";
	}
	$("#worryStories").html(text);
	
	//상세보기
	$(".worryDetail").each(function(index, item){
		$(item).click(function(){
			const worryNumber=$($(".worryNumber")[index]).val();
			console.log("들어옴?worry상세보기");
			location.href = contextPath +'/worry/WorryDetailOK.bo?worryNumber=' + worryNumber;
		})
	});
	
	$('.category-name').each(function(index, item){
    		if($(item).text() == 1) {
       		$(item).text("일반 고민");
   			}
    		if($(item).text() == 2) {
       		$(item).text("취업 진로");
    		}
    		if($(item).text() == 3) {
       		$(item).text("직장");
    		}
    		if($(item).text() == 4) {
       		$(item).text("연애");
   			}
    		if($(item).text() == 5) {
       		$(item).text("성추행");
    		}
    		if($(item).text() == 6) {
       		$(item).text("결혼/육아");
    		}
    		if($(item).text() == 7) {
       		$(item).text("대인관계");
   			}
    		if($(item).text() == 8) {
       		$(item).text("외모");
    		}
    		if($(item).text() == 9) {
       		$(item).text("가족");
    		}
    		if($(item).text() == 10) {
       		$(item).text("학업/고시");
   			}
    		if($(item).text() == 11) {
       		$(item).text("금전/사업");
    		}
    		if($(item).text() == 12) {
       		$(item).text("성생활");
    		}
    		if($(item).text() == 13) {
       		$(item).text("이별/이혼");
   			}
    		if($(item).text() == 14) {
       		$(item).text("중독/집착");
    		}
    		if($(item).text() == 15) {
       		$(item).text("투병/신체");
    		}
    		if($(item).text() == 16) {
       		$(item).text("정신건강");
   			}
    		if($(item).text() == 17) {
       		$(item).text("LGBT");
    		}
    		if($(item).text() == 18) {
       		$(item).text("자아/성격");
    		}
    		if($(item).text() == 19) {
       		$(item).text("따돌림");
   			}
    		if($(item).text() == 20) {
       		$(item).text("응원");
    		}
    		if($(item).text() == 21) {
       		$(item).text("자유");
    		}
 		}); 
}	