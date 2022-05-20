package com.whoAmI.managerExpert;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.whoAmI.action.ActionForward;

public class ExpertFrontController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String requestURI = req.getRequestURI();
		String contextPath = req.getContextPath();
		String command = requestURI.substring(contextPath.length());
		ActionForward af = null;
		
		switch(command) {
//		전문가 프로필 작성 페이지 이동
		case "/expert/ExpertProfileWrite.me":
			af = new ActionForward(false, "/app/expert/solo/expertProfileWrite.jsp");
			break;
//		메인 페이지로 이동
		case "/expert/MainPage.me":
			af = new ActionForward(false, "/app/mainPage/mainPage.jsp");
			break;
//		메인 페이지 프로필 ajax	
		case "/expert/MainPageProfile.me":
			af = new MainPageProfile().execute(req, resp);
			break;
//		전문가 프로필 작성
		case "/expert/ExpertProfileWriteOk.me":
			af = new ExpertProfileWriteOk().execute(req, resp);
			break;
//		전문가 프로필 작성 여부 체크 후  분기 처리
		case "/expert/ExpertListCheck.me":
			af = new ExpertListCheck().execute(req, resp);
			break;
		case "/expert/ExpertListOk.me":
			af = new ExpertListOk().execute(req, resp);
			break;
		case "/expert/ExpertListPriceOk.me":
			af = new ExpertListPriceOk().execute(req, resp);
			break;
		case "/expert/ExpertListFilterOk.me":
			af = new ExpertListFilterOk().execute(req, resp);
			break;
//		전문가 디테일	
		case "/expert/ExpertProfileDetail.me":
			af = new ExpertProfileDetail().execute(req, resp);
			break;
//		유저가 보는 전문가 디테일	
		case "/expert/ExpertProfileDetailOk.me":
			af = new ExpertProfileDetailOk().execute(req, resp);
			break;
//		리뷰 가져오기 ajax
		case "/expert/ExpertProfileDetailReview.me":
			af = new ExpertProfileDetailReview().execute(req, resp);
			break;
		case "/expert/ExpertConsultTypeListOk.me":
			af = new ExpertConsultTypeListOk().execute(req, resp);
			break;
//		결제 내역 페이지로 이동
		case "/expert/ExpertPaymentOk.me":
			af = new ExpertPaymentOk().execute(req, resp);
			break;
//		결제 내역 작성
		case "/expert/ExpertPaymentListOk.me":
			af = new ExpertPaymentListOk().execute(req, resp);
			break;
		// 전문가 찾기 리스트
		case "/expert/ExpertList.me":
			af = new ActionForward(false, "/app/expert/solo/expertList.jsp");
			break;
		case "/expert/ManagerExpertListOk.me":
			af = new ManagerExpertListOk().execute(req, resp);
			break;
//		 관리자 페이지 전문가 프로필 삭제
		case "/expert/ExpertProfileDeleteOk.me":
			af = new ExpertProfileDeleteOk().execute(req, resp);
			break;
//		전문가 프로필 삭제
		case "/expert/ExpertProfileDelete.me":
			af = new ExpertProfileDelete().execute(req, resp);
			break;
		case "/expert/ExpertProfleUpdate.me":
			af = new ExpertProfleUpdate().execute(req, resp);
			break;
		case "/expert/ExpertProfleUpdateOk.me":
			af = new ExpertProfleUpdateOk().execute(req, resp);
			break;
		case "/expert/ExpertJoinCheck.me":
			af = new ExpertJoinCheck().execute(req, resp);
			break;
		case "/expert/ExpertJoin.me":
			af = new ActionForward(false, "/app/User_Account/expertJoin.jsp");
			break;
		case "/expert/ExpertJoinOk.me":
			af = new ExpertJoinOk().execute(req, resp);
			break;
		}
		
		//분기 별 결과를 af에 담았다면 여기로 내려온다.
		
		if(af != null) {// af가 null이 아니라면
			if(af.isRedirect()) {//redirect 방식이라면
				resp.sendRedirect(af.getPath());//redirect로 전송
				
			}else {//forward 방식이라면
				RequestDispatcher dispatcher = req.getRequestDispatcher(af.getPath());
				dispatcher.forward(req, resp);//forward로 전송
			}
		}
	}
}















