<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로필 리스트</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/app/management/CustomerCare/assets/css/groupConsult.css" />
</head>
<body>

   <!-- Header -->
   <jsp:include page="/app/fix/managementHeader.jsp" />

   <section class="management_wrapper managelist">
      <table class="management_profileList">
         <caption>상담 리뷰 목록</caption>
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
               <th colspan="2">작성일</th>
               <th colspan="2">아이디</th>
               <th></th>
            </tr>
         </thead>
         <tbody>
            <tr>
               <td>3000</td>
               <td colspan="2">2022-02-23</td>
               <td colspan="2">도윤1004</td>
               <td colspan="2"><input type="button" value="상세 보기"> <input
                  type="button" value="삭제"></td>
            </tr>
            <tr>
               <td>3000</td>
               <td colspan="2">2022-02-23</td>
               <td colspan="2">도윤1004</td>
               <td colspan="2"><input type="button" value="상세 보기"> <input
                  type="button" value="삭제"></td>
            </tr>
            <tr>
               <td>3000</td>
               <td colspan="2">2022-02-23</td>
               <td colspan="2">도윤1004</td>
               <td colspan="2"><input type="button" value="상세 보기"> <input
                  type="button" value="삭제"></td>
            </tr>
            <tr>
               <td>3000</td>
               <td colspan="2">2022-02-23</td>
               <td colspan="2">도윤1004</td>
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