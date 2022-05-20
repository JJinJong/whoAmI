<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>게시글 리스트 페이지</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/worryStroy/ws.css">

</head>
<body>
	<c:set var="worryList" value="${worryList}" />
	<c:set var="page" value="${page}" />
	<c:set var="total" value="${total}" />
	<c:set var="userStatus" value="${userStatus}"/>
	
	<div class="Layout__LayoutWrapper-w6dyul-0 eVsHSs">
		<!-- 헤더 -->
		<c:if test="${userStatus == 0 or userStatus == null}">
         <jsp:include page="/app/fix/header.jsp" />
      </c:if>
      <c:if test="${userStatus == 1}">
         <jsp:include page="/app/fix/headerExpert.jsp" />
      </c:if>
		<div class="community__FilterWraper-sc-49nndi-0 kQkTgK">
			<div class="Filter__FilterWrapper-sc-1non1s3-0 ghTOyd">
				<div class="Categories__CategoriesWrapper-sc-15qbxer-0 lbBSCZ">
					<div class="categories">
						<div class="categories__menus">
							<div
								class="Categories__CateogryWrapper-sc-15qbxer-1 fZFOiU cate " id="allTheStories" onclick="allTheStories()">모든사연</div>
							<div
								class="Categories__CateogryWrapper-sc-15qbxer-1 fZFOiU cate 1" id="generalConcern" onclick="generalConcern()">일반고민</div>
							<div
								class="Categories__CateogryWrapper-sc-15qbxer-1 fZFOiU cate 1" id="employment" onclick="employment()">취업/진로</div>
							<div
								class="Categories__CateogryWrapper-sc-15qbxer-1 fZFOiU cate 1" id="job" onclick="job()">직장</div>
							<div
								class="Categories__CateogryWrapper-sc-15qbxer-1 fZFOiU cate 1" id="love" onclick="love()">연애</div>
							<div
								class="Categories__CateogryWrapper-sc-15qbxer-1 fZFOiU cate 1" id="sexualHarassment" onclick="sexualHarassment()">성추행</div>
							<div
								class="Categories__CateogryWrapper-sc-15qbxer-1 fZFOiU cate 1" id="marriage" onclick="marriage()">결혼/육아</div>
							<div
								class="Categories__CateogryWrapper-sc-15qbxer-1 fZFOiU cate 1" id="interpersonal" onclick="interpersonal()">대인관계</div>
							<div
								class="Categories__CateogryWrapper-sc-15qbxer-1 fZFOiU cate 1" id="apearance" onclick="apearance()">외모</div>
							<div
								class="Categories__CateogryWrapper-sc-15qbxer-1 fZFOiU cate 1" id="family" onclick="family()">가족</div>
							<div
								class="Categories__CateogryWrapper-sc-15qbxer-1 fZFOiU cate 1" id="study" onclick="study()">학업/고시</div>
							<div
								class="Categories__CateogryWrapper-sc-15qbxer-1 fZFOiU cate 1" id="money" onclick="money()">금전/사업</div>
							<div
								class="Categories__CateogryWrapper-sc-15qbxer-1 fZFOiU cate 1" id="sexualLife" onclick="sexualLife()">성생활</div>
							<div
								class="Categories__CateogryWrapper-sc-15qbxer-1 fZFOiU cate 1" id="parting" onclick="parting()">이별/이혼</div>
							<div
								class="Categories__CateogryWrapper-sc-15qbxer-1 fZFOiU cate 1" id="addiction" onclick="addiction()">중독/집착</div>
							<div
								class="Categories__CateogryWrapper-sc-15qbxer-1 fZFOiU cate 1" id="body" onclick="body()">투병/신체</div>
							<div
								class="Categories__CateogryWrapper-sc-15qbxer-1 fZFOiU cate 1" id="mentalHealth" onclick="mentalHealth()">정신건강</div>
							<div
								class="Categories__CateogryWrapper-sc-15qbxer-1 fZFOiU cate 1" id="LGBT" onclick="LGBT()">LGBT</div>
							<div
								class="Categories__CateogryWrapper-sc-15qbxer-1 fZFOiU cate 1" id="ego" onclick="ego()">자아/성격</div>
							<div
								class="Categories__CateogryWrapper-sc-15qbxer-1 fZFOiU cate 1" id="outcasting" onclick="outcasting()">따돌림</div>
							<div
								class="Categories__CateogryWrapper-sc-15qbxer-1 fZFOiU cate " id="cheering" onclick="cheering()">응원</div>
							<div
								class="Categories__CateogryWrapper-sc-15qbxer-1 fZFOiU cate "  id="freedom" onclick="freedom()">자유</div>
						</div>
						<div class="categories__more">
							<div class="categories__more__word">더보기</div>
							<img class="more__word__img"
								src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAASABIAAD/4QBARXhpZgAATU0AKgAAAAgAAYdpAAQAAAABAAAAGgAAAAAAAqACAAQAAAABAAAALKADAAQAAAABAAAALAAAAAD/7QA4UGhvdG9zaG9wIDMuMAA4QklNBAQAAAAAAAA4QklNBCUAAAAAABDUHYzZjwCyBOmACZjs+EJ+/8AAEQgALAAsAwEiAAIRAQMRAf/EAB8AAAEFAQEBAQEBAAAAAAAAAAABAgMEBQYHCAkKC//EALUQAAIBAwMCBAMFBQQEAAABfQECAwAEEQUSITFBBhNRYQcicRQygZGhCCNCscEVUtHwJDNicoIJChYXGBkaJSYnKCkqNDU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6g4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2drh4uPk5ebn6Onq8fLz9PX29/j5+v/EAB8BAAMBAQEBAQEBAQEAAAAAAAABAgMEBQYHCAkKC//EALURAAIBAgQEAwQHBQQEAAECdwABAgMRBAUhMQYSQVEHYXETIjKBCBRCkaGxwQkjM1LwFWJy0QoWJDThJfEXGBkaJicoKSo1Njc4OTpDREVGR0hJSlNUVVZXWFlaY2RlZmdoaWpzdHV2d3h5eoKDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uLj5OXm5+jp6vLz9PX29/j5+v/bAEMAAQEBAQEBAQEBAQIBAQECAwICAgIDBAMDAwMDBAQEBAQEBAQEBAQEBAQEBAUFBQUFBQYGBgYGBwcHBwcHBwcHB//bAEMBAQEBAgICAwICAwcFBAUHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHB//dAAQAA//aAAwDAQACEQMRAD8A/v4oorkvCfj7wN48/wCEi/4Qjxhpni7/AIRHU59F1X+zbmO5+x6hbY861n8tm8q4i3DfG+GXIyBQB1tFFFABRXJeE/H3gbx5/wAJF/whHjDTPF3/AAiOpz6Lqv8AZtzHc/Y9Qtsedaz+WzeVcRbhvjfDLkZArraAP//Q/v4r8e/2nP2Y/i5+zB8XNf8A29P2DNA/tjxJrGJvix8J4SY7LxhZRks97ZIoIg12AFnVkQmckkBpGkjuf2EooA+fv2Y/2nPhH+1x8I9A+Mvwa1/+2PDesZhurWYCO9069jA86yvYckwXUBIDKcggh0LRsjt+fn7Tn7Tnxc/af+Lmv/sF/sGa/wD2P4k0fEPxY+LEIMll4PspCVeysnUgT67OAyKqODAQQCsiySWx+05/wTi+Ll58XNf+Mv7Bnx4/4ZR8SfH/ABo3xYtYYy9lqFlKTv1eyhVSINdgBYLKnlGQuXEsUhkeX9A/2Y/2Y/hH+yP8I9A+DXwa0D+x/Dej5murqYiS91G9kA869vZsAz3U5ALMcAABECxqiKAH7Mf7Mfwj/ZH+EegfBr4NaB/Y/hvR8zXV1MRJe6jeyAede3s2AZ7qcgFmOAAAiBY1RF+gaKKAP//R/v4ooooAKKKKACiiigD/2Q=="
								alt="더 보기">
						</div>
					</div>
				</div>
				
				<div class="Sort__SortWrapper-b9gxq-0 duHtkH">
				</div>
			</div>
		</div>
		<div class="community__HomeWrapper-s\c-49nndi-1 iskGzP">
			<div class="stories-wrapper">
				<div class="Stories__StoriesWrapper-clu9ot-0 fSHOPk">
					<!-- 카테고리 게시글 -->
					<div class="stories" id="worrystories"></div>
					<!-- 모든 게시글 -->
					<div class="stories" id="mystories"></div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="/app/fix/footer.jsp" />

</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script 
src="${pageContext.request.contextPath}/app/worryStroy/assets/js/worryList.js"></script>
<script>
var contextPath = "${pageContext.request.contextPath}";
</script>
</html>