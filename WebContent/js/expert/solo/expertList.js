/**
 * 
 */
const $category = $('.category');
console.log($category);

function change(item){
	$category.css("color", "rgb(136, 136, 136)")
	$category.css("background-color", "white")
	$category.css("font-weight", "500")
	
	$(item).css("background-color", "rgb(140, 204, 201)");
	$(item).css("color", "#fff");
	$(item).css("font-weight", "bold");
	$(item).css("border-radius", "18px");
}

// 가격순 가져오기
function getListPrice(){
	$.each($category, function(index, item) {
		$(item).click(function() {
			change(item);
		});
	});

		
	$.ajax({
       // url: contextPath + "/board/BoardReplyListOk.bo?boardNumber=" + boardNumber,
       url: contextPath + "/expert/ExpertListPriceOk.me",
       type: "get",
        dataType: "json", //text일 경우 dataType 생략 가능
//       contentType: "application/json;charset=utf-8",
       success: showList,
       error: function(a, b, c){
       console.log("오류" + c);
       }
   });
   
};

// 프로필 목록
var profileList;
var check = false;

getList();

//댓글 목록
function getList(){
   $.ajax({
       // url: contextPath + "/board/BoardReplyListOk.bo?boardNumber=" + boardNumber,
       url: contextPath + "/expert/ExpertListOk.me",
       type: "get",
        dataType: "json", //text일 경우 dataType 생략 가능
//       contentType: "application/json;charset=utf-8",
       success: showList,
       error: function(a, b, c){
       console.log("오류" + c);
       }
   });
   
	$.each($category, function(index, item) {
		$(item).click(function() {
			change(item);
		});
	});
};



//프로필 필터된
function showListfilter(profiles){
	$category.css("color", "rgb(136, 136, 136)")
	$category.css("background-color", "white")
	$category.css("font-weight", "500")
	var text = "";
	if(profiles != null && profiles.length != 0){
		$.each(profiles, function(index, profile){
			text +=   "<div class='expert_profile' onclick='ProfileSend(" + profile.managerProfileNumber + ")'>"
			text +=		"<div class='exepert_img'>"
				text +=			"<img src='"+contextPath+"/upload/"+profile.managerPictureNameOrignal+"'>"
				text +=		"</div>"
					text +=		"<div class='expert_intro'>"
						text +=			"<div class='expert_name'>"+profile.managerName+"</div>"
						text +=			"<div class='exepert_content'>"+profile.managerIntroduce+"</div>"
						text +=			"<div class='consult'>"
							if(profile.managerconsultText != null){
								text +=				"<div class='consult_style'>"+profile.managerconsultText+"</div>"
							}
			if(profile.managerconsultVoice != null){
				text +=				"<div class='consult_style'>"+profile.managerconsultVoice+"</div>"
			}
			if(profile.managerconsultMeet != null){
				text +=				"<div class='consult_style'>"+profile.managerconsultMeet+"</div>"
			}
			text +=			"</div>"
				text +=		"</div>"
					text +=	"</div>"
		});
	}else{
		//댓글 없음
		text = "<p>프로필이 없습니다.</p>";
	}
	
	$("#wrapper_expert").html(text);
}

//프로필 목록
function showList(profiles){
    var text = "";
    if(profiles != null && profiles.length != 0){
        $.each(profiles, function(index, profile){
        	text +=   "<div class='expert_profile' onclick='ProfileSend(" + profile.managerProfileNumber + ")'>"
        	text +=		"<div class='exepert_img'>"
        	text +=			"<img src='"+contextPath+"/upload/"+profile.managerPictureNameOrignal+"'>"
        	text +=		"</div>"
        	text +=		"<div class='expert_intro'>"
        	text +=			"<div class='expert_name'>"+profile.managerName+"</div>"
        	text +=			"<div class='exepert_content'>"+profile.managerIntroduce+"</div>"
        	text +=			"<div class='consult'>"
        	if(profile.managerconsultText != null){
        		text +=				"<div class='consult_style'>"+profile.managerconsultText+"</div>"
        	}
        	if(profile.managerconsultVoice != null){
        		text +=				"<div class='consult_style'>"+profile.managerconsultVoice+"</div>"
        	}
        	if(profile.managerconsultMeet != null){
        		text +=				"<div class='consult_style'>"+profile.managerconsultMeet+"</div>"
        	}
        	text +=			"</div>"
        	text +=		"</div>"
        	text +=	"</div>"
        });
    }else{
        //댓글 없음
        text = "<p>프로필이 없습니다.</p>";
    }

   $("#wrapper_expert").html(text);
}

function ProfileSend(managerProfileNumber) {
	 location.href=contextPath+"/expert/ExpertProfileDetailOk.me?managerProfileNumber=" + managerProfileNumber;
}


var check_filter = false;

// 필터 버튼
const $filter_button = $('.filter');
// 필터 리스트
const $filter_list = $('.filter_content_wrapper');
// 필터 종료 버튼
const $filter_exit_button = $('.filter_content_header_cancel');
// 필터 카테고리 리셋 버튼
const $filter_reset_button = $('.filter_content_footer_reset');
// 필터 카테고리 적용 버튼
const $filter_regist_button = $('.filter_content_footer_button');
// 필터 체크박스
const $checkBoxes = $('input[type=checkbox]');


// 필터 보이기
$filter_button.on('click', function(){
		$filter_list.show();
		$checkBoxes.prop("checked", false);
		$('body').css("overflow", "hidden");
});

// 필터 취소
$filter_exit_button.on('click', function(){
	$filter_list.hide();
	$('body').css("overflow", "auto");
});

// 필터 리셋
$filter_reset_button.click(function() {
	$checkBoxes.prop("checked", false);
});

// 필터 등록
function keywordFilter() {
	  var formData = $("#filterForm").serialize();
	
	$filter_list.hide();
	$('body').css("overflow", "auto");
	
	   $.ajax({
	       url: contextPath + "/expert/ExpertListFilterOk.me",
	       dataType: "json",
	       data: formData,
	       success: showListfilter,
	       error: function(a, b, c){
	       console.log("오류" + c);
	       }
	  });
};

// 지도 관련 로직
// 지도 클릭 버튼
const $map_button = $($('.category')[3]);
// 지도 리스트 창
const $map_list = $('.bigWrapper');

var check_map = false;

$map_button.click(function(){
	if(check_map == false){
		$map_list.show();
		window.setTimeout(function() {
		    map.relayout();
		}, 0);
		check_map = true;
	}else{
		$map_list.hide();
		check_map = false;
	}
});


// 지도
var mapContainer = document.getElementById('map'), // 지도의 중심좌표
mapOption = { 
    center: new kakao.maps.LatLng(33.452701, 126.571667), // 지도의 중심좌표
    level: 3 // 지도의 확대 레벨
}; 

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

//지도에 마커를 표시합니다 
var marker = new kakao.maps.Marker({
map: map, 
position: new kakao.maps.LatLng(33.453701, 126.570667)
});

var marker2 = new kakao.maps.Marker({
map: map, 
position: new kakao.maps.LatLng(33.450301, 126.572967)
});

var marker3 = new kakao.maps.Marker({
map: map, 
position: new kakao.maps.LatLng(33.452001, 126.574467)
});

//커스텀 오버레이에 표시할 컨텐츠 입니다
//커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
//별도의 이벤트 메소드를 제공하지 않습니다 
var content = '<div class="wrap">' + 
        '    <div class="info">' + 
        '        <div class="title">' + 
        '            심 창 환' + 
        '            <div class="close" onclick="closeOverlay()" title="닫기"></div>' + 
        '        </div>' + 
        '        <div class="body">' + 
        '            <div class="img">' +
        '                <img src="http://atommerce.s3-ap-northeast-2.amazonaws.com/ce0d15e6ffcac73c4e19b5b62f9fe80a79edf3757803f1525b3e01a132c4c986" width="73" height="70">' +
        '           </div>' + 
        '            <div class="desc">' + 
        '                <div class="ellipsis">팀장</div>' + 
        '                <div class="jibun ellipsis">(우) 63309 (지번) 영평동 2181</div>' + 
        '                <div><a href="https://www.kakaocorp.com/main" target="_blank" class="link">홈페이지</a></div>' + 
        '            </div>' + 
        '        </div>' + 
        '    </div>' +    
        '</div>';
        
var content2 = '<div class="wrap">' + 
        '    <div class="info">' + 
        '        <div class="title">' + 
        '            최 동 영' + 
        '            <div class="close" onclick="closeOverlay2()" title="닫기"></div>' + 
        '        </div>' + 
        '        <div class="body">' + 
        '            <div class="img">' +
        '                <img src="http://atommerce.s3-ap-northeast-2.amazonaws.com/c6c383b98f3d291ad5b40624d50f1f29db27dc2b6c0293cd57ca91d7629d5f53" width="73" height="70">' +
        '           </div>' + 
        '            <div class="desc">' + 
        '                <div class="ellipsis">제주특별자치도 제주시 첨단로 242</div>' + 
        '                <div class="jibun ellipsis">오류가 난다요</div>' + 
        '                <div><a href="https://www.kakaocorp.com/main" target="_blank" class="link">홈페이지</a></div>' + 
        '            </div>' + 
        '        </div>' + 
        '    </div>' +    
        '</div>';
        
var content3 = '<div class="wrap">' + 
        '    <div class="info">' + 
        '        <div class="title">' + 
        '            공도윤' + 
        '            <div class="close" onclick="closeOverlay3()" title="닫기"></div>' + 
        '        </div>' + 
        '        <div class="body">' + 
        '            <div class="img">' +
        '                <img src="http://atommerce.s3-ap-northeast-2.amazonaws.com/7933f0b3bf3bad3adc15d6443eef0090efd66c5c447fccf0e1e7f8e182c8b0c7.jpg" width="73" height="70">' +
        '           </div>' + 
        '            <div class="desc">' + 
        '                <div class="ellipsis">강남 역삼역 3번 출구</div>' + 
        '                <div class="jibun ellipsis">세미콜론</div>' + 
        '                <div><a href="'+contextPath+'/app/expert/solo/expertProfile.jsp" target="_blank" class="link">홈페이지</a></div>' + 
        '            </div>' + 
        '        </div>' + 
        '    </div>' +    
        '</div>';

//마커 위에 커스텀오버레이를 표시합니다
//마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
var overlay = new kakao.maps.CustomOverlay({
content: content,
map: map,
position: marker.getPosition()       
});

var overlay2 = new kakao.maps.CustomOverlay({
content: content2,
map: map,
position: marker2.getPosition()       
});

var overlay3 = new kakao.maps.CustomOverlay({
content: content3,
map: map,
position: marker3.getPosition()       
});

var overlays = [];

overlays.push(overlay);
overlays.push(overlay2);
overlays.push(overlay3);


//마커를 클릭했을 때 커스텀 오버레이를 표시합니다
kakao.maps.event.addListener(marker, 'click', function() {
overlay.setMap(map);
});

//마커를 클릭했을 때 커스텀 오버레이를 표시합니다
kakao.maps.event.addListener(marker2, 'click', function() {
overlay2.setMap(map);
});

//마커를 클릭했을 때 커스텀 오버레이를 표시합니다
kakao.maps.event.addListener(marker3, 'click', function() {
overlay3.setMap(map);
});

//커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
function closeOverlay() {
overlay.setMap(null);     
}

function closeOverlay2() {
overlay2.setMap(null);     
}

function closeOverlay3() {
overlay3.setMap(null);     
}



// 내 위치 표시

//커스텀 오버레이에 표시할 내용입니다     
//HTML 문자열 또는 Dom Element 입니다 
var content4 = '<div class ="label"><span class="left"></span><span class="center">현재 주소</span><span class="right"></span></div>';

//커스텀 오버레이가 표시될 위치입니다 
var position4 = new kakao.maps.LatLng(33.452701, 126.571667);  

//커스텀 오버레이를 생성합니다
var customOverlay2 = new kakao.maps.CustomOverlay({
  position: position4,
  content: content4   
});

//커스텀 오버레이를 지도에 표시합니다
customOverlay2.setMap(map);
