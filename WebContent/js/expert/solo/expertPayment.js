/**
 * 결제창 JS
 */
//결제 수단 버튼
const $pay_method_button = $('.payment_method_select');
//결제 수단 리스트(히든)
const $pay_method_list = $('.payment_method_select_hidden_wrapper1');
// 뒤로가기 아이콘
const $go_back_icon = $('.payment_arrow');
// 결제 수단 방법
const $pay_method = $('.payment_method_select')



var $arrow = $($('.payment_method_select').children().first());

var text = "";
var check = false;


// 쿠폰 호버 이벤트
$('.payment_coupon_selected').hover(function(){
    $(this).css("border", "1px solid rgb(255 184 184)");
}, function(){
    $(this).css("border", "1px solid rgb(221, 221, 221)");   
});

// 쿠폰 버튼 호버 이벤트
$('.payment_coupon_regist').hover(function(){
	$(this).css("box-shadow", "rgb(255 184 184) 0px 3px 6px");
}, function(){
	$(this).css("box-shadow", "rgb(0 0 0 / 30%) 0px 3px 6px");   
});

// 결제 수단 호버 이벤트
$('.payment_method_select').hover(function(){
    $(this).css("border", "1px solid rgb(255 184 184)");
}, function(){
    $(this).css("border", "1px solid rgb(221, 221, 221)");   
});




// 이용권 결제 호버 이벤트
$('.payment_footer_action').hover(function(){
    $(this).css("box-shadow", "rgb(255 184 184) 0px 3px 6px");
}, function(){
    $(this).css("box-shadow", "rgb(0 0 0 / 30%) 0px 3px 6px");   
});

text += "<div class='payment_method_select_hidden_wrapper2'>"
text += 	"<div class='payment_method_select_hidden' onclick='methodChange(this)'>"
text += 		"휴대폰 결제"
text += 	"</div>"
text += 	"<div class='payment_method_select_hidden' onclick='methodChange(this)'>"
text += 		"실시간 계좌이체"
text += 	"</div>"
text += 	"<div class='payment_method_select_hidden' onclick='methodChange(this)'>"
text += 		"신용카드"
text += 	"</div>"
text += "</div>"
	
	
$pay_method_button.on('click', function(){
    if(check == false){
        $pay_method_list.html(text);
        $arrow.css("transform", "rotate(180deg)");
        check = true;
    }else{
        $pay_method_list.html("");
        $arrow.css("transform", "rotate(360deg)");
        check = false;
    }
});


var pay_text = "";

function methodChange(e) {
	$pay_method_list.html("");
	$arrow.css("transform", "rotate(360deg)");
	$pay_method.text($(e).text());
	
	console.log($pay_method.text());
	
	if($pay_method.text() == "신용카드"){
		pay_text = 'card';
	}
	if($pay_method.text() == "실시간 계좌이체"){
		pay_text = 'trans';
	}
	if($pay_method.text() == "휴대폰 결제"){
		pay_text = 'phone';
	}
	
	console.log(pay_text);
	check = false;
}

// 뒤로 가기 호버 이벤트
$go_back_icon.hover(function(){
    $(this).css("background-color", "rgb(246 239 207)");
}, function(){
    $(this).css("background-color", "rgb(255 184 184)");    
});


// 가격 원 빼기 기능
var int_consultSalePrice = Number(consultSalePrice.replace(',', "").replace('원', ""));
var int_consultPrice = Number(consultPrice.replace(',', "").replace('원', ""));
var difference = int_consultPrice - int_consultSalePrice;

console.log(int_consultSalePrice);
console.log(int_consultPrice);

console.log(difference);

console.log(consultTitle);
console.log(consultType);
// 할인가격
const $discountPrice = $('.payment_discount_price');

$discountPrice.find('div:eq(1)').text(difference);





// 결제 api
$("#check_module").click(function () {
	var IMP = window.IMP; // 생략가능
	IMP.init('imp08993582');
	// 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
	// i'mport 관리자 페이지 -> 내정보 -> 가맹점식별코드
	IMP.request_pay({
	pg: 'inicis', // version 1.1.0부터 지원.
	/*
	'kakao':카카오페이,
	html5_inicis':이니시스(웹표준결제)
	'nice':나이스페이
	'jtnet':제이티넷
	'uplus':LG유플러스
	'danal':다날
	'payco':페이코
	'syrup':시럽페이
	'paypal':페이팔
	*/
	pay_method: pay_text,
	/*
	'samsung':삼성페이,
	'card':신용카드,
	'trans':실시간계좌이체,
	'vbank':가상계좌,
	'phone':휴대폰소액결제
	*/
	merchant_uid: 'merchant_' + new Date().getTime(),
	/*
	merchant_uid에 경우
	https://docs.iamport.kr/implementation/payment
	위에 url에 따라가시면 넣을 수 있는 방법이 있습니다.
	참고하세요.
	나중에 포스팅 해볼게요.
	*/
	name: consultTitle,
	//결제창에서 보여질 이름
//	amount: int_consultPrice,
	amount: 100,
	//가격
	buyer_email: userEmail,
	buyer_name: userName,
	buyer_tel: userHP,
	buyer_addr: userAddress,
	buyer_postcode: '123-456',
	m_redirect_url: 'https://www.yourdomain.com/payments/complete'
	/*
	모바일 결제시,
	결제가 끝나고 랜딩되는 URL을 지정
	(카카오페이, 페이코, 다날의 경우는 필요없음. PC와 마찬가지로 callback함수로 결과가 떨어짐)
	*/
	}, function (rsp) {
		console.log(rsp);
		if (rsp.success) {
			var msg = '결제가 완료되었습니다. \n고유ID : '+userEmail+"\n" +
					"결제 금액 : "+ int_consultPrice+"원";
			
			paymentForm.submit();
		} else {
			var msg = '결제에 실패하였습니다.';
			msg += '에러내용 : ' + rsp.error_msg;
		}
		alert(msg);
	});
});

