package com.whoAmI.userMyPage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.whoAmI.action.ActionForward;

public class MyPageFrontController extends HttpServlet {
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
		case "/userMyPage/MyProflieDetail.dy":
			af = new MyProflieDetail().execute(req, resp);
			break;
		case "/userMyPage/checkPwOK.dy":
			af = new checkPwOK().execute(req, resp);
			break;
		case "/userMyPage/MyPageUpdateOK.dy":
			new MyPageUpdateOK().execute(req, resp);
			break;
		case "/userMyPage/userCheckPwOK.dy":
			new userCheckPwOK().execute(req, resp);
			break;
		case "/userMyPage/MyPageUpdateSee.dy":
			af = new MyPageUpdateSee().execute(req, resp);
			break;
		// 댓글
		case "/userMyPage/MyCommentListOk.dy":
			af = new MyCommentListOk().execute(req, resp);
			break;
		case "/userMyPage/MyCommentDeleteOk.dy":
			af = new MyCommentDeleteOk().execute(req, resp);
			break;
		case "/userMyPage/MyCommentUpDateOk.dy":
			af = new MyCommentUpDateOk().execute(req, resp);
			break;
		// 리뷰
		case "/userMyPage/MyReviewListOk.dy":
			af = new MyReviewListOk().execute(req, resp);
			break;
		case "/userMyPage/MyReviewDeleteOk.dy":
			af = new MyReviewDeleteOk().execute(req, resp);
			break;
		case "/userMyPage/MyReviewUpDateOk.dy":
			af = new MyReviewUpDateOk().execute(req, resp);
			break;
		// 고민사연
		case "/userMyPage/MyWorryListOk.dy":
			af = new MyWorryListOk().execute(req, resp);
			break;
		case "/userMyPage/UserListOk.dy":
			af = new UserListOk().execute(req, resp);
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
