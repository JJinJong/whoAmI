<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>사연수정페이지</title>
    <link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/worryStroy/ws.css">
    
</head>
<body>
		<c:set var="page" value="${page}"/>
		<c:set var="board" value="${worry}"/>
		<c:set var="userStatus" value="${userStatus}"/>
    <div class="Layout__LayoutWrapper-w6dyul-0 ddCubf">
        <!-- 헤더 -->
        <c:if test="${userStatus == 0 or userStatus == null}">
         <jsp:include page="/app/fix/header.jsp" />
      </c:if>
      <c:if test="${userStatus == 1}">
         <jsp:include page="/app/fix/headerExpert.jsp" />
      </c:if>
        <!-- <div class="Header__HeaderWrapper-lrawfh-9 ehMqON">
            <div class="header-wrapper">
                <div class="Header__TopHeaderWrapper-lrawfh-5 bGwGxw">
                    <div class="Header__TopHeaderInfoWrapper-lrawfh-6 bzKYmP">
                        <div class="Header__StyledTopHeaderLinkItem-lrawfh-7 coWefA">심리케어센터</div>
                        <div class="Header__StyledTopHeaderLinkItem-lrawfh-7 coWefA">후엠아이EAP</div>
                        <div class="Header__StyledTopHeaderLinkItem-lrawfh-7 coWefA">회사소개</div>
                    </div>
                    <div class="Header__TopHeaderInfoWrapper-lrawfh-6 bzKYmP">
                        <button color="#127f79" class="Header__StyledTopHeaderAuthBtn-lrawfh-8 lhGcxR">로그인</button>
                        <button class="Header__StyledTopHeaderAuthBtn-lrawfh-8 qewNA">회원가입</button>
                    </div>
                </div>
                <div class="Header__StyledLine-lrawfh-1 hiIsVV"></div>
                <div class="header">
                    <div class="logo-wrapper">
                        <div class="logo">
                            <img width="129" height="22" class="text-logo" src="img/로고.png" alt="이미지없음">
                        </div>
                        <div class="Header__NavMenuWrapper-lrawfh-4 gQWRFL">
                            <div class="Header__StyledNavItem-lrawfh-2 bmbEEj menu-item menu-item--collapse">
                                <button type="button" class="Header__StyledNavBtn-lrawfh-3 cOzJxd">심리 검사</button>
                            </div>
                            <div class="Header__StyledNavItem-lrawfh-2 bmbEEj menu-item menu-item--collapse">
                                <button type="button" class="Header__StyledNavBtn-lrawfh-3 cOzJxd">전문가 찾기</button>
                            </div>
                            <div class="Header__StyledNavItem-lrawfh-2 bmbEEj menu-item menu-item--collapse">
                                <button type="button" class="Header__StyledNavBtn-lrawfh-3 cOzJxd">고민/사연</button>
                            </div>
                            <div class="Header__StyledNavItem-lrawfh-2 bmbEEj menu-item menu-item--collapse">
                                <a href="https://brunch.co.kr/magazine/mentalitystory" target="_blank" rel="noopener noreferrer">
                                    <button type="button" class="Header__StyledNavBtn-lrawfh-3 cOzJxd">감정일기</button>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="menu-items horizontal">
                        <div class="Search__SearchWrapper-sc-1g6wfjt-0 jzjnjg">
                            <div class="search-bar">
                                <input type="text" placeholder="사연 검색" value>
                                <div class="icon">
                                    <img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAASABIAAD/4QBARXhpZgAATU0AKgAAAAgAAYdpAAQAAAABAAAAGgAAAAAAAqACAAQAAAABAAAAMKADAAQAAAABAAAAMAAAAAD/7QA4UGhvdG9zaG9wIDMuMAA4QklNBAQAAAAAAAA4QklNBCUAAAAAABDUHYzZjwCyBOmACZjs+EJ+/8AAEQgAMAAwAwEiAAIRAQMRAf/EAB8AAAEFAQEBAQEBAAAAAAAAAAABAgMEBQYHCAkKC//EALUQAAIBAwMCBAMFBQQEAAABfQECAwAEEQUSITFBBhNRYQcicRQygZGhCCNCscEVUtHwJDNicoIJChYXGBkaJSYnKCkqNDU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6g4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2drh4uPk5ebn6Onq8fLz9PX29/j5+v/EAB8BAAMBAQEBAQEBAQEAAAAAAAABAgMEBQYHCAkKC//EALURAAIBAgQEAwQHBQQEAAECdwABAgMRBAUhMQYSQVEHYXETIjKBCBRCkaGxwQkjM1LwFWJy0QoWJDThJfEXGBkaJicoKSo1Njc4OTpDREVGR0hJSlNUVVZXWFlaY2RlZmdoaWpzdHV2d3h5eoKDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uLj5OXm5+jp6vLz9PX29/j5+v/bAEMAAQEBAQEBAQEBAQIBAQECAwICAgIDBAMDAwMDBAQEBAQEBAQEBAQEBAQEBAUFBQUFBQYGBgYGBwcHBwcHBwcHB//bAEMBAQEBAgICAwICAwcFBAUHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHB//dAAQAA//aAAwDAQACEQMRAD8A/v4oor8wv2sf2sfjff8Axv0X9iH9iHRNL1j9o/WNLXXfFPinXVaXRvBmjSsFjubmNQftF/cZzbWxz1V3VkagD9PaK/ImH/gmP8b9Zthr/jz/AIKofH2/+Jsg8yS70DVLbRtE849SujxW8sIiz/yzEuMcVm+Bf2g/2pv2KPjd8Nf2ff25vF9j8cPgt8cdSXQvAXxjs7JdNuItXkz5Gla9axZgimuQNtvcR8OQSxf96YAD9iKKKKAP/9D+/ivyJ/4Jjw22s/G//gqh4818CT4m3/x91TQLuSTmb+xNGtreLR1J6+UIZZfLHTGcZxX67V+O/wC0H4F+N37FH7U3i/8Abm/Z9+GupfHH4LfHCys7P4x+AtCXzNXiuNNXyrTXtKgyBczRQEx3FuuC4yxPzmWAA/Yivy8/4LOaP4d1T/gmx+0xe+IXW1l8L2Nhq2l3edslvqVtqFobR4n4KSNMRECpBIcr3xS6P/wWc/4Jsap4cfxDe/tMWPhaW1U/a9L1aw1C21K3kXO+J7Q2pmaRCCpEQcEj5S3Br8xf20f20bz9rm8+B3iPxH8DvHXg7/gkv4O8daZe+PPHl7pjwvr7wuz2P+guy3a+HVu1jFzc+WzOzKAqTJHG4B/ST8ONS1rWfh54D1fxJGYfEWq6LZXN+hGCtzLBG0oxgYxITxgV2dZGga/ofivQ9H8T+GNYtvEPhzxDbRXthf2UqzW9xbzKHjlikQskkciEMrKSCDkGtegD/9H+/iiiigDjNS+HHw81nWo/EmseAtF1XxFCQUv7mygluVIxjErRmQYwMc9q3Nf0DQ/Feh6x4Y8T6PbeIfDniG2lsr+wvYlmt7i3mUpJFLG4ZJI5EJVlYEEHBFa9FAH4y/C/4X/Hj/gmx8ePC3ws+FnhbXfjv/wT4+O+uiz0vS7MPe6p8OtUvXLEAsS8vh+Vyzu7t/o/LMfMybr9mqKKAP/Z" layout="fill" alt="검색">
                                </div>
                            </div>
                        </div>
                        
                        <div class="menu-item menu-item--collapse">
                            <img width="20" height="20" src="data:image/png;base64,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" alt="나의 공간" class="Header__StyledIconImg-lrawfh-0 SlqsQ">
                        </div>
                        <div class="menu-item menu-item--write">
                            <button type="button" class="write-btn">글쓰기</button>
                        </div>
                    </div>
                    <div class="menu-button"></div>
                </div>
            </div>
        </div>  -->
        <div class="write__WriteWrapper-sc-4elezg-0 fCgOpG page">
            <div class="BackTitle__BackTitleWrapper-sc-13svaxc-3 kNfuaY">
                <div class="back">
                    <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 24 24" height="1em" width="1em"
                    wmlns="http://www.w3.org/2000/svg">
                        <path d="M19 6.41L17.59 5 12 10.59 6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 12 13.41 17.59 19 19 17.59 13.41 12z"></path>
                    </svg>
                </div>
                <div>
                    <div class="top__title">
                        <div class="BackTitle__TitleDiv-sc-13svaxc-1 goChkk title">스토리 수정</div>
                    </div>
                </div>
            </div>
            <form action="${pageContext.request.contextPath}/worry/WorryUpdateOK.bo" name="updateForm" method="post" >
            <input type="hidden" name="worryNumber" value="${worry.getWorryNumber()}">
            <input class="input_chilck" type="hidden" name="worryCategoryNumber" value="1">
            <input type="hidden" name="page" value="${page}">
            <div class="write card">
                <div class="header">
                    <div class="select">
                        <div class="category-selected">
                            <div class="category-name">${worry.getWorryCategoryNumber()}</div>
                            <div class="more">
                                <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 512 512" height="1em" width="1em"
                                    xmlns="http://www.w3.org/2000/svg">
                                    <path d="M128 192l128 128 128-128z"></path>
                                </svg>
                            </div>
                        </div>
                        <div class="categories-groups">
                            <div class="categories-group">
                                <div class="categories-group__title">고민 사연</div>
                                    <div class="categories-group__categories">
                                        <div class="category selected">일반 고민</div>
                                        <div class="category ">취업 진로</div>
                                        <div class="category ">직장</div>
                                        <div class="category ">연애</div>
                                        <div class="category ">성추행</div>
                                        <div class="category ">결혼/육아</div>
                                        <div class="category ">대인관계</div>
                                        <div class="category ">외모</div>
                                        <div class="category ">가족</div>
                                        <div class="category ">학업/고시</div>
                                        <div class="category ">금전/사업</div>
                                        <div class="category ">성생활</div>
                                        <div class="category ">이별/이혼</div>
                                        <div class="category ">중독/집착</div>
                                        <div class="category ">투병/신체</div>
                                        <div class="category ">정신건강</div>
                                        <div class="category ">LGBT</div>
                                        <div class="category ">자아/성격</div>
                                        <div class="category ">따돌림</div>
                                    </div>
                                </div>
                                <div class="categories-group">
                                    <div class="categories-group__title">응원 사연</div>
                                    <div class="categories-group__categories">
                                        <div class="category ">응원</div>
                                    </div>
                                </div>
                                <div class="categories-group">
                                    <div class="categories-group__title">자유 사연</div>
                                    <div class="categories-group__categories">
                                        <div class="category">자유</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="options">
                                <div class="option">
                                <input class="input_OnOff1" type="hidden" name="worryNickNameCheck" value="${worry.getWorryNickNameCheck()}">
                                    <div class="OnOff__OnOffWrapper-ydco07-0 cbIfjw">
                                        <div class="on-off off">
                                            <div class="switch"></div>
                                        </div>
                                        <div class="label off">닉네임 비공개</div>
                                    </div>
                                </div>
                                <div class="option">
                                <input class="input_OnOff2" type="hidden" name="worryReadMeCheck" value="${worry.getWorryReadMeCheck()}">
                                    <div class="OnOff__OnOffWrapper-ydco07-0 cbIfjw">
                                        <div class="on-off off">
                                            <div class="switch"></div>
                                        </div>
                                        <div class="label off">나만 보기</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="main">
                            <div class="main__title">
                                <input name="worryTitle" class="main__title__input " type="text" placeholder="당신의 고민을 한줄로 요약해 주세요" value="${worry.getWorryTitle()}">
                            </div>
                            <div class="main__contents">
                                <textarea name="worryContent" class="autosize" placeholder="전문가의 답변을 받기위해 자세하게 작성해주세요" style="height: 34px;">${worry.getWorryContent()}</textarea>
                            </div>
                            <div class="main__hashtag">
                                <span class="main__hashtag__title">
                                    <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 448 512" height="1em" width="1em"
                                        xmlns="http://www.w3.org/2000/svg">
                                        <path d="M446.2 270.4c-6.2-19-26.9-29.1-46-22.9l-45.4 15.1-30.3-90 45.4-15.1c19.1-6.2 29.1-26.8 23-45.9-6.2-19-26.9-29.1-46-22.9l-45.4 15.1-15.7-47c-6.2-19-26.9-29.1-46-22.9-19.1 6.2-29.1 26.8-23 45.9l15.7 47-93.4 31.2-15.7-47c-6.2-19-26.9-29.1-46-22.9-19.1 6.2-29.1 26.8-23 45.9l15.7 47-45.3 15c-19.1 6.2-29.1 26.8-23 45.9 5 14.5 19.1 24 33.6 24.6 6.8 1 12-1.6 57.7-16.8l30.3 90L78 354.8c-19 6.2-29.1 26.9-23 45.9 5 14.5 19.1 24 33.6 24.6 6.8 1 12-1.6 57.7-16.8l15.7 47c5.9 16.9 24.7 29 46 22.9 19.1-6.2 29.1-26.8 23-45.9l-15.7-47 93.6-31.3 15.7 47c5.9 16.9 24.7 29 46 22.9 19.1-6.2 29.1-26.8 23-45.9l-15.7-47 45.4-15.1c19-6 29.1-26.7 22.9-45.7zm-254.1 47.2l-30.3-90.2 93.5-31.3 30.3 90.2-93.5 31.3z"></path>
                                    </svg>
                                    <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 448 512" class="shadow" height="1em" width="1em"
                                        xmlns="http://www.w3.org/2000/svg">
                                        <path d="M446.2 270.4c-6.2-19-26.9-29.1-46-22.9l-45.4 15.1-30.3-90 45.4-15.1c19.1-6.2 29.1-26.8 23-45.9-6.2-19-26.9-29.1-46-22.9l-45.4 15.1-15.7-47c-6.2-19-26.9-29.1-46-22.9-19.1 6.2-29.1 26.8-23 45.9l15.7 47-93.4 31.2-15.7-47c-6.2-19-26.9-29.1-46-22.9-19.1 6.2-29.1 26.8-23 45.9l15.7 47-45.3 15c-19.1 6.2-29.1 26.8-23 45.9 5 14.5 19.1 24 33.6 24.6 6.8 1 12-1.6 57.7-16.8l30.3 90L78 354.8c-19 6.2-29.1 26.9-23 45.9 5 14.5 19.1 24 33.6 24.6 6.8 1 12-1.6 57.7-16.8l15.7 47c5.9 16.9 24.7 29 46 22.9 19.1-6.2 29.1-26.8 23-45.9l-15.7-47 93.6-31.3 15.7 47c5.9 16.9 24.7 29 46 22.9 19.1-6.2 29.1-26.8 23-45.9l-15.7-47 45.4-15.1c19-6 29.1-26.7 22.9-45.7zm-254.1 47.2l-30.3-90.2 93.5-31.3 30.3 90.2-93.5 31.3z"></path>
                                    </svg>
                                </span>
                                <input name="worryHashTag" class="main__hashtag__tags" type="text" placeholder="해시태그를 남겨보세요 ex) #위로 #응원" value="${worry.getWorryHashTag()}">
                            </div>
                        </div>
                        <div class="footer">
                            <button type="button" onclick="updateForm.submit()">수정완료</button>
                        </div>
                    </div>
                    </form>    
                </div>    
            </div>
        </div>
    </div>
</div>
</body>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script >
        const $category_name = $('.category-name');
        
        // 카테고리 파트
        // 카테고리 리스트
        const $list = $('.list');
        // 카테고리 버튼
        const $btn = $('.select');
        const $groups= $('.categories-groups')
        var text = "";
        var check = false;


        // 정보 공개 여부 파트
        const $btns_info = $('.OnOff__OnOffWrapper-ydco07-0');
        const $div_info = $('.on-off ');
        const $div_label = $('.label');
        const $switch = $('.switch')

         // 세부 카테고리
         	const $category_btns = $('.category');
         	const $category_btn = $('.selected');
        	const $input = $('.input_chilck');
        	
        	console.log($input);
        	
        	
         $.each($category_btns, function(index, item){
             var $categpry = $(item);
             $(item).click(function(){
                 $($category_btns[index]).css("font-weight", "bold");
                 $category_name.text($(item).text());
        		 $input.val(index + 1);
                 if($category_btn){
                 $category_btns.attr("class", "category");
                 $category_btns.removeAttr("style");
                 };
                 $($category_btns[index]).attr("class", "category selected");
             });
         });
        //고민사연 분류  
        $.each($btn, function(index, item){
            $(item).click(function(){
                if(check == false){
                    $groups.css("display", "block");
                    check = true;
                }else{
                    $groups.css("display", "none");
                    check = false;
                };
            })
        });


        
	
          // 정보 공개 로직
        const $input_OnOff1 = $('.input_OnOff1');
        const $input_OnOff2 = $('.input_OnOff2');
        
        
      /*   		console.log($input_OnOff1.val());
        function $input_OnOff1(){
        	if($input_OnOff1.val() == "1"){
        		 $($div_info[index]).css("background-color", "rgb(246, 239, 207)");
                 $($switch[index]).css("left", "18px")
        	}else{
        		 $($div_info[index]).css("background-color", "rgb(255, 255, 255)");
                 $($switch[index]).css("left", "0px")
        	}
        } */
        
       /*  function $input_OnOff2(){
        	if($input_OnOff2.val() == "1"){
        		 $($div_info[index]).css("background-color", "rgb(246, 239, 207)");
                 $($switch[index]).css("left", "18px")
        	}else{
        		 $($div_info[index]).css("background-color", "rgb(255, 255, 255)");
                 $($switch[index]).css("left", "0px")
        	}
        } */
        
        $.each($btns_info, function(index, item){
           $(item).click(function(){
                if(check == false){
                    $($div_info[index]).css("background-color", "rgb(246, 239, 207)");
                    $($switch[index]).css("left", "18px")
                    $input_OnOff1.val("1");
                    $input_OnOff2.val("1");
                check = true;
                }else{
                    $($div_info[index]).css("background-color", "rgb(255, 255, 255)");
                    $($switch[index]).css("left", "0px")
                    $input_OnOff1.val("0");
                    $input_OnOff2.val("0");
                    check = false;   
                }
            });
        })
        
      const $name = $('.category-name');
	
	
	$.each($name, function(index, item){
		console.log($(item).text());
    		if($(item).text() == 1) {
       		$(item).text("일반 고민");
   			}
    		if($(item).text() == 2) {
       		$(item).text("취업 진로");
    		}
    		if($(item).text() == 3) {
       		$(item).text("직장");
    		}
    		if($(item).text() == 4) {
       		$(item).text("연애");
   			}
    		if($(item).text() == 5) {
       		$(item).text("성추행");
    		}
    		if($(item).text() == 6) {
       		$(item).text("결혼/육아");
    		}
    		if($(item).text() == 7) {
       		$(item).text("대인관계");
   			}
    		if($(item).text() == 8) {
       		$(item).text("외모");
    		}
    		if($(item).text() == 9) {
       		$(item).text("가족");
    		}
    		if($(item).text() == 10) {
       		$(item).text("학업/고시");
   			}
    		if($(item).text() == 11) {
       		$(item).text("금전/사업");
    		}
    		if($(item).text() == 12) {
       		$(item).text("성생활");
    		}
    		if($(item).text() == 13) {
       		$(item).text("이별/이혼");
   			}
    		if($(item).text() == 14) {
       		$(item).text("중독/집착");
    		}
    		if($(item).text() == 15) {
       		$(item).text("투병/신체");
    		}
    		if($(item).text() == 16) {
       		$(item).text("정신건강");
   			}
    		if($(item).text() == 17) {
       		$(item).text("LGBT");
    		}
    		if($(item).text() == 18) {
       		$(item).text("자아/성격");
    		}
    		if($(item).text() == 19) {
       		$(item).text("따돌림");
   			}
    		if($(item).text() == 20) {
       		$(item).text("응원");
    		}
    		if($(item).text() == 21) {
       		$(item).text("자유");
    		}
 		}); 
     
        
        
        $("textarea.autosize").on('keydown keyup', function () {
            $(this).height(1).height( $(this).prop('scrollHeight')+12 );	
        });
   </script>

</html>