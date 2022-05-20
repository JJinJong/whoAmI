package com.whoAmI.worry;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.worry.dao.WorryCommentDAO;
import com.whoAmI.worry.dao.WorryDAO;

public class WorryManagermentDeleteOK implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		int worryNumber = Integer.parseInt(req.getParameter("worryNumber"));
		WorryDAO dao = new WorryDAO();
		WorryCommentDAO cdao = new WorryCommentDAO();
		ActionForward af = new ActionForward();
		
		dao.deleteLike(worryNumber);
		cdao.deleteComment(worryNumber);
		dao.deleteManagerComment(worryNumber);
		dao.delete(worryNumber);
		
		af.setRedirect(true);
		af.setPath(req.getContextPath() + "/worry/WorryManagermentListOK.bo");
		
		return af;
	}

}
