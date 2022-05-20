package com.whoAmI.expertPage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.whoAmI.action.ActionForward;

public class ExpertPageFrontController extends HttpServlet {
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
		case "/expertPage/ExpertProflieDetail.ddy":
			af = new ExpertProflieDetail().execute(req, resp);
			break;
		case "/expertPage/CheckPwOK.ddy":
			af = new CheckPwOK().execute(req, resp);
			break;
		case "/expertPage/ExpertCheckPwOK.ddy":
			af = new ExpertCheckPwOK().execute(req, resp);
			break;
		case "/expertPage/ExpertProflieUpdateSee.ddy":
			af = new ExpertProflieUpdateSee().execute(req, resp);
			break;
		case "/expertPage/ExpertCousultUpdateSee.ddy":
			af = new ExpertCousultUpdateSee().execute(req, resp);
			break;
		case "/expertPage/ExpertCousultUpdateOK.ddy":
			af = new ExpertCousultUpdateOK().execute(req, resp);
			break;
		case "/expertPage/ConsultGoUpdate.ddy":
			af = new ConsultGoUpdate().execute(req, resp);
			break;
		case "/expertPage/ConsultEndUpdate.ddy":
			af = new ConsultEndUpdate().execute(req, resp);
			break;
		case "/expertPage/ExpertCommentListOK.ddy":
			af = new ExpertCommentListOK().execute(req, resp);
			break;
		case "/expertPage/ExpertCommentList.ddy":
			af = new ExpertCommentList().execute(req, resp);
			break;
		case "/expertPage/ExpertCommentupDateOK.ddy":
			af = new ExpertCommentupDateOK().execute(req, resp);
			break;
		case "/expertPage/ExpertCommentDeleteOK.ddy":
			af = new ExpertCommentDeleteOK().execute(req, resp);
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

