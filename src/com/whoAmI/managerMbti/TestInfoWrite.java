package com.whoAmI.managerMbti;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;

public class TestInfoWrite implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		HttpSession session = req.getSession();
//		ManagerDAO mDao = new ManagerDAO();
		ActionForward af = new ActionForward();
		
//		String memberId = mDao.getInfo((Integer)session.getAttribute("managerNumber")).getMemberId();
//		String managerId="s701090";
//		req.setAttribute("managerId", managerId);
		
		af.setRedirect(false);
		af.setPath("/app/management/mbti/mbtiWrite.jsp");
		
		return af;
	}
}
