<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 상세창</title>
</head>
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/css/expert/solo/expert.css">
<body>
   <!-- Header -->
   <jsp:include page="/app/fix/managementHeader.jsp" />

   <section class="management_wrapper">
      <div class="management_header">
         <ul class="my">
            <li>공지사항</li>
            <li><input type="button" value="목록"
               onclick="location.href = '/boardMVC/board/BoardListOk.bo'">
            </li>
         </ul>
      </div>
      <form action="" class="my">
         <p>[공지사항] 3/9 마인드카페 이용 안내</p>
         <br>
         <textarea placeholder="간단한 문구를 작성해주세요" style="resize: none;" rows="10">
마인드카페를 찾아 주시는 마카님들이
최근 급증함에 따라, 전문가님의 가능 일정이
3/9(수) 이후가 될 수 있습니다.

참고로, 최근에 마인드카페의 일원이 되신
신규 전문가님들의 이용권을 신청하시면
보다 빠른 일정 예약이 가능합니다.

마인드카페 앱 → 하단 ‘전문가 찾기’
→ 오른쪽 ‘기본 정렬’ 터치
→ ‘최근 등록순’으로 변경
→ 이름 위에 '신규' 표시된 전문가


2. 텍스트 테라피 멤버십

3/8(화) 오후 6시 이후에 결제하시거나
멤버십 상담방에 메시지를 남겨 주시는 경우,
3/10(목) 부터 상담사님의 전문 답변을
받으실 수 있습니다.

멤버십 이용권을 3/9(수)에 결제하셨거나,
유효기간에 3/9(수)가 포함될 경우
유효기간이 자동으로 연장될 예정이며,
전문 답변 수도 보장되니 걱정하지 마세요!


3. 심리검사 이용권

3/8(화) 오후 이후 시간대에 결제하실 경우,
심리검사 결과에 대한 해석상담 일정 예약이
3/10(목) 이후로 조율될 수 있습니다.


4. 환불 및 고객센터 운영

고객센터 휴무 기간 : 3/9(수)

환불 요청 및 문의는 3/10(목) 오전 10시 이후
순차적으로 처리될 예정이며, 아래 방법으로
환불요청 및 문의 접수를 부탁드립니다.

- 채팅 : 채널톡 (홈 오른쪽 하단 동그라미 버튼)
- 이메일 : cs@atommerce.com


마카님들의 마음 치유와 성장의 여정을
응원하고 지지하며, 함께하겠습니다.


감사합니다.
마인드카페 드림
         </textarea>
      </form>

   </section>

</body>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script
   src="${pageContext.request.contextPath}/management/js/profileWrite.js"></script>
</html>