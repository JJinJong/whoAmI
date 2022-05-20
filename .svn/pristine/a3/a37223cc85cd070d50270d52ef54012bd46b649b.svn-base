package com.whoAmI.user;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.user.dao.UserDAO;
import com.whoAmI.user.vo.UserVO;

public class UserJoinOk implements Action {
	//회원가입 컨트롤러
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		
		ActionForward af= new ActionForward();
		UserVO user = new UserVO(); //아래 정보를 받아와서 모델객체에 넣는다.
		UserDAO dao = new UserDAO();
		
		user.setUserEmail(req.getParameter("userEmail"));
		user.setUserPw(req.getParameter("userPw"));
		user.setUserName(req.getParameter("userName"));
		user.setUserNickname(req.getParameter("userNickname"));
		user.setUserGender(req.getParameter("userGender"));
		user.setUserAddress(req.getParameter("userAddress"));
		user.setUserBirth(req.getParameter("userBirth"));
		user.setUserHP(req.getParameter("userHP"));
		user.setKakaoEmail(req.getParameter("kakaoEmail"));
		user.setUserZipcode(req.getParameter("userZipcode"));
		user.setUserAddressDetail(req.getParameter("userAddressDetail"));
	
		dao.join(user);
		af.setRedirect(true);
		af.setPath(req.getContextPath()+"/user/UserLogin.user");
		
		return af;
	}
}

