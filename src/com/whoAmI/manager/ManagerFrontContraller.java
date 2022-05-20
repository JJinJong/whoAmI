package com.whoAmI.manager;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.whoAmI.action.ActionForward;
import com.whoAmI.manager.ManagerListOk;
import com.whoAmI.manager.RealManagerListOk;

public class ManagerFrontContraller extends HttpServlet {
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
		
		
		if(command.equals("/manager/ManagerListOk.ma")) {
			af = new ManagerListOk().execute(req, resp);
		}
		else if(command.equals("/manager/RealManagerListOk.ma")) {
			af = new RealManagerListOk().execute(req, resp);	
		}
		else if(command.equals("/manager/MemberListOk.ma")) {
			af = new MemberListOk().execute(req, resp);	
		}
		else if(command.equals("/manager/ManagerDeleteOk.ma")) {
			af = new ManagerDeleteOk().execute(req, resp);	
		}
		
		// 분기 별 결과를 af에 담았다면 여기로 내려온다.
		if(af != null) {
			
			if(af.isRedirect()) {
				resp.sendRedirect(af.getPath());
			}else {
				RequestDispatcher dispatcher = req.getRequestDispatcher(af.getPath());
				dispatcher.forward(req, resp);
			}
		}
	}
}



