package com.whoAmI.worry;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.whoAmI.action.ActionForward;

public class WorryFrontController extends HttpServlet {

	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String requestURI = req.getRequestURI();
		String contextPath = req.getContextPath();
		String command = requestURI.substring(contextPath.length());
		ActionForward af = null;
		
		switch(command) {
		case "/worry/MainPageWorryListOk.bo":
			af = new MainPageWorryListOk().execute(req, resp);
			break;
		case "/worry/WorryDetailOK.bo":
			af = new WorryDetailOK().execute(req, resp);
			break;
		case "/worry/WorryWriteOk.bo":
			af = new WorryWriteOK().execute(req, resp);
			break;
		case "/worry/WorryListOK.bo":
			af = new WorryListOK().execute(req, resp);
			break;
		case "/worry/LikeOK.bo":
			af = new LikeOK().execute(req, resp);
			break;
		case "/worry/WorryUpdateOK.bo":
			af = new WorryUpdateOK().execute(req, resp);
			break;
		case "/worry/WorryDeleteOK.bo":
			af = new WorryDeleteOK().execute(req, resp);
			break;
		case "/worry/WorryUpdate.bo":
			af = new WorryUpdate().execute(req, resp);
			break;
		case "/worry/WorryCommentWriteOK.bo":
			af = new WorryCommentWriteOK().execute(req, resp);
			break;
		case "/worry/CategoryNameOK.bo":
			af = new CategoryNameOK().execute(req, resp);
			break;
		case "/worry/WorryManagermentListOK.bo":
			af = new WorryManagermentListOK().execute(req, resp);
			break;
		case "/worry/WorryManagermentDeleteOK.bo":
			af = new WorryManagermentDeleteOK().execute(req, resp);
			break;
		case "/worry/WorryCommentListOK.bo":
			af = new WorryCommentListOK().execute(req, resp);
			break;
		case "/worry/WorryLikeNumberOK.bo":
			new WorryLikeNumberOK().execute(req, resp);
			break;
		case "/worry/WorryCommentManagerWriteOK.bo":
			af = new WorryCommentManagerWriteOK().execute(req, resp);
			break;
		case "/worry/WorryCommentManagerListOK.bo":
			af = new WorryCommentManagerListOK().execute(req, resp);
			break;
		case "/worry/CategoryCheckOK.bo":
			af = new CategoryCheckOK().execute(req, resp);
			break;
		case "/worry/ListOK.bo":
			af = new ListOK().execute(req, resp);
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
	
