package com.whoAmI.managerMbti;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.whoAmI.action.ActionForward;

public class TestInfoFontController extends HttpServlet {
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

		switch (command) {
		case "/managerMbti/TestInfoListOk.ns":
			af = new TestInfoListOk().execute(req, resp);
			break;
		case "/managerMbti/TestInfoDetailOk.ns":
			af = new TestInfoDetailOk().execute(req, resp);
			break;
		case "/managerMbti/TestInfoWrite.ns":
			af = new TestInfoWrite().execute(req, resp);
			break;
		case "/managerMbti/TestInfoWriteOk.ns":
			af = new TestInfoWriteOk().execute(req, resp);
			break;
		case "/managerMbti/TestInfoDeleteOk.ns":
			af = new TestInfoDeleteOk().execute(req, resp);
			break;
		case "/managerMbti/TestInfoMainListOk.ns":
			af = new TestInfoMainListOk().execute(req, resp);
			break;
		case "/managerMbti/TestInfoMainList.ns":
			af= new TestInfoMainList().execute(req, resp);
			break;	
		case "/managerMbti/TestInfoUpdateOk.ns":
			af = new TestInfoUpdateOk().execute(req, resp);
			break;
		case "/managerMbti/TestInfoUpdate.ns":
			af = new TestInfoUpdate().execute(req, resp);
			break;
			

		}
		

		// 분기 별 결과를 af에 담았다면 여기로 내려온다.
		if (af != null) {// af가 null이 아니라면
			if (af.isRedirect()) {// redirect 방식이라면
				resp.sendRedirect(af.getPath());// redirect로 전송

			} else {// forward 방식이라면
				RequestDispatcher dispatcher = req.getRequestDispatcher(af.getPath());
				dispatcher.forward(req, resp);// forward로 전송
			}
		}
	}
}
