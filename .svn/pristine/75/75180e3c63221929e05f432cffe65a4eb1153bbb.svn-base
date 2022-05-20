package com.whoAmI.userMyPage;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.userMyPage.dao.ConsultReviewDAO;


public class MyReviewDeleteOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		System.out.println("삭제 들어옴?");
		ConsultReviewDAO dao= new ConsultReviewDAO();
		int reviewNumber = Integer.parseInt(req.getParameter("reviewNumber"));
		System.out.println("고유번호");
		System.out.println(reviewNumber);
		ActionForward af= new ActionForward();
		
		dao.delete(reviewNumber);
		
		af.setRedirect(true);
		af.setPath(req.getContextPath()+"/userMyPage/MyReviewListOk.dy");
		return af;
	}

}
