package com.whoAmI.admin;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.admin.dao.AdminDAO;
import com.whoAmI.admin.vo.AdminVO;

public class AdminJoinOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		
		ActionForward af = new ActionForward();
		AdminVO admin=new AdminVO();
		AdminDAO dao=new AdminDAO();
		
		admin.setManagerName(req.getParameter("managerName"));
		admin.setManagerId(req.getParameter("managerId"));
		admin.setManagerPw(req.getParameter("managerPw"));
		//manager.setManagerPwCheck(req.getParameter("managerPwCheck"));
		dao.join(admin);
		af.setRedirect(true);
		af.setPath(req.getContextPath()+"/admin/AdminLogin.mg");
		return af;
	}

	
	}


