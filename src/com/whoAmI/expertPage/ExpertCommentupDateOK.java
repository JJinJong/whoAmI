package com.whoAmI.expertPage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.expertPage.dao.ExpertPageCommentDAO;
import com.whoAmI.managerWorry.vo.WorryCommentManagerDTO;

public class ExpertCommentupDateOK implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		System.out.println("전문가 댓글 수정 들어옴");
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		ExpertPageCommentDAO dao= new ExpertPageCommentDAO();
		PrintWriter out = resp.getWriter();
		
		int worryCommentManagerNumber=Integer.parseInt(req.getParameter("worryCommentManagerNumber"));
		WorryCommentManagerDTO comment=dao.select(worryCommentManagerNumber);
		comment.setWorryCommentManagerContent(req.getParameter("worryCommentManagerContent"));
		
		System.out.println("전문가 댓글 수정 내용"+comment);
		
		dao.upDate(comment);
		out.print("success");
		out.close();
		return null;
	}

}
