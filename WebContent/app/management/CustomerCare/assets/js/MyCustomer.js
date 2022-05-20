/**
* 일정 선택 
*/
const $button__1 = $('#button__1');
const $commentStatusSelected = $('#commentStatusSelected');
const $commentStatusSelected_OR = $('#commentStatusSelected-OR');
var check = false;

console.log("들어옴0");

$(button1).click(function (){
	console.log("들어옴1");
	if(check == false) {
		console.log("들어옴2");
		$commentStatusSelected_OR.hide();
		$commentStatusSelected.show();
		check = true;
		console.log("들어옴3");
	} else {
		console.log("들어옴4");
		$commentStatusSelected.hide();
		$commentStatusSelected_OR.show();
		check = false;
	}
});



/**
 * 일정 수정 토글 
 */
const $btn_toggle2 = $('#btn_toggle2');
const $Toggle2 = $('#Toggle2');


$(function (){
	$(btn_toggle2).click(function (){
  	$(Toggle2).toggle();
  });
});

/**
 * 일정 선택 
 */
const $year = $('.Status3');
const $year_selected = $('#status-selected2');
const $yearselet = $('.selected2');


$.each($year, function(index, item){
	   $(item).click(function(){
		  $year.removeClass("selected2");
	      $($year[index]).toggleClass("selected2");
	      var $text = $('.selected2').text();
	      $year_selected.text($text);
	      $("#Toggle2").hide();
	   });
	})






