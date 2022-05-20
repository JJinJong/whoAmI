/**
 * 출생년도 토글 
 */
const $btn_toggle = $('#btn_toggle');
const $Toggle = $('#Toggle');


$(function (){
	$(btn_toggle).click(function (){
  	$(Toggle).toggle();
  });
});

/**
 * 출생년도 선택 
 */
const $year = $('.year');
const $year_selected = $('#year-selected');
const $yearselet = $('.selected');


$.each($year, function(index, item){
	   $(item).click(function(){
		  $year.removeClass("selected");
	      $($year[index]).toggleClass("selected");
	      var $text = $('.selected').text();
	      $year_selected.text($text);
	      $("#Toggle").hide();
	   });
	})

//$(yearselet).addEventListener("click", function (){
//   $year_selected.text($('.selected'));
//});



