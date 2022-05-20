package com.whoAmI.diary;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;

public class DiaryWrite implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		// TODO Auto-generated method stub
//		HttpSession session = req.getSession();
//		UserDAO uDao = new UserDAO();
		ActionForward af = new ActionForward();
		
//		Integer userNumber = 1;
//		Integer userNumber = (Integer)session.getAttribute("userNumber");
//		UserVO uVO = uDao.getInfo(userNumber);
//		String userNickname = uVO.getUserNickname();
		
//		req.setAttribute("userNumber", userNumber);
		
		af.setRedirect(false);
		af.setPath("/app/diary/diaryWrite.jsp");
		
		return af;
	}
}


