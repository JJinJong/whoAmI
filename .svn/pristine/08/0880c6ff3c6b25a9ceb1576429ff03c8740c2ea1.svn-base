package com.whoAmI.userMyPage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.userMyPage.dao.MyCommentDAO;
import com.whoAmI.userMyPage.vo.MyCommentVO;

public class MyCommentUpDateOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		System.out.println("수정컨트롤들어옴");
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		MyCommentDAO dao= new MyCommentDAO();
		PrintWriter out = resp.getWriter();
		
		int worryCommentNumber=Integer.parseInt(req.getParameter("worryCommentNumber"));
		MyCommentVO comment=dao.select(worryCommentNumber);
		comment.setWorryCommentContent(req.getParameter("CommentContent"));

		
		dao.upDate(comment);
		out.print("success");
		out.close();
		return null;
	}

}
