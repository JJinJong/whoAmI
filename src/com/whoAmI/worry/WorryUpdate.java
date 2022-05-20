package com.whoAmI.worry;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.whoAmI.action.ActionForward;
import com.whoAmI.worry.dao.WorryDAO;
import com.whoAmI.action.Action;

public class WorryUpdate implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
	
		
		int worryNumber = Integer.parseInt(req.getParameter("worryNumber"));
		ActionForward af = new ActionForward();
		
		WorryDAO dao = new WorryDAO();
		
		// 회원의 번호로 게시글의 정보 뿐만 아니라 회원의 아이디까지 가져와주는 쿼리 실행
				req.setAttribute("worry", dao.selectDetail(worryNumber));
				
				
				af.setRedirect(false);
				af.setPath("/app/worryStroy/worryrevisepage.jsp");
				
				return af;
	}
}
