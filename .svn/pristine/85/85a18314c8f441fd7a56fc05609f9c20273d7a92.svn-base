package com.whoAmI.diary;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.whoAmI.action.ActionForward;

public class DiaryFrontContraller extends HttpServlet {
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
		case "/diary/DiaryWrite.di":
			af = new DiaryWrite().execute(req, resp);
			break;
		case "/diary/DiaryWriteOk.di":
			af = new DiaryWriteOk().execute(req, resp);
			break;
		case "/diary/DiaryListOk.di":
			af = new DiaryListOk().execute(req, resp);
			break;
		case "/diary/DiaryDetailOk.di":
			af = new DiaryDetailOk().execute(req, resp);
			break;
		case "/diary/DiaryRevise.di":
			af = new DiaryRevise().execute(req, resp);
			break;
		case "/diary/DiaryReviseOk.di":
			af = new DiaryReviseOk().execute(req, resp);
			break;
		case "/diary/DiaryDeleteOk.di":
			af = new DiaryDeleteOk().execute(req, resp);
			break;
		case "/diary/DiaryColorSortOk.di":
			af = new DiaryColorSortOk().execute(req, resp);
			break;
		}
		
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
