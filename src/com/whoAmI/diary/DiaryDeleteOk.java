package com.whoAmI.diary;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.whoAmI.action.ActionForward;
import com.whoAmI.diary.dao.DiaryDAO;

public class DiaryDeleteOk {
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
	
		int diaryNumber = Integer.parseInt(req.getParameter("diaryNumber"));
		
		ActionForward af = new ActionForward();
		DiaryDAO dao = new DiaryDAO();
		
		dao.deleteDiary(diaryNumber);
		
		af.setRedirect(true);
		af.setPath(req.getContextPath() +"/diary/DiaryListOk.di");
		
		return af;
	}
}
