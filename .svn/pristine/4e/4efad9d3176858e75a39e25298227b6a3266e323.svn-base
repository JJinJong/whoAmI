package com.whoAmI.managerExpert;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.managerExpert.dao.ExpertProfileDAO;
import com.whoAmI.managerExpert.vo.ExpertProfileVO;

public class ExpertProfleUpdate implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		ExpertProfileDAO epDao = new ExpertProfileDAO();
		
		int managerProfileNumber = epDao.getProfileNumberByMangerNumber((Integer)req.getSession().getAttribute("userNumber"));
		System.out.println("프로필업데이트 매니저 프로필 넘버"+managerProfileNumber);
		
		req.setAttribute("profile", epDao.selectDetail(managerProfileNumber));

		return new ActionForward(false, "/app/expert/solo/expertProfileUpdate.jsp");
	}

}
