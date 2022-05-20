package com.whoAmI.admin;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;

public class AdminLogout implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		HttpSession session=req.getSession();
		ActionForward af= new ActionForward();
		
		session.invalidate();
		
		af.setRedirect(true);
		af.setPath(req.getContextPath()+"/admin/AdminLogin.mg");
		
		return af;
	}

}
