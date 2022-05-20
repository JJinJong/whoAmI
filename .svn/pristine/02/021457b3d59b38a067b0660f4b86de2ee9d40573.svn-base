/**
 * 
 */

var rowCount = 4;

getList();

function plusReview() {
	rowCount = Number(rowCount) + 4;
	getList();
};

//댓글 목록
function getList(){
	 $.ajax({
	     // url: contextPath + "/board/BoardReplyListOk.bo?boardNumber=" + boardNumber,
	     url: contextPath + "/expert/ExpertProfileDetailReview.me?managerProfileNumber="+managerProfileNumber+"&rowCount="+rowCount,
	     type: "get",
	     dataType: "json", //text일 경우 dataType 생략 가능
	     success: function(data) {
			showList(data);
	        
	        if(data.check == false){
	    		$('.review_bar').hide();
	    	}
		},
	     error: function(a, b, c){
	     console.log("오류" + c);
	     }
	 });
	 
};

//프로필 목록
function showList(data){
	
    var text = "";
    if(data.consultReviews != null && data.consultReviews.length != 0){
        $.each(data.consultReviews, function(index, consultReview){
        	text += "<div class='consult_review'>";
        	text += "<div class='reviw_content'>";
        	text += consultReview.consultReviewContent;
        	text += "</div>";
        	text += "<div class='consult_info_left'>"+consultReview.consultTitle+"</div>";
        	text += "<div class='consult_info_right'>"+consultReview.consultType+"</div>";
        	text += "<img class='consultTypeImg'>";
        	text += "</div>";
        });

        $(".consult_review_wrapper").html(text);
        timesChange();
    }else{
        //댓글 없음
        text = "<p>리뷰가 없습니다.</p>";
        $(".consult_review_wrapper").html(text);
    }
   
}


//
// 리뷰 글자 체인지
function timesChange() {
	let voice_img = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACQAAAAkCAYAAADhAJiYAAAAAXNSR0IArs4c6QAAAr9JREFUWAntlk9o03AUx99L0zG7gzAsePAyEESG+5M/rR4ETyJ62cWdvCiiIOJmC24Ku4gyBm2HBwURexAEmRdPouLB27Sm/sMKA/WiF60iHtSKI8+XYkbM8vtlTbNb0kPye9+X7/v05fdLfgDJkXQg6cD6dgBF9pV6fSvBcpUIdnGO6uYhYhMJ5gpGruzG4jwrIrN/MLtZX4FxcokoawOVGNjRYj8kQKjJqhHZYzI9qiYEAoKPclPaI9ejqWIghIbMkhBGrlrWRllOFE0IxBP3hdSQSPkBkJfmRBCFQKkU3Avzs9HOhuV0qguBJkZMCxA+iw3xe2+GQqHF9wcrQiB+3xD/bgXfBi0FlPGT2/NfBXrksBDIcUyl8YoDtspdgTMFw3iwKh5DQAo0OWwucY37/jpo4/GFRqPHH49jLAVqF0B1GhBtbzECGvzw6+d5byyu61Cgoqa95IdW9RcksKfK9dohf7zbcSiQUwA39E0h4Ht/MZ5c1yuWtdcf72Ys/Nr7TbnwDn7vLPLXtc+rMegfUPBoUTNveOOXG7XNrd+4H4maKqqPT2la06uLrtcM5BiUrScHuSsLQWa8Gkv9/dmZwwMDrZJljSHYN3muZZzc9koleMPvtUcK4p3TmvkwyKOdKxJE8YpVm+Xtx3SwjktcvcpducAw6eAcBgQ8VzRys0F6Rx1yDHg/pMzXn14UQwWV+T/GQF8YKPCzs6ZJ7bXj9tu8WzzL/2Scu8Hf184P7t4m0V0dA7lGRSN/O63iTn4A79xYHOfIQE7xiWHzdaan1+SuXfO/PKPCdQXkFD0xNPStqOeOqZAa5cd4t72iwmmWRSldA7nGk7r+ih/jAVVJb+OlfYnhPrma/4wIi/6YO+54lbk3hp15NeL885rOc2yfTTDKe/RBXu9bEOgZgnqkoOtvwzwSPelA0oH16MBfS4q3SxpqlRIAAAAASUVORK5CYII=";
	let text_img = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACQAAAAkCAYAAADhAJiYAAAAAXNSR0IArs4c6QAAAclJREFUWAntlbFOw0AMQO0LUjuwMDBAQUigiv4CYmdkZEJlYkZsMNGiojJ1ZAGGMMI3MDCxMSKqThUq/AIg5YyvUqXockkdKW0Kyi2JfXf2s33nAyhGkYF/lgG04yG69wa9rxPUdEhAa/Z8FjIC9knhdaVavkTcC8I258KC+TcwoHWL7IkM5WGgmlrsy1i9CJtWYcH8m8zYuknJLl8RoEmVyRWUy1cEyLVxmrqZA4oc6rhs8M14Vh6eIqjvuDUuPYEu6YDaXJ4t17ytEwMpDzpL1fqTbUAif/b8ThDAg2StuGQ6wHWJQdcaHcCGS+/SiTNEqJuDN3+b+1OqknHnLRHSDggbmxiIDZb5HOy6okrSDTmEMMaOuGRJTrOcE2cIEd75hl0B6LEl04TzDHkMQAtpYcVAQKq5XKvfSh0Mur4igoZ0/Wjd3y0Zv7pnH927RWnJODtHo6jTfMUlYwer3HXbMuMprpVlcOZKlisQ31xtJSjfPkSErzMDhIh80PDcBhIfan6TXgjhxzaQVkZ+2ACpT+DdrNT2H+39IiCOplnZPGjYmychjz3U04QxASYCTRsmESgPmFigvGAMUGTwK92IKAtFkYH4DPwCVyaE+mpraCMAAAAASUVORK5CYII=";
	let meet_img= "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAAAAXNSR0IArs4c6QAAAERlWElmTU0AKgAAAAgAAYdpAAQAAAABAAAAGgAAAAAAA6ABAAMAAAABAAEAAKACAAQAAAABAAAAHqADAAQAAAABAAAAHgAAAADKQTcFAAAES0lEQVRIDc1XXWhcRRQ+Z+7NJsFEw/ZBhIJQ0FJti1Rb3bDNmwgFKUqNBouk2jQpSi0RRKxmr62C0oo/VLLZptIn8Q/xqUJFhG628UVfpPgggqLSoqZr05iw2b1z/GZ35+7dm+xuFlG8kJwz3zlzvvk5Z2aWKfTNTnnbiloOElNJKedk8sDExZC5bXVmcuJRId6Fvx9ivXTinr3evA3CVjmf9m4j0d+g3VnBeKGDeEvioPej9WlHZqe8Q6L1W7U+fGHnmJdkZjGYCgxCj0CvkhpUekpMDwb2NhWQDtd3kf6ZUy/dYrGAmJn+tKCVTPqq1duV0XhoS2cHBUvtZjPe4+zTgttD08vXaD8INhkS7MHXKt73XruE1p8dNyV+aQcJXWcwIXVCLd80l02njhE5HyvSOq1Zv2k23l3Xd6dDzh521P3xdaq/f3B8yQZqVyZHJrKuxDYqh/a6pO4eGPOeLcilhIi8gFx6RolQB4YTu/ihF/OvXD3js/8B+frk3Jza3i5Z1N9Xy/u15ukS63O5SW9YK4pVfKQj2OO5vH4CoxnEIByk3c3M/rvRQO20c5mj20WTRyJdiHkDVjXDmq63MQJiFt5sQSMxiFtnJr3BMLZWHX3Z16UjYX+zskiw9RYLEwc1bY2a5HS5vi2wRpmbSj2HWe6OupcE1NUvILZAvZQeFv3J92ffDtV3vUe0lUt7A5jwy1E82m5BbMqANl7+Kb8r2rFRG6v0tJC0jNvSwRCwWnm4NCLGSFccRKv5uquBFsOO/IrCzyRHU19arJXs7OIjhQLFkZ33YbW6G/k3JY7H1YbbB73lRp1Xw3fs8y4DfyCbntiH2TcsyabE+bwewtVWsgQo8cVuJdm7Rr0/LGZkbtrbrEt6C+6dYOugJoh02K1Ob0qsNZ2p8yafloSvzJ46lkyMvPidsWXT3rhf1K8bHUtb+3B6NPuCETZzCttwOMSLfumQwcxBgX+psH2teo2Y9c9r7QS2G43v7EdvdKF0gmOwZX+W361PQCy93Wlk8T966tigq0pWxxXTb9ZW3mM8R3rpWuEdFOy3SJBfcBlX8HJ2qHNafCyn9NhOzSRifYrKNzPbYP3w2vkLZ/V6XMHPW6xMgL3CdSVDQXZUs8QIZr0VB2yxCtl+TSSiiYyEHUCKrz5CdWY8z6z2hJ2Nrsn/DO5dIG6eoqGOuAccJBwGTF8wOa+FTKD2t8H0qsEqMyYp7hxLfR52Mvr5yRQi1I806tOozcSXkpGYeGaBuzKHILkaBfi38P87MefrZi6VduKh+QL2v+5ByJoX6nwbNFBa5Y6Lq9lhWyThJVaStnYkTdFx+LRpM3saJZixNiAL2uGzpo3MWBHTsRjzkiJ2HnZcNVzrXNNQk0OK1WPJ0aPH8eS9F5ZxHP539B/wLlgv/Cw5rBy1GwM63Om6Wwf6Nr2P+/upmOOWs9f6GZkYoa9QPU8qdl4J4/+p/jcPOYGclgQZQwAAAABJRU5ErkJggg==";
	let $consultTimes = $('.consult_info_left');
	
	console.log($consultTimes);
	
	
	$.each($consultTimes, function(index, item) {
		let times = $(item).text().replace("텍스트 테라피 ", "").replace("보이스 테라피 ", "");
		$(item).text(times);
		
		let types = $($(item).parent()).find(".consult_info_right");
		if(types.text() == '전화'){
			types.text("보이스 테라피");
			$($(item).parent()).find(".consultTypeImg").attr("src", voice_img);
		}
		
		if($($(item).parent()).find(".consult_info_right").text() == '채팅'){
			types.text("텍스트 테라피");
			types.css('color', 'rgb(211, 193, 125)');
			$($(item).parent()).find(".consultTypeImg").attr("src", text_img);
		}
		
		if($($(item).parent()).find(".consult_info_right").text() == '대면'){
			types.text("대면 테라피");
			types.css('color', 'rgb(211, 193, 125)');
			$($(item).parent()).find(".consultTypeImg").attr("src", meet_img);
		}
	
	});
};