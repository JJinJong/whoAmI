package com.whoAmI.user;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.user.dao.UserDAO;

public class UserDeleteOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		      int userNumber = Integer.parseInt(req.getParameter("userNumber"));
		      UserDAO dao = new UserDAO();
		      ActionForward af = new ActionForward();
		      
		      
		      
		      
		      dao.userDelete(userNumber);
		      
		      af.setRedirect(true);
		      af.setPath(req.getContextPath() + "/userMyPage/UserListOk.dy");
		      
		      return af;

	}

}
