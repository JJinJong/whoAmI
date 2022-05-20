/**
 * 
 */

getList();

// 색깔별 분류    
function showCardByColor(diaries) {
	var text = "";
	if(diaries != null && diaries.length != 0){
		$.each(diaries, function(index, profile){
			text +=	"<div class='diaryWrapper'>"
			text +=	"<div class='diary'>"
			text += 	"<div class= "+diary.diaryFileName+">"
			text +=			"<div class='diaryHeader'>"
			text +=				"<div class='nickname'>"+diary.userNickname+"</div>"
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
					log.console("스위치문 1 오류");
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
		
	}
	
	$(".diaries").append(text);	
}

function getList(){
	$.ajax({
		url: contextPath + "/diary/DiaryColorSortOk.di?diaryColor="+$diaryColor ,
		type: "get",
		dataType: "json", 
		contentType: "application/json;charset=utf-8",
		success: showCardByColor(diaries),
		error: function(a, b, c){
			console.log("오류" + c);
		}
	});	
}

//text +=	"<div class='diaryWrapper'>"
//text +=	"<div class='diary'>"
//text += 	"<div class= '"+diary.diaryFileName+"'>"
//text +=			"<div class='diaryHeader'>"
//text +=				"<div class='nickname'>"+diary.userNickname+"</div>"
//text +=				"<div class='diaryHeaderActions'>"
//text +=					"<div class='diaryHeaderActionLike'>"
//text +=						"<img class='heart' src='https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FblsNAi%2Fbtrvgm7hd28%2FSfdLBvfwjHr4sAktHOTCek%2Fimg.png' alt=''>"
//text +=					"</div>"
//text +=					"<div class='likeCount'>"+diary.diaryLikeCount+"</div>"
//text +=				"</div>"
//text +=			"</div>"
//text +=			"<div class='card ${diary.getDiaryFileName()}'>"
//text +=				"<p class='a2' id='"+diary.diaryNumber+"'>"
//text +=				"<a href = '"+contextPath +"/diary/DiaryDetailOk.di?diaryNumber="+diary.diaryNumber+"'>"+diary.diaryContent2+"</a></p>"
//text +=				"<p class='q2'></p>"
//text +=			"</div>"
//text +=			"<div class='triangle'></div>"
//text +=			"<div class='emotionWrapper'>"
//text +=				"<div class='emotion'>"
	
//switch (diary.diaryFileName) {
//	case "card1" :
//		text +=					"<span>사랑스러워</span>" 
//	break
//	case "card2" :
//		text +=					"<span>피곤해</span>" 
//	break
//	case "card3" :
//		text +=					"<span>용기있어</span>" 
//	break
//	case "card4" :
//		text +=					"<span>행복해</span>" 
//	break
//	case "card5" :
//		text +=					"<span>화나</span>" 
//	break
//	case "card6" :
//		text +=					"<span>자신있어</span>" 
//	break
//	case "card7" :
//		text +=					"<span>불안해</span>" 
//	break
//	case "card8" :
//		text +=					"<span>기뻐</span>" 
//	break
//	case "card9" :
//		text +=					"<span>미안해</span>" 
//	break
//	case "card10" :
//		text +=					"<span>좌절스러워</span>" 
//	break
//	case "card11" :
//		text +=					"<span>감동적이야</span>" 
//	break
//	case "card12" :
//		text +=					"<span>안타까워</span>" 
//	break
//	case "card13" :
//		text +=					"<span>편안해</span>" 
//	break
//	case "card14" :
//		text +=					"<span>놀라워</span>" 
//	break
//}
//text +=	           "</div>"
//text +=	        "</div>"
//text +=	    "</div>"
//text +=	"</div>"
//text +=	"</div>"
					

//text +=				"<c:when test='${diary.getDiaryFileName() == 'card1'}'>"
//text +=					"<span>사랑스러워</span>" 
//text +=				"</c:when>"
//text +=	            "<c:when test='${diary.getDiaryFileName() == 'card2'}'>"
//text +=	                "<span>피곤해</span>" 
//text +=	            "</c:when>"
//text +=	            "<c:when test='${diary.getDiaryFileName() == 'card3'}'>"
//text +=	                "<span>용기있어</span>" 
//text +=	            "</c:when>"
//text +=	            "<c:when test='${diary.getDiaryFileName() == 'card4'}'>"
//text +=	                "<span>행복해</span>" 
//text +=	            "</c:when>"
//text +=	            "<c:when test='${diary.getDiaryFileName() == 'card5'}'>"
//text +=	                "<span>화나</span>" 
//text +=	            "</c:when>"
//text +=	            "<c:when test='${diary.getDiaryFileName() == 'card6'}'>"
//text +=	                "<span>자신있어</span>" 
//text +=	            "</c:when>"
//text +=	            "<c:when test='${diary.getDiaryFileName() == 'card7'}'>"
//text +=	                "<span>불안해</span>" 
//text +=	            "</c:when>"
//text +=	            "<c:when test='${diary.getDiaryFileName() == 'card8'}'>"
//text +=	                "<span>기뻐</span>" 
//text +=	            "</c:when>"
//text +=	            "<c:when test='${diary.getDiaryFileName() == 'card9'}'>"
//text +=	                "<span>미안해</span>" 
//text +=	            "</c:when>"
//text +=	            "<c:when test='${diary.getDiaryFileName() == 'card10'}'>"
//text +=	                "<span>좌절스러워</span>" 
//text +=	            "</c:when>"
//text +=	            "<c:when test='${diary.getDiaryFileName() == 'card11'}'>"
//text +=	                "<span>감동적이야</span>" 
//text +=	            "</c:when>"
//text +=	            "<c:when test='${diary.getDiaryFileName() == 'card12'}'>"
//text +=	                "<span>안타까워</span>" 
//text +=	            "</c:when>"
//text +=	            "<c:when test='${diary.getDiaryFileName() == 'card13'}'>"
//text +=	                "<span>편안해</span>" 
//text +=	            "</c:when>"
//text +=	            "<c:otherwise>"
//text +=	                "<span>놀라워</span>" 
//text +=	            "</c:otherwise>"
//text +=	            "</c:choose>"





