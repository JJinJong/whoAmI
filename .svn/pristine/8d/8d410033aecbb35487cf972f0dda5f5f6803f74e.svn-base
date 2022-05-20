package com.whoAmI.userMyPage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.userMyPage.dao.ConsultReviewDAO;
import com.whoAmI.userMyPage.vo.ConsultReviewVO;


public class MyReviewUpDateOk implements Action {
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		System.out.println("수정컨트롤들어옴");
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		ConsultReviewDAO dao= new ConsultReviewDAO();
		PrintWriter out = resp.getWriter();

		int worryCommentNumber=Integer.parseInt(req.getParameter("reviewNumber"));
		System.out.println(worryCommentNumber);
		ConsultReviewVO vo=dao.select(worryCommentNumber);
		vo.setConsultReviewContent(req.getParameter("reviewContent"));
		System.out.println(vo.getConsultReviewContent()+"리뷰내요~");
		
		dao.upDate(vo);
		out.print("success");
		out.close();
		return null;
	}

}
