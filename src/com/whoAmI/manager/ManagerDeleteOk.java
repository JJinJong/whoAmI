package com.whoAmI.manager;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.manager.dao.ManagerDAO;

public class ManagerDeleteOk implements Action{

	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		int managerNumber = Integer.parseInt(req.getParameter("managerNumber"));
		ManagerDAO dao = new ManagerDAO();
		ActionForward af = new ActionForward();
		
		dao.deleteManager(managerNumber);
		
		af.setRedirect(true);
		af.setPath(req.getContextPath() + "/cyan/admin_expert.jsp");
		
		return af;
	}
}
