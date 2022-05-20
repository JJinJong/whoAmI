/**
 * 
 */
getProfileList();

//댓글 목록
function getProfileList(){
	 $.ajax({
	     url: contextPath + "/expert/MainPageProfile.me",
	     type: "get",
	     dataType: "json", //text일 경우 dataType 생략 가능
	     success: function(profiles) {
			showProfileList(profiles);
		},
	     error: function(a, b, c){
	     console.log("오류" + c);
	     }
	 });
	 
};

//프로필 목록
function showProfileList(profiles){
	console.log("음?");
    var text = "";
    if(profiles != null && profiles.length != 0){
        $.each(profiles, function(index, profile){
			text +=	"<div class='RecommendCounselors__EmptySpaceWrapper-sc-1ygb3q7-8 fKrmvr swiper-slide swiper-slide-active' style='width: 400px;' onclick='profileListSend("+profile.managerProfileNumber+")'>";
			text +=		"<div class='RecommendCounselors__CounselorItemWrapper-sc-1ygb3q7-9 jVjKqn'>";
			text +=			"<img src='"+contextPath+"/upload/"+profile.managerPictureNameOrignal+"' class='RecommendCounselors__StyledCounselorImg-sc-1ygb3q7-7 hpqZOF'>";
			text +=			"<div class='RecommendCounselors__CounselorInfoWrapper-sc-1ygb3q7-5 fUMhYq'>";
			text +=					"<div class='counselor__nickname'>"+profile.managerName+"</div>";
			text +=					"<div class='counselor__message'>"+profile.managerIntroduce+"</div>";
			text +=					"<div class='RecommendCounselors__ProductKindWrapper-sc-1ygb3q7-3 dgKSng'>";
			if(profile.managerconsultText != null){
				text +=						"<img src='data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACQAAAAgCAYAAAB6kdqOAAAAAXNSR0IArs4c6QAAAERlWElmTU0AKgAAAAgAAYdpAAQAAAABAAAAGgAAAAAAA6ABAAMAAAABAAEAAKACAAQAAAABAAAAJKADAAQAAAABAAAAIAAAAADfjkU8AAACCElEQVRYCe2XPyzFUBjF608iQmJBWHghFqyEyWAzmzCZRCIREjs7g0nE5s+AxGYzmEgkYmDAZEJIRCIR4t/v9PW+tEn1td5r+wYnOe/77v1uvnPa3va1luVFA8NVeAm/4HdMVG9pSEuavuhm9g7GZeK3vtKUto0yJ1YQj2AP/IRb8AKqSRyQbhccgdI+gf1Q2jY0MEcw6swlEaRldOUhh0kyFZ5yM8kl0pS2PFjl+gGN2WA9OjHJYDRtD8ZQkgYCtSoDq9niIEGbrxjQzXIQ1CiMoU4ajAc1iVA7Y23BhrTp9BArBvLeNGHO0AZOxERQcpv631C+6x5mDzXTpC1fI1f9ivzBNY6UhjE0TMflCF3HWLsZYb1nacntoTBnaJdDOPUcRvBAl+zPCGPolu5iIjCXzLwYmXEi4o6I0bQ9mMG1U2wh1iXoRlrSFDyXOsOEHOpFaQfWwLghDe1PaX7ADLTMO7XyRTijBLzBG6jFQXiluAD3fBZNMzfhM68p6bbCKg3AEpy1M9dPNfkalIko3Hf1MGk9yXPIPtKUtg33GTJzfSQDsAP61c06RZ2hFXiugQt6kE5BbYN1qO8wN3TA2reH8NhdiCNvp+k7lKjMpo5tHMjMC2xK202vY0aG5tM2I33tCZm5h7UwVQyhLjOi/dGXqhvE5xwz+iAI8x8Zu189efVwyxSi9AOVPqBFchUswgAAAABJRU5ErkJggg==' class='RecommendCounselors__StyledNewContentsItem-sc-1ygb3q7-4 kNHvND'>";
			}
			if(profile.managerconsultVoice != null){
				text +=						"<img src='data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACQAAAAgCAYAAAB6kdqOAAAAAXNSR0IArs4c6QAAAERlWElmTU0AKgAAAAgAAYdpAAQAAAABAAAAGgAAAAAAA6ABAAMAAAABAAEAAKACAAQAAAABAAAAJKADAAQAAAABAAAAIAAAAADfjkU8AAADIUlEQVRYCbWXW4iNURTHD+OS3PJA7hNJJCOJUkxJESEhuZWnIeFBSnKLF/fEE8qLZCgePEnhyXihJreIxhiEeBC5ZIzb7z/2YrfP/s75Zub7Vv3PWt+6n733Wd8+hcJ/6oK4AzwEP8HvBDxBvw7kTheokNREqP+F75w8Ourkkk6D33DyA/h50OKeQ7YVRT9QB6aHxqyeN5DIVmFsmaRHPN+qMr5tNnd2ERVe5HdPjoknUKp50fq/LPvPxaS0FZqZIv015/8Z3jeFf2oXW6EGL2KEJyeJx52hJzzNF0jKU6S3hh5haXbWCUVexYpxnqqHJ2cq3iSbtq2+TNY9zk++jaB7Gf92mw8TqSI/QO+ELHudj/xeglEJfpmoF5FFhYRZkYyaP2ZvQh4Z8clU1YtsX4CKnopk9ufP+Ig9F1UtWdXQRxAeVn8FF+RSPZJ0LjrblpWBXefKVvB0YMvtUW/8d0BNXY1UOetsGhGDIvZcVAdcUTU1Kaigd5fe9LJdAfZyRsyPBpD6K1DRy5Ey55xN9u0Rey6qQ17ReUEFNfza2TWz5gf22KOOwiqwFoSrHvMv0vVBY0VfIGsk+DSDB7tVags1VLv5Dp48GFl3LK2o4Q7yRqB7VWpajqcl0DaFtATFN2A+9chTAqdKnhs8Hzt/FqN4jZphIBXZr0oJNkUiqtG9B1ZA/BbYBrTVz4HZTiJrtbaAx55edv2yB4KypK2yYG3RikhEf3RHQTOw4iE/FonT9feMF7Mm4hNVjUb71gXqEC+LehUKlegPgttAftbUPuQk0tvA/HYnOcX0E1F+AArWOdgFSs0gTfXZYCkoRe1uSEkngzfAvtElZI2AjlCHGlLh4eAesKZ0oGtAqdXCnEgdbkiZddB1p9bWWWN3kXXgK0BbKJOGrKCG41NgTYk3gp1gDEhDmTakgprO+rk+A35jku8D/eo0QLXVMdIV2OI2y6G9ex8m74pC96fVoBrYvxnEf6Th1wReOej8LQRVQKS5VNcqZfyhaaypfh18ArYCpfhF/FopqxWyfCHXIdd/uKmOD4UPAeKa8DqDtWA/aAGFP6S98TSFWfMNAAAAAElFTkSuQmCC' class='RecommendCounselors__StyledNewContentsItem-sc-1ygb3q7-4 kNHvND'>";
			}
			if(profile.managerconsultMeet != null){
				text +=						"<img style='width: 20px; height:18px' src='data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACQAAAAgCAYAAAB6kdqOAAAAAXNSR0IArs4c6QAAAERlWElmTU0AKgAAAAgAAYdpAAQAAAABAAAAGgAAAAAAA6ABAAMAAAABAAEAAKACAAQAAAABAAAAJKADAAQAAAABAAAAIAAAAADfjkU8AAACyElEQVRYCcWWO2gVQRSGjVEEiaBIxCYQiCAY4xOsbEyRJsSUYq9NGolaCMJFImhjHdLa2CdYiQ8MqIVdDEGbEB8YFcTCJ4hX/y85Zx2GvZu9+0h++DNnzvnPP7O5u7PbsakY+tU2Ig6JveIeEXwSl8R74oy4INaKQ3KfFv/mJFp6asEFuf4WfTOPFF8WB8UBIzE5aq6jh95KMSk3X+CB4mM53NGg9T48KsEVubjphOLNbbiipcf78SqFo+r+I2J4vYQTvXjghWdhPFYnRvdbOHQpz9N2zUhMLg144IVnIXAP+FUdTHHgkX9tGnROctRi4OH/7UL/pZsyaHVFJwPz94pvG4n9ItDEmFWCOt5t46k6aB6POrdqvmi1uxp3BHVicvShQRvioibUnoTJvPE7ax6OGo5b/ofG3VGNKbmfIgujDYEXebxTkfUId1vHx6jTf/955T9HNabkXljetTZdebUQu7fnkzFrQ19MtStRrwbLNt8b5cOp11zrNfdyb88nY9aGuAfAkdUh+ftcUVPsEc8k2f8BOWpo0IY4bBP3Dmtrxjek4Pfm5o5xSwlq3CtXxQNGYr9/0MTwBwXvtsFbmkXh6ah7m+Z8Yng9HqmhCTGqiesKfwH4oi9ltiV0t/i8Rh7h70ZicjHoxYMN4VkY+9XpP0Ejw6VTtaz7kV42gxeepeCHGd81Jwo40UMvG8KrNDrk8FDE8JW4XcwLtPTQiwdelYDHmLMD46k2HNHSQy8eleKs3DCH8eskbSF/TaCntxbckSsLfBBbHv9WQ4OWntqwU85vRBaazliFGhq09NSKU3Jviix4LmUlctTQoF0X+Kvjq1brC1bcp/ibyIbSXh2BtNqQ18KcyMLPRA5GSEyOGpp1xYBW+yWygYaRmBy1DcElrcomOIn9NCa3YQhPcTZW6Wlc9Kr8FK/kNOazoCzeymDMTIhL4R+gYNUY/BIdIwAAAABJRU5ErkJggg=='>";
			}
			text +=					"</div>";
			text +=			"</div>";
			text +=		"</div>";
			text +=	"</div>";
        });

        $(".RecommendCounselors__ItemSectionWrapper-sc-1ygb3q7-12").html(text);
    }else{
        //댓글 없음
        text = "<p>리뷰가 없습니다.</p>";
        $(".RecommendCounselors__ItemSectionWrapper-sc-1ygb3q7-12").html(text);
    }
   
}

function profileListSend(managerProfileNumber) {
	 location.href=contextPath+"/expert/ExpertProfileDetailOk.me?managerProfileNumber=" + managerProfileNumber;
}