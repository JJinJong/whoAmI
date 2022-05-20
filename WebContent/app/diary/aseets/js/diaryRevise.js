/**
 * 
 */






              
// 				  // 옵션 버튼 변경
//                const onoff = document.getElementsByClassName('on-off');
//                const label = document.getElementsByClassName('label');
//                onoff[0].onclick = function(){
//                    onoff[0].classList.toggle('off');
//                    label[0].classList.toggle('off');
//                };
//                onoff[1].onclick = function(){
//                    onoff[1].classList.toggle('off');
//                    label[1].classList.toggle('off'); 
//                };


                // 옵션 버튼 변경
                const $onoff = $(".on-off");
                const $label = $(".label");
                const $option = $(".inputOption");
                
                $.each($onoff, function(index, item){
                    $(item).click(function() {
                    	$($onoff[index]).toggleClass("off")
                    	$($label[index]).toggleClass("off")
                    	
                    	if($($onoff[index]).attr("class") == "on-off") {
                    		$($option[index]).val("on");
                    	}else {
                    		$($option[index]).val("off");
                    	}
                    });
                })


                
                
                

                
                // 감정 클릭 이벤트
                const $wrapper = $(".wrapper");
                const $cardWrapper =$(".cardWrapper");
                const $emotion = $(".emotion");
                const $card =$(".card");
                const $diaryFileName = $("#diaryFileName");
                
                $.each($wrapper, function(index, item){
                    $(this).click(function(){
                        console.log("우웩");
                        $wrapper.css("font-weight","400");
                        $card.css({"width":"90%", "height":"90%", "margin":"5% auto"});
                        $wrapper.css("opacity","30%");
                        $emotion.css({"margin-bottom":"3%", "margin-top":"0%", "width":"80%", "font-size":"1em"});
                        $($wrapper[index]).css("font-weight","600");
                        $($wrapper[index]).css("opacity","100%");
                        $($card[index]).css({"width":"98%", "height":"98%", "margin-top":"1%", "margin-bottom":"5%", "align-items":"center"});
                        $($emotion[index]).css({"margin":"0 auto", "margin-top":"3%", "width":"90%", "font-size":"1.2em"});
                        $diaryFileName.val($($card[index]).attr("id"));
                        console.log($diaryFileName.val());
                    });
                })
            
                
                // 위로하는 부분 보여주기
//                const $q = $(".q");
//                const $a = $(".a");
//                const $comfort = $(".comfort");
        //
//                $.each($a, function(index, item){
//                    $(item).focusout(function() {
//                        $comfort.css("display","none");
//                        console.log("우웩2");
//                        $($comfort[index]).css("display","flex");
//                    });
//                })

                
                // 다이어리 저장
                $("#reviseDiary").click(function() {
                	if(!$("#a2").val()){
                		alert("2번 문항을 입력해주세요");	
                		$("#a2").focus();
                	}else if(!$("#a3").val()){
                		alert("3번 문항을 입력해주세요");				
                		$("#a3").focus();
                	}else if(!$("#a4").val()){
                		alert("4번 문항을 입력해주세요");				
                		$("#a4").focus();
                	}else if(!$("#a5").val()){
                		alert("5번 문항을 입력해주세요");				
                		$("#a5").focus();
                	}else if(!$("#a6").val()){
                		alert("6번 문항을 입력해주세요");				
                		$("#a6").focus();
                	}else if(!$("#a7").val()){
                		alert("7번 문항을 입력해주세요");	
                		$("#a7").focus();
                	}else if(!$("#a8").val()){
                		alert("8번 문항을 입력해주세요");					
                		$("#a8").focus();
                	}else{
                		$("#writeForm").submit();
                		console.log($("#writeForm"));
                	}
                });

       
                // 다이어리 삭제
                $("#deleteDiary").click(function() {
                	$("#writeForm").attr("action", contextPath+"/diary/DiaryDeleteOk.di");
                	console.log($("#writeForm"));
                	$("#writeForm").submit();
                });
                
                
                

        
        
  
        
        
