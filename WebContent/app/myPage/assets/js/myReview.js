//댓글 목록
var infoList;
var check = false;

console.log("리뷰들어왓지"+infoList)
// ajax
function getMyReviewList() {
	$.ajax({
		async: false,
		url : contextPath + "/userMyPage/MyReviewListOk.dy",
		type : "get",
		dataType : "json",
		success:showMyReviewList
	    ,error:function(a, b, c) {
			console.log("오류" + c);
	    }
	});
};


//목록+수정+삭제+보기
function showMyReviewList(infoList) {
	console.log("리뷰실행들어옴?");
	console.log(infoList);
	var text = "";
	if (infoList != null && infoList.length != 0) {
		$.each( infoList, function(index, infoOne) {
			
			text +='<input data-index="' + index + '" type="hidden" class="reviewNumber" name="reviewNumber" value="'+ infoOne.consultReviewNumber +'"> '
			text +='<input data-index="' + index + '" type="hidden" class="managerProfileNumber" name="managerProfileNumber" value="'+infoOne.managerProfileNumber+'"> '
			text += '<div id="story-comments" class="Comments__CommentsWrapper-sc-1m6x198-0 jzhOmf" style="padding-top: 40px; margin-top: -40px;">'
			text += '    <div class="story-comments">'
			text += '        <div class="Comment__CommentWrapper-sc-1u7skh9-2 ZXrVs">'
			text += '           <div class="header">'
			text += '               <div class="profile ">'
			text += '                  <div class="nickname ">😺:'
				+ infoOne.userNickName + '님의 리뷰</div>'
			text += '              </div>'
			text += '              <div class="info">'
			text += '                 <div class="from-now">'
			text += '                     <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 512 512" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">'
			text += '                          <path d="M256 8C119 8 8 119 8 256s111 248 248 248 248-111 248-248S393 8 256 8zm0 448c-110.5 0-200-89.5-200-200S145.5 56 256 56s200 89.5 200 200-89.5 200-200 200zm61.8-104.4l-84.9-61.7c-3.1-2.3-4.9-5.9-4.9-9.7V116c0-6.6 5.4-12 12-12h32c6.6 0 12 5.4 12 12v141.7l66.8 48.6c5.4 3.9 6.5 11.4 2.6 16.8L334.6 349c-3.9 5.3-11.4 6.5-16.8 2.6z"></path>'
			text += '                      </svg>'
			text += '              					'+ infoOne.consultReviewDate + '</div>'
			text += '             	<div class="more">'
			text += '                      <svg  class="reviewOptionToggleBF" data-index="' + index + '" id="reviewOptionToggleBF" stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 512 512" height="1em" width="1em" '
			text += '								xmlns="http://www.w3.org/2000/svg"><path d="M296 136c0-22.002-17.998-40-40-40s-40 17.998-40 40 17.998 40 40 40 40-17.998 40-40zm0 240c0-22.002-17.998-40-40-40s-40 17.998-40 40 17.998 40 40 40 40-17.998 40-40zm0-120c0-22.002-17.998-40-40-40s-40 17.998-40 40 17.998 40 40 40 40-17.998 40-40z"></path>'
			text += '                      </svg>'
			text += '                      <div class="More__MoreWrapper-indjn2-0 cLrShV reviewOptionToggleAF" id="reviewOptionToggleAF" >'
			text += '                          <div class="action reviewDetail" data-index="' + index + '">보기</div>'	
			text += '                          <div class="action reviewModifyOk" id="reviewModifyOk" data-index="' + index + '">수정</div>'
			text += '                      </div>'
			text += '				</div>'
			text += '			</div>'
			text += '		</div>'
			text += ' <div class="reviewModifyBF">'
			text += '<div class="review">'+ infoOne.consultReviewContent + '</div>'
			text += '</div>'
			text += '<div class="reviewModifyAF" style="display:none">'
			text += '<div class="CommentWrite__CommentWriteWrapper-sc-1lrpcsu-0 ikBDcZ">'
			text += '<textarea data-index="' + index + '" placeholder="리뷰를 작성해 주세요" class="contents reviewOriginal EditReview" style="height: 36px;">'+ infoOne.consultReviewContent + '</textarea>'
			text += '<button class="btn submit reviewUpdateOk" data-index="' + index + '" type="button">'
			text += '<svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 512 512" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">'
			text += '<path d="M186.301 339.893L96 249.461l-32 30.507L186.301 402 448 140.506 416 110z"></path>'
			text += '</svg>'
			text += '</button>'
			text += '<button class="btn cancle reviewUpdateBack" data-index="' + index + '" type="button">'
			text += '<svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 24 24" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">'
			text += '<path d="M19 6.41L17.59 5 12 10.59 6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 12 13.41 17.59 19 19 17.59 13.41 12z"></path>'
			text += '</svg>'
			text += '</button>'
			text += '</div>'
			text += '</div>'
			text += '</div>'
			text += '</div>'
			text += '</div>'

		});
	} else {
		text = "<p>댓글이 없습니다</p>";
	}
	$("#MyReview").html(text);
	//댓글 기능
	const $reviewOptionToggleBF = $('svg.reviewOptionToggleBF');
	const $reviewOptionToggleAF = $('div.reviewOptionToggleAF');
	const $reviewModifyOk = $('div.reviewModifyOk');
	const $reviewUpdateBack = $('div.reviewUpdateBack');
	const $reviewDelete = $("div.reviewDelete");
	const $reviewModifyBF=$('div.reviewModifyBF');
	const $reviewModifyAF=$('div.reviewModifyAF');


	//밖 토글
	$(".reviewOptionToggleBF").each(function(index, item){
		$(item).click(function(){
			$($reviewOptionToggleAF[index]).toggle();
		})
	});
	//안 토글
	$(".reviewUpdateBack").each(function(index, item){
		$(item).click(function(){
			console.log("닫기")
			$($reviewModifyBF[index]).find(".review").show();		
			$($reviewModifyAF[index]).hide();	
		})
	});
	$(".reviewModifyOk").each(function(index, item){
		$(item).click(function(){
			console.log("열기")
			$($reviewModifyBF[index]).find(".review").hide();		
			$($reviewModifyAF[index]).show();
			$($reviewOptionToggleAF).hide();
		})
	});
			
	//수정완료버튼
	$(".reviewUpdateOk").each(function(index, item){
		$(item).click(function(){
			console.log("수정완료버튼 들어옴?");
			const reviewNumber=$($(".reviewNumber")[index]).val();
			const EditReview=$($(".EditReview")[index]).val();
			if (confirm("정말 수정하시겠습니까 ?")) {
				$.ajax({
					url : contextPath + "/userMyPage/MyReviewUpDateOk.dy",
					type : 'get',
					data : { "reviewNumber" : reviewNumber,"reviewContent" : EditReview},
					datatype:"JSON",
					success : function(res){
						alert('수정 완료');
						getMyReviewList();
					},
			        error: function(){console.log("오류");}
				})
			}	
		})
	});	

	//상세보기
			$(".reviewDetail").each(function(index, item){
				$(item).click(function(){
					const managerProfileNumber=$($(".managerProfileNumber")[index]).val();
					console.log("들어옴?상세보기");
					location.href = contextPath + "/expert/ExpertProfileDetailOk.me?managerProfileNumber="+ managerProfileNumber;
				})
			});
	
}


