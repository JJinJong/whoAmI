package com.whoAmI.user;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.managerExpert.dao.ExpertProfileDAO;
import com.whoAmI.user.dao.UserDAO;
import com.whoAmI.user.vo.UserVO;

public class UserLoginOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
	HashMap<String, String>loginMap=new HashMap<>();
	UserDAO dao =new UserDAO();
	// 임시 추가 부분
	ExpertProfileDAO epDao = new ExpertProfileDAO();
	
	int userNumber=0;
	String userEmail="";
	ActionForward af=new ActionForward();
	HttpSession session=req.getSession();
	
	loginMap.put("userEmail", req.getParameter("userEmail"));
	loginMap.put("userPw", req.getParameter("userPw"));
	
	// 임시 추가 부분
	int userStatus =  -1;
	try {
		userStatus=epDao.selectStatus(loginMap);
	} catch (Exception e) {
		e.printStackTrace();
	}
	userNumber=dao.login(loginMap);
	userEmail=req.getParameter("userEmail");
	userEmail=dao.header(userEmail);
	
	if(userNumber==0) {//로그인 실패
		af.setRedirect(false);
		af.setPath("/user/UserLogin.user?code= "+userNumber);
	}else {
		session.setAttribute("userNumber", userNumber);
		session.setAttribute("userEmail", userEmail);
		// 임시 추가 부분
		session.setAttribute("userStatus", userStatus);
		af.setRedirect(true);
		af.setPath(req.getContextPath()+"/user/Main.user");
	}
		return af;
	}

}

//		af.setPath(req.getContextPath()+"/app/mainPage/mainPage.jsp");//다음 페이지