package com.whoAmI.expertPage;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.expertPage.dao.ExpertPageDAO;

public class ConsultGoUpdate implements Action {
	
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		System.out.println("진행중들어옴");	
		
		 req.setCharacterEncoding("UTF-8");
	     resp.setCharacterEncoding("UTF-8");
	     
	     ExpertPageDAO CGOdao = new ExpertPageDAO();
	     
	     CGOdao.consultGoUpdate(Integer.parseInt(req.getParameter("consultPaymentDetailNumber")));
	     System.out.println("결제내역번호"+req.getParameter("consultPaymentDetailNumber"));
		
		return new ActionForward(false, "/expertPage/ExpertCousultUpdateOK.ddy");
	}

}
