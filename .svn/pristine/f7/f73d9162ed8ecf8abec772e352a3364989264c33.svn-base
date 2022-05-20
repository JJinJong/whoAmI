package com.whoAmI.managerMbti;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;

public class TestInfoMainList implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		System.out.println("들어옴");
		ActionForward af=new ActionForward();
		af.setRedirect(true);
		af.setPath(req.getContextPath()+"/app/mbtiTest/mbtiTestMain.jsp");
		return af;
	}

}
