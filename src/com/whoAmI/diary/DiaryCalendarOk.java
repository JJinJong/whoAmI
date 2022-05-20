package com.whoAmI.diary;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.whoAmI.action.ActionForward;
import com.whoAmI.diary.dao.DiaryDAO;
import com.whoAmI.diary.vo.DiaryVO;

public class DiaryCalendarOk {
	
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=utf-8");
		
		int userNumber = Integer.parseInt(req.getParameter("userNumber"));

		PrintWriter out = resp.getWriter();
		DiaryDAO dao = new DiaryDAO();
		List<DiaryVO> diaryCalendar = dao.selectCalendar(userNumber);
		
		JSONArray diaries = new JSONArray();
		
		for(DiaryVO vo : diaryCalendar) {
			JSONObject diary = new JSONObject();
			diary.put("diaryFileName", vo.getDiaryFileName());
			diary.put("diaryNumber", vo.getDiaryNumber());
			diary.put("diaryDate", vo.getDiaryDate());
			diary.put("userNumber", vo.getUserNumber());
			diaries.add(diary);
		}
		
//		req.setAttribute("diaries", diaries.toJSONString());
		
		out.print(diaries.toJSONString());
		out.close();
		
		return null;
		
	}	
	
}