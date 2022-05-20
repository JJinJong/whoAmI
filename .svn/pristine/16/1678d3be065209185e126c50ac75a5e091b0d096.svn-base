package com.whoAmI.worry;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;

import com.whoAmI.worry.dao.WorryDAO;

public class CategoryNameOK implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		ActionForward af = new ActionForward();
		WorryDAO dao = new WorryDAO();
		
		System.out.println("들어옴");
		int worryCategorNumber = Integer.parseInt(req.getParameter("worryCategorNumber"));
		
		req.setAttribute("worryCategor", dao.selectCategoryName(worryCategorNumber));
		
		return af;
	}

}
