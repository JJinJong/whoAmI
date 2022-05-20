package com.whoAmI.worry;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;

public class ListOK implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		ActionForward af = new ActionForward();
		System.out.println("공도윤");
		
		af.setRedirect(false);
		af.setPath("/app/worryStroy/worryList.jsp");
		
		return af;
	}

}
