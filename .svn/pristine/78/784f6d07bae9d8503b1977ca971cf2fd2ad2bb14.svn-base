package com.whoAmI.user;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;

public class UserLogout implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
	
		HttpSession session=req.getSession();
		ActionForward af = new ActionForward();
		
		session.invalidate(); //세션 삭제
		
		af.setRedirect(true);  //false로 한다는 것은 forward로 한다는 뜻. 이곳에서 세션정보 전부 날리고 이동하기 위해 리다이렉트 사용
		af.setPath(req.getContextPath()+"/app/mainPage/mainPage.jsp");
		
		return af;
	}

}

//af.setPath(req.getContextPath()+"/user/UserLogin.user");  23번째줄 