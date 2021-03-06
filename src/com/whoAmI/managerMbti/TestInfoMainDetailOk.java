package com.whoAmI.managerMbti;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.managerMbti.dao.TestInfoDAO;
import com.whoAmI.managerMbti.dao.TestInfoPictureDAO;

public class TestInfoMainDetailOk implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		//사용자가 선택한 게시글 번호를 파라미터로 전달받는다.
		int testInfoNumber = Integer.parseInt(req.getParameter("testInfoNumber"));
		int page = Integer.parseInt(req.getParameter("page"));
		
		TestInfoDAO bDao = new TestInfoDAO();
		TestInfoPictureDAO fDao = new TestInfoPictureDAO();
		ActionForward af = new ActionForward();
		
		//게시글 번호로 조회한 게시글의 전체 정보를 requestScope에 저장한다.
		req.setAttribute("testInfo", bDao.selectDetail(testInfoNumber));
		req.setAttribute("testInfoPicture", fDao.select(testInfoNumber));
		req.setAttribute("page", page);
		
		
		//requestScope에 데이터를 담았기 때문에 forward로 페이지까지 req객체를 유지한다.
		af.setRedirect(false);
		af.setPath("/app/mbtiTest/mbtiTestDetail.jsp");
		
		return af;
	}


}
