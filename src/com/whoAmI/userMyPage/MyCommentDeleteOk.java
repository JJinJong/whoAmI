package com.whoAmI.userMyPage;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.userMyPage.dao.MyCommentDAO;

public class MyCommentDeleteOk implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		System.out.println("삭제 들어옴?");
		MyCommentDAO dao= new MyCommentDAO();
		int worryCommentNumber = Integer.parseInt(req.getParameter("worryCommentNumber"));
		System.out.println("고유번호");
		System.out.println(worryCommentNumber);
		ActionForward af= new ActionForward();
		
		dao.delete(worryCommentNumber);
		
		af.setRedirect(true);
		af.setPath(req.getContextPath()+"/userMyPage/MyCommentListOk.dy");
		return af;
	}

}
