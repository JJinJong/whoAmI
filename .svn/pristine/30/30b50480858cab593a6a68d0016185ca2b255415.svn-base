//댓글 목록
var worryInfoList;


console.log("고민들어왓지")
// ajax
function getMyWorryList() {
	$.ajax({
		async: false,
		url : contextPath + "/userMyPage/MyWorryListOk.dy",
		type : "get",
		dataType : "json",
		success : showMyWorryList
	    ,error:function(a, b, c) {
			console.log("오류" + c);
	    }
	});
};	

function loading(){
    $('.wrap-loading').removeClass('display-none');
}

//목록+보기
function showMyWorryList(worryInfoList) {
	console.log("고민실행들어옴?");
	console.log(worryInfoList);
	var text = "";
	if (worryInfoList != null && worryInfoList.length != 0) {
		$.each( worryInfoList, function(index, worryInfo) {	
	text+='<div class="Story__StoryWrapper-k2b9r5-1 gQXtDl worryDetail" data-index="' + index + '"">                                  '
	text+='	<div class="story">                                                               '
	text+='		<div class="story__header">                                                   '
	text+='			<div class="story__header__info">                                         '
	text+='				<div class="category-name">'+ worryInfo.worryCategoryNumber +'</div>    '
	text+='			</div>                                                                    '
	text+='			<div class="story__header__tags"></div>                                   '
	text+='		</div>                                                                        '
	text+='		<a class="main">                                                            '
	text+='			<div  class="title">'+ worryInfo.worryTitle +'</div > ' 
	text+='			<div class="contents" >'+ worryInfo.worryContent +'</div>'
	text+='		</a>                                                                        '
	text+='		<div class="footer">                                                          '
	text+='			<div class="reactions">                                                   '
	text+='				<span>'+ worryInfo.worryLikeNumber +'</span>명이 공감 ·                    '
	text+='			</div>                                                                    '
	text+='			<div class="reactions">                                                   '
	text+='				<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAAERlWElmTU0AKgAAAAgAAYdpAAQAAAABAAAAGgAAAAAAA6ABAAMAAAABAAEAAKACAAQAAAABAAAAGKADAAQAAAABAAAAGAAAAADiNXWtAAADoElEQVRIDd1VXUiTURh+v7nNuc2shEHmYBgqGVIm/WgkOSOmgllECEZBP1LRnRahBFJ4Zd1EdGF6kdSFSHRhKGJJUFlWCpXLldbCCHHmtLTNberXc8787Di+Sd124Oz9Oc/7vO/OOe/5JFocsixLoY/ekzBPkEybuFsiJ2STLm1toyRJ8iL0n4TE0PKXX+tCgdk7skx2tWhJom5drOGIZDONqq2v5NPwylcgZ8EscbgAmRe0EmHkmoZtS7TKGfj95w88hicJbyEVFRVtiSSKZkvBDxMvELxDDfByoJ/qGq/R/vwi8vl95P0xOdE3+OYGzuMCZl57e/trtTjRJwVdE9M4PbPoZHogGKDTdZWMlC+tWbWazHGm+a9j32IWsW4k2djR0RFYtFWFRtULZ/vTh5y86ug5itXH0nrLOjp7+DgnA/FtQGw4vxPR4hW/hsJXUbGXZGfPI8pMzaDdW3Oo4uBRGhgepMu3ruoBGDWbzWeQ5AH0i7W1tdqlIBWF/YOmSP/bISeNfh+jfTvz+dLenXt4Mv+sXwviK62trX7Im1i09vb25kXGi7Ym3ETULTqf9D8noyGOcjZvW3IfKCjugzFrtVobmdNkMrGYH5ilzI42NKhE5k2EZlJALvcQpSTbSKfVcRdrtEAwVAZssKGhIVRcXJwyMzNTA3sW53CqsLDwq8Ph+IzZonAoku8f61AA9ypPxdiEZ3vGhvQ5EPcDyJ+K/HSHDAI9yO4uLCyUaTBsNhslJSVRfHx8ssvlIrfbnagQryhB4sO8LoIqKip0SOBH9XJzc7Ps9XpR05/R2dnJCpBLS0ttYly0G+BBaKoIHBkZqYRtqK6uptzcXHGJ64mJ4eLn5uYscHxRANH64BUAm5CEvz0lJSVJ2O9LdrtdlZyRabXhWufn55dxLjOUrJDssKzYJn5DgsFgIZIZy8vLBchydXIy3PFINC2uqCbAG3MPFb9jVSNJLOQui8XCD1QMFnWn00nA/czOzh4U/aoJAGQflxpUnYX5AHO10WgU45bp4+Pj1NXVxXz30dkL4qJqAgbAI9aGROcx7ZgFHo+HfD6fGMt15mcHj22c1ul01ZEA5WWM9HN7eHi4Jy0t7TGMzFAoZAWZlJWVRXq9nmATribV19cT/OMxMTGOtrY2Fw8UfvgtEeyoKs6iCltVbzAYKCEhgaampigQCLB9f4agY/jHn9SC/zoBC8aXLA9JDkFlb8hP3JgWVM26/T8evwHAKHX0uiXr4AAAAABJRU5ErkJggg=="'
	text+='					class="Story__BeanImg-k2b9r5-0 VfyQn">                             '
	text+='				<div class="userNickname">'+ worryInfo.userNickname +'</div>             '
	text+='			</div>                                                                     '
	text+='		</div>                                                                         '
	text+='		<input type="hidden" name="worryNumber" class="worryNumber" value="'+ worryInfo.worryNumber +'">     '
	text+='		</div>                                                                         '
	text+='</div>'
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