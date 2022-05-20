<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE HTML>

<html>
   <head>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      <link rel="stylesheet" href="cyan/assets/css/main.css" />
      <title>관리자 목록</title>
      <link rel="stylesheet" href="${pageContext.request.contextPath}/cyan/assets/css/main.css" />
      <link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin/main.css">
   </head>
   <body class="is-preload">
   		<c:set var="realManager1List" value="${realManager1List}"/>
		<c:set var="page" value="${page}"/>
		<c:set var="startPage" value="${startPage}"/>
		<c:set var="endPage" value="${endPage}"/>
		<c:set var="realEndPage" value="${realEndPage}"/>
		<c:set var="total" value="${total}"/>

      <!-- Wrapper -->
         <div id="wrapper">
            <!-- Main -->         
	<jsp:include page="/app/fix/managementHeader2.jsp" />
	
               <div id="main">
                  <div class="inner">

                     <!-- Header -->
                        <header id="header">
                           <a href="" class="logo"><strong>관리자 </strong> 목록</a>
                           <ul class="icons">
                           </ul>
                        </header>


                     <!-- Content -->
                        <section>
                           <header class="aMain">
                              <span>관리자 수 : ${total}명</span>
                           </header>


                           <div class="adminsWrapper">
                              <div class="admins">
                                 <div class="adminWrapper">

                                    <div class="admin">
                                       <div class="aContents">  
                                       	  <div class="expertNum">
										      <a href="" class="expertNum">이용자 번호</a>
										  </div> 
                                          <div class="adminId">
                                             <a href="" class="columnId">아이디</a>
                                          </div>
                                          <div class="adminName">
                                             <a href="" class="columnName">이름</a>
                                          </div>
                                       </div>
                                       <div class="aBtns" id="index">
                                          <!-- <a href="#" class="button small">상세내용</a>
                                          <a href="#" class="button small">삭제</a> -->
                                       </div>
                                    </div>
                                    
                                    <c:choose>
                                    <c:when test="${realManager1List != null and fn:length(realManager1List) > 0}">     
                                    	<div class="admin">
                                    		<c:forEach var="manager" items="${realManager1List}">
                                       		<div class="aContents">   
										        <div class="expertNum">
										            <a href="" class="expertNum">${manager.getManagerNumber()}</a>
										        </div>
										            <div class="expertId">
										            <a href="" class="expertId">${manager.getManagerId()}</a>
										      		</div>
										        <div class="expertName">
										            <a href="" class="expertName">${manager.getManagerName()}</a>     
										        </div>
                                       		</div>
                                       		<div class="aBtns">
                                          		<a href="#" class="button small">상세내용</a>
                                          		<a href="#" class="button small">삭제</a>
                                       		</div>
                                    		</c:forEach>
                                    	</div>
									</c:when>
									<c:otherwise>
										<div>
											<div>등록된 전문가가 없습니다.</div>
										</div>
									</c:otherwise>
								</c:choose>
                                    <hr>
                                 </div>
                              </div>
                           </div>

                           <!-- 페이징 처리 -->
                           <table style="font-size:1.0rem">
                              <tr align="left" valign="middle">
                                 
                                 <td class="web-view">
                                    <c:if test="${startPage > 1}">
                                       <a href="${pageContext.request.contextPath}/board/BoardListOk.bo?page=${startPage - 1}">&lt;</a>
                                    </c:if>
                                 
                                    <c:forEach var="i" begin="${startPage}" end="${endPage}">
                                       <c:choose>
                                          <c:when test="${i eq page}">
                                             <c:out value="${i}"/>&nbsp;&nbsp;
                                          </c:when>
                                          <c:otherwise>
                                             <a href="${pageContext.request.contextPath}/board/BoardListOk.bo?page=${i}"><c:out value="${i}"/></a>&nbsp;&nbsp;
                                          </c:otherwise>
                                       </c:choose>
                                    </c:forEach>
                                    
                                    <c:if test="${endPage < realEndPage}">
                                       <a href="${pageContext.request.contextPath}/board/BoardListOk.bo?page=${endPage + 1}">&gt;</a>
                                    </c:if>
                                 </td>
                              </tr>
                           </table>

                        </section>

                  </div>
               </div>     
            </div>


      <!-- Scripts -->
         <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
         <script src="${pageContext.request.contextPath}/cyan/assets/js/browser.min.js"></script>
         <script src="${pageContext.request.contextPath}/cyan/assets/js/breakpoints.min.js"></script>
         <script src="${pageContext.request.contextPath}/cyan/assets/js/util.js"></script>
   </body>
</html>