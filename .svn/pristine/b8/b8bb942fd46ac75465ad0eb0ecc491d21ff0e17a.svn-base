package com.whoAmI.user;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.user.dao.UserDAO;
import com.whoAmI.user.vo.UserVO;

public class UserJoin implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		ActionForward af = new ActionForward();
		UserDAO dao = new UserDAO();
		UserVO user = new UserVO();
		af = new ActionForward();
		af.setRedirect(false);
		
		String kakaoEmail = req.getParameter("kakaoEmail");
		if(kakaoEmail != null) {
			//db조회
			user = dao.kakaoLogin(kakaoEmail);
			System.out.println(user);
			if(user == null) {
				req.setAttribute("kakaoEmail", req.getParameter("kakaoEmail"));
				af.setPath("/app/User_Account/join.jsp");
			}else {
				req.setAttribute("userEmail", user.getUserEmail());
				req.setAttribute("userPw", user.getUserPw());
				af.setPath("/user/UserLoginOk.user?userEmail=" + user.getUserEmail() + "&userPw=" + user.getUserPw());
			}
		}
		return af;
	}

}
