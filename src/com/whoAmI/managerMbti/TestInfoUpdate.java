package com.whoAmI.managerMbti;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.managerMbti.dao.TestInfoDAO;
import com.whoAmI.managerMbti.dao.TestInfoPictureDAO;

public class TestInfoUpdate implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {

		int page = Integer.parseInt(req.getParameter("page"));
		int testInfoNumber = Integer.parseInt(req.getParameter("testInfoNumber"));
		ActionForward af = new ActionForward();
		TestInfoPictureDAO fDao = new TestInfoPictureDAO();
		TestInfoDAO dao = new TestInfoDAO();

		// 회원의 번호로 게시글의 정보 뿐만 아니라 회원의 아이디까지 가져와주는 쿼리 실행
		req.setAttribute("testInfo", dao.selectDetail(testInfoNumber));
		req.setAttribute("page", page);
		req.setAttribute("testInfoPictures", fDao.select(testInfoNumber));
		af.setRedirect(false);
		af.setPath("/app/management/mbti/mbtiUpdate.jsp");
		
		return af;
	}
}

