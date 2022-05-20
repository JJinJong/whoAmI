package com.whoAmI.worry;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.worry.dao.WorryDAO;
import com.whoAmI.worry.vo.WorryLikeVO;
import com.whoAmI.worry.vo.WorryVO;

public class LikeOK implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException{
	
		WorryDAO wdao = new WorryDAO();
		PrintWriter out = resp.getWriter();
		HttpSession session = req.getSession();
		
		int worryNumber = Integer.parseInt(req.getParameter("worryNumber"));
		int count = Integer.parseInt(req.getParameter("count"));
		
		try {
			int userNumber = (Integer)req.getSession().getAttribute("userNumber");
			
			wdao.updateWorryLikeNumber(worryNumber, count);
			
			//만약에 이미 사용자가 좋아요를 누른 게시글이라면
			//delete()
			if(count == -1) {
				wdao.deleteLikeUser(userNumber, worryNumber);
			}else {
				//사용자가 좋아요를 누르지 않은 게시글이라면
				wdao.insertLikeUser(worryNumber, userNumber);
			}
		} catch (Exception e) {
			System.out.println("좋아요 오류");
			e.printStackTrace();
		}
		
		out.println("success");
		
		return null;
	}
}
