package com.whoAmI.managerExpert;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.managerExpert.dao.ExpertProfileDAO;
import com.whoAmI.user.dao.UserDAO;
import com.whoAmI.user.vo.UserVO;

public class ExpertPaymentOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		ExpertProfileDAO epDao = new ExpertProfileDAO();
		
		
		
		UserVO user = epDao.selectUserAll((Integer)req.getSession().getAttribute("userNumber"));
		
		ActionForward af = new ActionForward();
		
		String consultType = req.getParameter("consultType");
		String consultTitle = req.getParameter("consultTitle");
		String consultPrice = req.getParameter("consultPrice");
		String consultSalePrice = req.getParameter("consultSalePrice");
		String userNumberExpert = req.getParameter("userNumberExpert");
		int userNumber = (Integer)req.getSession().getAttribute("userNumber");

		req.setAttribute("user", user);
		req.setAttribute("consultType", consultType);
		req.setAttribute("consultTitle", consultTitle);
		req.setAttribute("consultPrice", consultPrice);
		req.setAttribute("consultSalePrice", consultSalePrice);
		req.setAttribute("userNumberExpert", userNumberExpert);
		
		af.setRedirect(false);
		af.setPath("/app/expert/solo/expertPayment.jsp");
		
		return af;
	}

}
