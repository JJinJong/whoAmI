package com.whoAmI.expertPage;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.expertPage.dao.ExpertPageDAO;
import com.whoAmI.user.vo.UserVO;

public class ExpertProflieDetail implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		ExpertPageDAO EPUdao = new ExpertPageDAO();
		
		
		UserVO user = EPUdao.expertInfo((Integer)req.getSession().getAttribute("userNumber"));
		
		System.out.println(user);
		
		
		ActionForward af = new ActionForward();
		
		req.setAttribute("user", user);
		System.out.println("들어옴");
		System.out.println("이메일" + user.getUserEmail());
		System.out.println("성별" + user.getUserGender());
		
		af.setRedirect(false);
		af.setPath("/app/expertMyPage/expertmyPage.jsp");
		
		return af;
	}

}
