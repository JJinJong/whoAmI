package com.whoAmI.diary;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.diary.dao.DiaryDAO;

public class DiaryRevise implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {

		int diaryNumber = Integer.parseInt(req.getParameter("diaryNumber"));
		ActionForward af = new ActionForward();
		DiaryDAO dao = new DiaryDAO();
		
		req.setAttribute("diary", dao.selectDiary(diaryNumber));
		
		af.setRedirect(false);
		af.setPath("/app/diary/diaryRevise.jsp");
		
		return af;
	}
}
