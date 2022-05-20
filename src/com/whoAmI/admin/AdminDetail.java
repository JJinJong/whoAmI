package com.whoAmI.admin;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.admin.dao.AdminDAO;

public class AdminDetail implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		AdminDAO dao = new AdminDAO();
		
		int everyUser = dao.everyUser();
		int everyMan = dao.everyMan();
		int everyWoman = dao.everyWoman();
		int allUser = dao.allUser();
		int allMan = dao.allMan();
		int allWoman = dao.allWoman();
		int allExpert = dao.allExpert();
		int allWomanExpert = dao.allWomanExpert();
		int allManExpert = dao.allManExpert();
		int allFirstExpert = dao.allFirstExpert();
		int allSecondExpert = dao.allSecondExpert();
		int allWorry = dao.allWorry();
		int allManWorry = dao.allManWorry();
		int allWomanWorry = dao.allWomanWorry();
		int allJoin = dao.allJoin();
		int allPay = dao.allPay();
		int allReview = dao.allReview();
		
		
		ActionForward af = new ActionForward();
		
		req.setAttribute("everyUser", everyUser);
		req.setAttribute("everyMan", everyMan);
		req.setAttribute("everyWoman", everyWoman);
		req.setAttribute("allUser", allUser);
		req.setAttribute("allMan", allMan);
		req.setAttribute("allWoman", allWoman);
		req.setAttribute("allExpert", allExpert);
		req.setAttribute("allWomanExpert", allWomanExpert);
		req.setAttribute("allManExpert", allManExpert);
		req.setAttribute("allFirstExpert", allFirstExpert);
		req.setAttribute("allSecondExpert", allSecondExpert);
		req.setAttribute("allWorry", allWorry);
		req.setAttribute("allManWorry", allManWorry);
		req.setAttribute("allWomanWorry", allWomanWorry);
		req.setAttribute("allJoin", allJoin);
		req.setAttribute("allPay", allPay);
		req.setAttribute("allReview", allReview);
		
		af.setRedirect(false);
		af.setPath("/app/management/managementMainPage/managementMainPage.jsp");
		
		return af;
	}

}
