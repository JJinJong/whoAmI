package com.whoAmI.diary;

import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.diary.dao.DiaryDAO;
import com.whoAmI.diary.vo.DiaryVO;

public class DiaryWriteOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		DiaryDAO dDao = new DiaryDAO();
		DiaryVO diary = new DiaryVO();
		ActionForward af = new ActionForward();

		
		diary.setDiaryDate(req.getParameter("diaryDate"));
		diary.setDiaryFileName(req.getParameter("diaryFileName"));
		diary.setDiaryContent2(req.getParameter("diaryContent2"));
		diary.setDiaryContent3(req.getParameter("diaryContent3"));
		diary.setDiaryContent4(req.getParameter("diaryContent4"));
		diary.setDiaryContent5(req.getParameter("diaryContent5"));
		diary.setDiaryContent6(req.getParameter("diaryContent6"));
		diary.setDiaryContent7(req.getParameter("diaryContent7"));
		diary.setDiaryContent8(req.getParameter("diaryContent8"));
		diary.setDiaryAnonymous(req.getParameter("diaryAnonymous"));
		diary.setDiaryPublic(req.getParameter("diaryPublic"));
		//diary.setUserNumber((Integer)req.getSession().getAttribute("userNumber"));
		diary.setUserNumber(1);
		
		// 한글 깨짐 현상
//		System.out.println(req.getParameter("diaryDate"));
//		System.out.println(req.getParameter("diaryFileName"));
//		System.out.println(req.getParameter("diaryContent2"));
//		System.out.println(req.getParameter("diaryContent3"));
//		System.out.println(req.getParameter("diaryContent4"));
//		System.out.println(req.getParameter("diaryContent5"));
//		System.out.println(req.getParameter("diaryContent6"));
//		System.out.println(req.getParameter("diaryContent7"));
//		System.out.println(req.getParameter("diaryContent8"));
//		System.out.println(req.getParameter("diaryAnonymous"));
//		System.out.println(req.getParameter("diaryPublic"));
		
		dDao.insertDiary(diary);
		
		af.setRedirect(true);
		af.setPath(req.getContextPath() +"/diary/DiaryListOk.di");
		
		return af;
	}
}


