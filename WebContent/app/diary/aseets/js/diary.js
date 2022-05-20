/**
 * 
 */

// 시계
var Target = document.getElementById("clock");
function clock() {
    var time = new Date();
    var year = time.getFullYear();
    var month = time.getMonth();
    var date = time.getDate();
    var hours = time.getHours();
    var minutes = time.getMinutes();
    
    Target.innerText = 
    year + ". " + month + '. ' + date +'.   ' + hours + ":" + minutes ;
}
clock();
setInterval(clock, 30000)


//카드 호버이벤트
/*const $card = $(".card");
const $diary = $(".diary");
const $flip = $(".flip");
const $q2 = $(".q2");
const $a2 = $(".a2");*/

/*function showContent(diaries){	
	$.each(diaries, function(index1, diary){
		if (diary.diaryPublic == "off"){
			$.each($diary, function(index2, item){
				$(item).mouseover(function() {
					console.log("우웩2");
					$($card[index2]).css("visibility","hidden");
					$($q2[index2]).css("visibility","visible");
					$($a2[index2]).css("visibility","visible");
				});
				$(item).mouseout(function() {
					console.log("우웩3");
					$($card[index2]).css("visibility","visible");
					$($q2[index2]).css("visibility","hidden");
					$($a2[index2]).css("visibility","hidden");
				});   
			})		
		}
	})
}*/


// 카드 헤드 이벤트(호버, 클릭)
const $diaryHeaderActionLike = $(".diaryHeaderActionLike");
const $heart = $diaryHeaderActionLike.children("img");
const $diaryHeaderActionReport = $(".diaryHeaderActionReport");
const $siren = $diaryHeaderActionReport.children("img");
const $likeCount = $(".likeCount")

var check = false

$.each($diaryHeaderActionLike, function(index, item){
    $(item).mouseenter(function() {
        console.log("우웩4");
        $($heart[index]).attr("src","https://blog.kakaocdn.net/dn/MozTl/btrviJt5Cld/sk6MbDUBFWQBmNNX8takQ1/img.png");
    });
    $(item).mouseout(function() {
        console.log("우웩5");
        $($heart[index]).attr("src","https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FblsNAi%2Fbtrvgm7hd28%2FSfdLBvfwjHr4sAktHOTCek%2Fimg.png");
    });
    $(item).click(function() {
        console.log("우웩6");
        $($heart[index]).attr("src","https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FmSzWa%2Fbtru8H47iAa%2FROhS1ItoKd6JnP3uEKMNN0%2Fimg.png")
        if(check == false) {
            var count = Number($($likeCount[index]).text());
            count = parseInt(count) + 1;
            check = true;
            $($likeCount[index]).text(count);
        }else {
            var count = Number($($likeCount[index]).text());
            count = parseInt(count) - 1;
            $($likeCount[index]).text(count);
            check = false;
        }
    });
})     


/*console.log($diaryHeaderActionReport);
console.log($siren);
$.each($diaryHeaderActionReport, function(index, item){
    $(item).mouseenter(function() {
        console.log("우웩7");
        $($siren[index]).attr("src","https://blog.kakaocdn.net/dn/bfLKB5/btrvdvp3AVD/E49asvNJStAy0XrbN1qtrk/tfile.svg");
    });
    $(item).mouseout(function() {
        console.log("우웩8");
        $($siren[index]).attr("src","https://blog.kakaocdn.net/dn/bTtwTL/btrvcH5lOQp/avDvy5beDkEdLAXKGdLDo1/tfile.svg");
    });       
}) */  



// 다이어리 작성으로 
function writeDiary() {
	location.href = contextPath + "/app/diary/diaryWrite.jsp";
};


// 색깔별 다이어리 보기
const $color = $("div.color");
var $diaryColor ="";
$.each($color, function(index, item){
    $(this).click(function(){
    	$color.css("opacity","50%");
        $($color[index]).css("opacity","100%");
        $($color[index]).css({"width":"100%", "height":"100%", "align-items":"center"});
        $diaryColor = $($color[index]).attr("id");
        console.log($diaryColor);
//        location.href = contextPath + "/diary/DiaryColorSortOk.di?diaryColor=" + $diaryColor
        getList();
        getContent();
    });
}) 

getList();

function getList(){
	$.ajax({
		url: contextPath + "/diary/DiaryColorSortOk.di?diaryColor=" + $diaryColor,
		type: "get",
		dataType: "json", 
//		data: {diaryColor, $diaryColor},
		contentType: "application/json;charset=utf-8",
		success: showCardByColor,
		error: function(a, b, c){
			console.log("오류" + c);
		}
	});	
}

// 색깔별 분류    
function showCardByColor(diaries) {
	var text = "";
	if(diaries != null && diaries.length != 0){
		$.each(diaries, function(index, diary){
			text +=	"<div class='diaryWrapper'>"
			text +=	"<div class='diary'>"
			text += 	"<div class= "+diary.diaryFileName+">"
			text +=			"<div class='diaryHeader'>"
			if (diary.diaryAnonymous == "on" || diary.diaryPublic == "on") {
				text +=				"<div class='nickname'>비공개</div>"							
			}else if(diary.diaryAnonymous == "off" && diary.diaryPublic == "off") {
				text +=				"<div class='nickname'>"+diary.userNickname+"</div>"				
			}else {
				console.log("nickname error");
			}
			text +=				"<div class='diaryHeaderActions'>"
			text +=					"<div class='diaryHeaderActionLike'>"
			text +=						"<img class='heart' src='https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FblsNAi%2Fbtrvgm7hd28%2FSfdLBvfwjHr4sAktHOTCek%2Fimg.png' alt=''>"
			text +=					"</div>"
			text +=					"<div class='likeCount'>"+diary.diaryLikeCount+"</div>"
			text +=				"</div>"
			text +=			"</div>"
			switch (diary.diaryFileName) {
				case "card1" :
					text +=	"<div class='card card1'>"
				break
				case "card2" :
					text +=	"<div class='card card2'>"
				break
				case "card3" :
					text +=	"<div class='card card3'>"
				break
				case "card4" :
					text +=	"<div class='card card4'>"
				break
				case "card5" :
					text +=	"<div class='card card5'>"
				break
				case "card6" :
					text +=	"<div class='card card6'>"
				break
				case "card7" :
					text +=	"<div class='card card7'>"
				break
				case "card8" :
					text +=	"<div class='card card8'>"
				break
				case "card9" :
					text +=	"<div class='card card9'>"
				break
				case "card10" :
					text +=	"<div class='card card10'>"
				break
				case "card11" :
					text +=	"<div class='card card11'>"
				break
				case "card12" :
					text +=	"<div class='card card12'>"
				break
				case "card13" :
					text +=	"<div class='card card13'>"
				break
				case "card14" :
					text +=	"<div class='card card14'>"
				break
				default:
					console.log("스위치문 1 오류");
				break
			}	
//			text +=			"<div class='card "+diary.diaryFileName+"'>"
			text +=				"<p class='a2' id="+diary.diaryNumber+">"
			text +=				"<a href = '"+contextPath +"/diary/DiaryDetailOk.di?diaryNumber="+diary.diaryNumber+"'>"+diary.diaryContent2+"</a></p>"
			text +=				"<p class='q2'></p>"
			text +=			"</div>"
			text +=			"<div class='triangle'></div>"
			text +=			"<div class='emotionWrapper'>"
			text +=				"<div class='emotion'>"	
			switch (diary.diaryFileName) {
				case "card1" :
					text +=					"<span>사랑스러워</span>" 
				break
				case "card2" :
					text +=					"<span>피곤해</span>" 
				break
				case "card3" :
					text +=					"<span>용기있어</span>" 
				break
				case "card4" :
					text +=					"<span>행복해</span>" 
				break
				case "card5" :
					text +=					"<span>화나</span>" 
				break
				case "card6" :
					text +=					"<span>자신있어</span>" 
				break
				case "card7" :
					text +=					"<span>불안해</span>" 
				break
				case "card8" :
					text +=					"<span>기뻐</span>" 
				break
				case "card9" :
					text +=					"<span>미안해</span>" 
				break
				case "card10" :
					text +=					"<span>좌절스러워</span>" 
				break
				case "card11" :
					text +=					"<span>감동적이야</span>" 
				break
				case "card12" :
					text +=					"<span>안타까워</span>" 
				break
				case "card13" :
					text +=					"<span>편안해</span>" 
				break
				case "card14" :
					text +=					"<span>놀라워</span>" 
				break
				default:
					log.console("스위치문 2 오류");
				break
			}
			text +=	           "</div>"
			text +=	        "</div>"
			text +=	    "</div>"
			text +=	"</div>"
			text +=	"</div>"
		});
	}else {
		console.log("다이어리 값 입력 실패");
	}	
	$(".diaries").html(text);
}

getContent();

//감정일기 호버이벤트로 내용 공개해줌
function getContent(){
	$.ajax({
		url: contextPath + "/diary/DiaryColorSortOk.di?diaryColor=" + $diaryColor,
		type: "get",
		dataType: "json", 
//		data: {diaryColor, $diaryColor},
		contentType: "application/json;charset=utf-8",
		success: function showContent(diaries){	
			const $card = $(".card");
			const $diary = $(".diary");
			const $q2 = $(".q2");
			const $a2 = $(".a2");
			$.each(diaries, function(index, diary){
				if (diary.diaryPublic == "off"){
					$($diary[index]).mouseover(function() {
						console.log("우웩2");
						$($card[index]).css("visibility","hidden");
						$($q2[index]).css("visibility","visible");
						$($a2[index]).css("visibility","visible");
					});
					$($diary[index]).mouseout(function() {
						console.log("우웩3");
						$($card[index]).css("visibility","visible");
						$($q2[index]).css("visibility","hidden");
						$($a2[index]).css("visibility","hidden");
					});   		
				}
			})
		},
		error: function(a, b, c){
			console.log("오류" + c);
		}
	});	
}
