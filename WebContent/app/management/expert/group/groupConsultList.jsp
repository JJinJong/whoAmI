<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로필 리스트</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/app/management/assets/css/groupConsult.css">
</head>
<body>

	<!-- Header -->
	<jsp:include page="/app/fix/managementHeader.jsp" />

	<section class="management_wrapper managelist">
		<table class="management_profileList">
			<caption>그룹상담 관리</caption>
			<colgroup>
				<col width="8%">
				<col width="18%">
				<col width="18%">
				<col width="18%">
				<col width="18%">
				<col width="13%">
				<col width="13%">
			</colgroup>
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>날짜</th>
					<th>진행일정</th>
					<th colspan="2"><input type="button" value="추가"
						onclick="location.href = '"++"/profileWrite.jsp'"></th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>3063</td>
					<td>그룹으로 상담하자</td>
					<td>s701090</td>
					<td>2022-02-23</td>
					<td>2022-02-23~2022-07-26</td>
					<td colspan="2"><input type="button" value="상세 보기"> <input
						type="button" value="삭제"></td>
				</tr>
				<tr>
					<td>3063</td>
					<td>그룹으로 상담하자</td>
					<td>s701090</td>
					<td>2022-02-23</td>
					<td>2022-02-23~2022-07-26</td>
					<td colspan="2"><input type="button" value="상세 보기"> <input
						type="button" value="삭제"></td>
				</tr>
				<tr>
					<td>3063</td>
					<td>그룹으로 상담하자</td>
					<td>s701090</td>
					<td>2022-02-23</td>
					<td>2022-02-23~2022-07-26</td>
					<td colspan="2"><input type="button" value="상세 보기"> <input
						type="button" value="삭제"></td>
				</tr>
				<tr>
					<td>3063</td>
					<td>그룹으로 상담하자</td>
					<td>s701090</td>
					<td>2022-02-23</td>
					<td>2022-02-23~2022-07-26</td>
					<td colspan="2"><input type="button" value="상세 보기"> <input
						type="button" value="삭제"></td>
				</tr>
				<!-- <tr>
					<td colspan="7" align="center">등록된 게시물이 없습니다.</td>
				</tr> -->
			</tbody>
		</table>

	</section>

</body>
</html>