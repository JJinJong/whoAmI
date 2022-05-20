package com.whoAmI.user;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.user.dao.UserDAO;

public class ChangePwOK implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		UserDAO dao=new UserDAO();
		ActionForward af=new ActionForward();
		String userEmail = req.getParameter("FindEmail");
		String userPw = req.getParameter("setupPw");
		dao.update(userEmail, userPw);
		af.setRedirect(true);
		af.setPath(req.getContextPath()+"/user/UserLogin.user");
		
		return af;
	}
}
