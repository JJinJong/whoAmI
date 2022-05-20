package com.whoAmI.diary;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.whoAmI.action.ActionForward;
import com.whoAmI.diary.dao.DiaryDAO;
import com.whoAmI.diary.vo.DiaryDTO;

public class DiaryColorSortOk {

	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=utf-8");
		
		String color = req.getParameter("diaryColor");
		ArrayList<String> diaryFileNames = new ArrayList<>();
		
		switch(color) {
		case "pink":
			diaryFileNames.add("card1");
			diaryFileNames.add("card4");
			break;
		case "red":
			diaryFileNames.add("card5");
			break;
		case "orange":
			diaryFileNames.add("card8");
			diaryFileNames.add("card11");
			break;
		case "yellow":
			diaryFileNames.add("card6");
			diaryFileNames.add("card13");
			break;
		case "green":
			diaryFileNames.add("card2");
			break;
		case "skyblue":
			diaryFileNames.add("card3");
			break;
		case "blue":
			diaryFileNames.add("card10");
			break;
		case "purple":
			diaryFileNames.add("card9");
			break;
		case "gray":
			diaryFileNames.add("card7");
			diaryFileNames.add("card12");
			diaryFileNames.add("card14");
			break;
		default :
			diaryFileNames.add("card1");
			diaryFileNames.add("card2");
			diaryFileNames.add("card3");
			diaryFileNames.add("card4");
			diaryFileNames.add("card5");
			diaryFileNames.add("card6");
			diaryFileNames.add("card7");
			diaryFileNames.add("card8");
			diaryFileNames.add("card9");
			diaryFileNames.add("card10");
			diaryFileNames.add("card11");
			diaryFileNames.add("card12");
			diaryFileNames.add("card13");
			diaryFileNames.add("card14");
			break;
		}
		
//		ActionForward af = new ActionForward();
		PrintWriter out = resp.getWriter();
		DiaryDAO dao = new DiaryDAO();
		List<DiaryDTO> diaryListByColor = dao.selectColor(diaryFileNames);
		
		req.setAttribute("diaryListByColor", diaryListByColor);
		
		JSONArray diaries = new JSONArray();
		
		for(DiaryDTO dto : diaryListByColor) {
			JSONObject diary = new JSONObject();
			diary.put("diaryFileName", dto.getDiaryFileName());
			diary.put("diaryContent2", dto.getDiaryContent2());
			diary.put("diaryAnonymous", dto.getDiaryAnonymous());
			diary.put("diaryNumber", dto.getDiaryNumber());
			diary.put("userNickname", dto.getUserNickname());
			diary.put("diaryPublic", dto.getDiaryPublic());
			diary.put("diaryLikeCount", dto.getDiaryLikeCount());
			diaries.add(diary);
		}
		
//		req.setAttribute("diaries", diaries.toJSONString());
		
		out.print(diaries.toJSONString());
		out.close();
		
//		af.setRedirect(false);
//		af.setPath("/app/diary/diary.jsp");
		
		return null;
	}
}
