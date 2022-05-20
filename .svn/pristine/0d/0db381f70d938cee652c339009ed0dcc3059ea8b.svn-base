package com.whoAmI.worry;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.whoAmI.action.ActionForward;
import com.whoAmI.worry.dao.WorryDAO;
import com.whoAmI.worry.vo.WorryVO;
import com.whoAmI.action.Action;

public class WorryUpdateOK implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		WorryVO worry = new WorryVO();
		WorryDAO dao = new WorryDAO();
		ActionForward af = new ActionForward();
		
		
		System.out.println("업데이트 들어옴");
		/*page = Integer.parseInt(req.getParameter("page"));*/
		int worryNumber = Integer.parseInt(req.getParameter("worryNumber"));
		worry.setWorryNumber(Integer.parseInt(req.getParameter("worryNumber")));
		worry.setWorryTitle(req.getParameter("worryTitle"));
		worry.setWorryContent(req.getParameter("worryContent"));
		worry.setWorryCategoryNumber(Integer.parseInt(req.getParameter("worryCategoryNumber")));
		worry.setWorryNickNameCheck(req.getParameter("worryNickNameCheck"));
		worry.setWorryReadMeCheck(req.getParameter("worryReadMeCheck"));
		worry.setWorryHashTag(req.getParameter("worryHashTag"));
		worry.setUserNumber(1);
		
		dao.update(worry);
		
		//목록보기(페이지 기억)
		af.setRedirect(true);
		af.setPath(req.getContextPath() + "/app/worryStroy/worryList.jsp");
		
		return af;
	}
}
