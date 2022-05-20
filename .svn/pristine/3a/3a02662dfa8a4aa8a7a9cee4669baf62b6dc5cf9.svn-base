package com.whoAmI.diary;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.whoAmI.action.ActionForward;
import com.whoAmI.diary.dao.DiaryDAO;
import com.whoAmI.diary.vo.DiaryDTO;

public class DiaryDetailOk {
	
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		int diaryNumber = Integer.parseInt(req.getParameter("diaryNumber"));
		int userNumber = 1;
	
		ActionForward af = new ActionForward();
		DiaryDAO dao = new DiaryDAO();
		DiaryDTO diary = dao.selectDiary(diaryNumber);
		
		req.setAttribute("diary", diary);
		req.setAttribute("userNumber", userNumber);
		
		af.setRedirect(false);
		af.setPath("/app/diary/diaryDetail.jsp");
		
		return af;
	}	
}



