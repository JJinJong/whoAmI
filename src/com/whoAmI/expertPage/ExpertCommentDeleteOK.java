package com.whoAmI.expertPage;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.expertPage.dao.ExpertPageCommentDAO;

public class ExpertCommentDeleteOK implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		System.out.println("삭제 들어옴?");
		ExpertPageCommentDAO dao= new ExpertPageCommentDAO();
		int worryCommentManagerNumber = Integer.parseInt(req.getParameter("worryCommentManagerNumber"));
		System.out.println("고유번호");
		System.out.println(worryCommentManagerNumber);
		ActionForward af= new ActionForward();
		
		dao.delete(worryCommentManagerNumber);
		
		af.setRedirect(true);
		af.setPath(req.getContextPath()+"/expertPage/ExpertCommentListOK.ddy");
		return af;
	}

}
