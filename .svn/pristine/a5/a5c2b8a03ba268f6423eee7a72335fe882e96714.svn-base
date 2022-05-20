// 질문 버튼 담기
const $btns = $('.QnA_content1');

// 대답 창 담기
const $aw = $('.QnA_content3');


// 결제 버튼 담기
const $payBtns = $('.consult_type_info');

$.each($payBtns, function(index, item) {
	$(item).click(function() {
		//클릭한 div객체를 통해 4개의 정보를 가져온다
//		상담 타이틀
		var consultTitle = $(this).find('.consult_type_info_content1').text();
//		상담 공식 가격
		var consultPrice = $(this).find('.consult_type_info_pay1').text();
//		상담 할인 가격
		var consultSalePrice = $(this).find('.consult_type_info_pay2').text();
		var consultType = $(this).parents('div.conlut_type_wrapper2').find('.consult_type_content_title').text();
		
		//form태그의 input태그에 value를 각 정보로 수정한다.
		$('#consultType').val(consultType);
		$('#consultTitle').val(consultTitle);
		$('#consultPrice').val(consultPrice);
		$('#consultSalePrice').val(consultSalePrice);
		$('#userNumberExpert').val(userNumberExpert);
		
		console.log($('#consultType').val());
		console.log($('#consultTitle').val());
		console.log($('#consultPrice').val());
		console.log($('#consultSalePrice').val());
		console.log($('#userNumberExpert').val());
		//form태그를 submit한다.
		paymentForm.submit();
	});
});


// 질문 클릭시 토글 기능
$.each($btns, function(index, item){
	$(item).click(function(){
		$($aw[index]).toggle();
	});
});


