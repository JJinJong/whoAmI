package com.whoAmI.worry;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.worry.dao.WorryDAO;
import com.whoAmI.worry.vo.WorryDTO;
import com.whoAmI.worry.vo.WorryVO;


public class WorryDetailOK implements Action {
	
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		//사용자가 선택한 게시글 번호를 파라미터로 전달받는다.
		
		int worryNumber = Integer.parseInt(req.getParameter("worryNumber"));
		WorryDTO worry = new WorryDTO();
		//worry.setUserNumber(1);
		WorryDAO wDao = new WorryDAO();
		ActionForward af = new ActionForward();
		//게시글 번호로 조회한 게시글의 전체 정보를 requestScope에 저장한다.
		req.setAttribute("worry", wDao.selectDetail(worryNumber));
		
		
		//상세보기로 왔다면, 조회수를 1 증가시켜준다.
		/*wDao.updateReadCount(worryNumber);*/
		
		//requestScope에 데이터를 담았기 때문에 forward로 페이지까지 req객체를 유지한다.
		af.setRedirect(false);
		af.setPath("/app/worryStroy/worrydetailpage.jsp");
		
		return af;
	}
}
