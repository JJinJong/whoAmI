package com.whoAmI.expertPage;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.expertPage.dao.ExpertPageDAO;

public class ConsultEndUpdate implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		 req.setCharacterEncoding("UTF-8");
	     resp.setCharacterEncoding("UTF-8");
	     
	     ExpertPageDAO CGOdao = new ExpertPageDAO();
	     int consultPaymentDetailNumber = Integer.parseInt(req.getParameter("consultPaymentDetailNumber"));
	     
	     CGOdao.consultEndUpdate(consultPaymentDetailNumber);
	     CGOdao.insertNumbers(CGOdao.selectNumbers(consultPaymentDetailNumber));
	     
		
		return new ActionForward(false, "/expertPage/ExpertCousultUpdateOK.ddy");
	}

}
