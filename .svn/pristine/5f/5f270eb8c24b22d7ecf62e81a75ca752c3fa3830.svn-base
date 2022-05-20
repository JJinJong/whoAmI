package com.whoAmI.diary;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.diary.dao.DiaryDAO;
import com.whoAmI.diary.vo.DiaryVO;

public class DiaryReviseOk implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		int diaryNumber = Integer.parseInt(req.getParameter("diaryNumber"));
		String diaryFileName = req.getParameter("diaryFileName");
		String diaryContent2 = req.getParameter("diaryContent2");
		String diaryContent3 = req.getParameter("diaryContent3");
		String diaryContent4 = req.getParameter("diaryContent4");
		String diaryContent5 = req.getParameter("diaryContent5");
		String diaryContent6 = req.getParameter("diaryContent6");
		String diaryContent7 = req.getParameter("diaryContent7");
		String diaryContent8 = req.getParameter("diaryContent8");
		String diaryAnonymous = req.getParameter("diaryAnonymous");
		String diaryPublic = req.getParameter("diaryPublic");

		DiaryVO dVo = new DiaryVO();
		ActionForward af = new ActionForward();
		DiaryDAO dao = new DiaryDAO();
		
		dVo.setDiaryNumber(diaryNumber);
		dVo.setDiaryFileName(diaryFileName);
		dVo.setDiaryContent2(diaryContent2);
		dVo.setDiaryContent3(diaryContent3);
		dVo.setDiaryContent4(diaryContent4);
		dVo.setDiaryContent5(diaryContent5);
		dVo.setDiaryContent6(diaryContent6);
		dVo.setDiaryContent7(diaryContent7);
		dVo.setDiaryContent8(diaryContent8);
		dVo.setDiaryAnonymous(diaryAnonymous);
		dVo.setDiaryPublic(diaryPublic);
		
		dao.updateDiary(dVo);
		
		req.setAttribute("diary", dao.selectDiary(diaryNumber));
		
		af.setRedirect(true);
		af.setPath(req.getContextPath() +"/diary/DiaryDetailOk.di?diaryNumber="+ diaryNumber);
		
		return af;
	}
}



