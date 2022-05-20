package com.whoAmI.diary;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.whoAmI.action.ActionForward;
import com.whoAmI.diary.dao.DiaryDAO;
import com.whoAmI.diary.vo.DiaryDTO;
public class DiaryListOk {
	
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		ActionForward af = new ActionForward();
		DiaryDAO dao = new DiaryDAO();
		List<DiaryDTO> diaryList = dao.selectDiaryList();
		
		req.setAttribute("diaryList", diaryList);
		
		af.setRedirect(false);
		af.setPath("/app/diary/diary.jsp");
		
		return af;

	}
}
//		DiaryDAO dDao = new DiaryDAO();
//		PrintWriter out = resp.getWriter();
//		
//		List<DiaryDTO> diaryList = dDao.selectDiaryList();		
//		
//		JSONArray diaries = new JSONArray();
//		
//		for(DiaryDTO d : diaryList) {
//			JSONObject diary = new JSONObject();
//			diary.put("diaryNumber", d.getDiaryNumber());
//			diary.put("userNumber", d.getUserNumber());
//			diary.put("userNickname", d.getUserNickname());
//			diary.put("diaryFileName", d.getDiaryFileName());
//			diary.put("diaryContent2", d.getDiaryContent2());
//			diaries.add(diary);
//		}
//		
//		out.print(diaries.toJSONString());
//		out.close();
//		
//		return null;

