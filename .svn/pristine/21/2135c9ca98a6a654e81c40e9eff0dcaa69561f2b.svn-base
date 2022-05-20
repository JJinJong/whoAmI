const $booking = $(".bookingStatus");
const $Type = $(".Typebutton");


		$.each($booking, function(index, item){
			console.log("상담상태체크"+$(item).text());
			if($(item).text() == 0) {
				$("#TB button").show();
				$(item).text("예약대기");
			}
			if($(item).text() == 1) {
				$("#TB button").show();
				$(item).text("진행중");
			}
			if($(item).text() == 2) {
				console.log("2로 들어옴"+$(item).text());
				$("#TB button").hide();
	            $(item).text("상담완료");
	         }
		});
		
		console.log("테스트오버"+$(".bookingStatus").text());
		if($(".bookingStatus").text() == 2){
			$("#TB button").hide();
		}

		
function onGoing(consultPaymentDetailNumber) {
	location.href = contextPath + "/expertPage/ConsultGoUpdate.ddy?consultPaymentDetailNumber="+consultPaymentDetailNumber;
};

function theEnd(consultPaymentDetailNumber) {
	location.href = contextPath + "/expertPage/ConsultEndUpdate.ddy?consultPaymentDetailNumber="+consultPaymentDetailNumber;
};
