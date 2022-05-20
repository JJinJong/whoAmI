package com.whoAmI.worry;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.worry.dao.WorryCommentDAO;
import com.whoAmI.worry.dao.WorryDAO;
import com.whoAmI.worry.vo.WorryCommentDTO;

public class WorryDeleteOK implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		int worryNumber = Integer.parseInt(req.getParameter("worryNumber"));
		WorryDAO dao = new WorryDAO();
		WorryCommentDAO cdao = new WorryCommentDAO();
		ActionForward af = new ActionForward();
		
		
		
		dao.deleteLike(worryNumber);
		cdao.deleteComment(worryNumber);
		dao.deleteManagerComment(worryNumber);
		dao.delete(worryNumber);
		/*if(t != 0){
			System.out.println("댓글있을때");
			cdao.deleteComment(worryNumber);
			dao.delete(worryNumber);
		}else{
			System.out.println("댓글없을때");
			dao.delete(worryNumber);
		}*/
		
		af.setRedirect(true);
		af.setPath(req.getContextPath() + "/app/worryStroy/worryList.jsp");
		
		return af;
	}

}
