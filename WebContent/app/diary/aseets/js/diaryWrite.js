/**
 * 
 */

		// 날짜 가져오기
		var Target = document.getElementById("clock");
//		const diaryDate = document.getElementById("diaryDate");

		function clock() {
            var time = new Date();
            var year = time.getFullYear();
            var month = ('0' + (time.getMonth() + 1)).slice(-2);
            var date = ('0' + time.getDate()).slice(-2);
    
            Target.innerText = year + ". " + month + ". " + date + ". ";
            
            document.getElementById("diaryDate").value = year + "-" + month + "-" + date;
            console.log(diaryDate.value);
        }
        clock();
        setInterval(clock, 30000);
        
        
        // 옵션 버튼 변경
//        const onoff = document.getElementsByClassName("on-off");
//        const label = document.getElementsByClassName("label");
//
//        onoff[0].onclick = function(){
//            onoff[0].classList.toggle("off");
//            label[0].classList.toggle("off");
//            console.log(onoff[0].className);
//        };
//        
//        onoff[1].onclick = function(){
//            onoff[1].classList.toggle("off");
//            label[1].classList.toggle("off");
//        };
             
        
        // 감정 클릭 이벤트
        const $wrapper = $(".wrapper");
        const $cardWrapper =$(".cardWrapper");
        const $emotion = $(".emotion");
        const $card =$(".card");
        const $diaryFileName = $("#diaryFileName");
        
        $.each($wrapper, function(index, item){
            $(this).click(function(){
                $wrapper.css("font-weight","400");
                $card.css({"width":"90%", "height":"90%", "margin":"5% auto"});
                $wrapper.css("opacity","30%");
                $emotion.css({"margin-bottom":"3%", "margin-top":"0%", "width":"80%", "font-size":"1em"});
                $($wrapper[index]).css("font-weight","600");
                $($wrapper[index]).css("opacity","100%");
                $($card[index]).css({"width":"100%", "height":"100%", "margin-top":"1%", "margin-bottom":"5%", "align-items":"center"});
                $($emotion[index]).css({"margin":"0 auto", "margin-top":"3%", "width":"90%", "font-size":"1.2em"});
                $diaryFileName.val($($card[index]).attr("id"));
                console.log($diaryFileName.val());
            });
        })
        
        
        // 위로하는 부분 보여주기
//        const $comfort =$(".comfort");
//        const $textarea = $("textarea")
//        
//        $.each($textarea, function(index, item){
//            $(item).focusout(function() {
//                $comfort.css("display","none");
//                $($comfort[index]).css("display","flex");
//                console.log($($textarea[index]).val());
//            });
//        })

        
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
        
        
        // 다이어리 저장
        $("#saveDiary").click(function() {
        	
        	if(!$diaryFileName.val()){
        		alert("오늘의 감정을 선택해주세요");
        	}else if(!$("#a2").val()){
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


        

