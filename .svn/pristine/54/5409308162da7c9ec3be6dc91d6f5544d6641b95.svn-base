package com.whoAmI.worry;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.worry.dao.WorryDAO;
import com.whoAmI.worry.vo.WorryCommentDTO;
import com.whoAmI.worry.vo.WorryCommentVO;

public class WorryCommentWriteOK implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		WorryDAO dao = new WorryDAO();
		WorryCommentVO worry = new WorryCommentVO();
		
		
		worry.setWorryCommentContent(req.getParameter("contents"));
		worry.setWorryNumber(Integer.parseInt(req.getParameter("worryNumber")));
		worry.setUserNumber((Integer)req.getSession().getAttribute("userNumber"));
		dao.commentinsert(worry);
		
		return null;
	}

}
