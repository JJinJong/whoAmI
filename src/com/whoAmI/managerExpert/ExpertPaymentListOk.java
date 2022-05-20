package com.whoAmI.managerExpert;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.managerExpert.dao.ExpertProfileDAO;
import com.whoAmI.managerExpert.vo.ConsultPaymentDetailVO;

public class ExpertPaymentListOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		ExpertProfileDAO epDao = new ExpertProfileDAO();
		
// 결제 리스트
		ConsultPaymentDetailVO consultPaymentDetail = new ConsultPaymentDetailVO();
		 
//	전문가 넘버
		int userNumberExpert = Integer.parseInt(req.getParameter("userNumberExpert"));
// 전문가 프로필 넘버 By 매니저 넘버
		int managerProfileNumber  = epDao.getProfileNumberByMangerNumber(userNumberExpert);
		
		req.setAttribute("managerProfileNumber", managerProfileNumber);
		
		consultPaymentDetail.setConsultTitle(req.getParameter("consultTitle"));
		consultPaymentDetail.setConsultType(req.getParameter("consultType"));
		consultPaymentDetail.setUserNumberExpert(userNumberExpert);
		consultPaymentDetail.setUserNumber((Integer)req.getSession().getAttribute("userNumber"));
		
		epDao.insertConsultPaymentDetail(consultPaymentDetail);
		
		return new ActionForward(false, "/expert/ExpertProfileDetailOk.me?managerProfileNumber="+managerProfileNumber);
	}

}
