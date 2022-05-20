package com.whoAmI.managerExpert;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.managerExpert.dao.ExpertProfileDAO;
import com.whoAmI.user.vo.UserVO;

public class ExpertJoinOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		
		ActionForward af= new ActionForward();
		UserVO user = new UserVO(); //아래 정보를 받아와서 모델객체에 넣는다.
		ExpertProfileDAO epDao = new ExpertProfileDAO();
		
		user.setUserEmail(req.getParameter("userEmail"));
		user.setUserPw(req.getParameter("userPw"));
		user.setUserName(req.getParameter("userName"));
		user.setUserGender(req.getParameter("userGender"));
		user.setUserHP(req.getParameter("userHP"));
		
//		user.setUserAddress(req.getParameter("userZipcode"));
//		user.setUserNumber(Integer.parseInt(req.getParameter("userNumber")));
//		user.setUserAddress(req.getParameter("userAddress"));
//		user.setUserBirth(Integer.parseInt(req.getParameter("userBirth")));
		epDao.ExpertJoin(user);
		
		af.setRedirect(true);
		af.setPath(req.getContextPath()+"/user/UserLogin.user");
		
		return af;
	}

}
