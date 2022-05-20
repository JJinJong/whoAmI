package com.whoAmI.worry;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.worry.dao.WorryDAO;
import com.whoAmI.worry.vo.WorryDTO;

public class WorryListOK implements Action{
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		WorryDAO dao = new WorryDAO();
		List<WorryDTO> worryList = dao.selectAll();
		HttpSession session = req.getSession();
		PrintWriter out = resp.getWriter();
		try {
			int userNumber = (Integer)req.getSession().getAttribute("userNumber");
					
			for(WorryDTO dto : worryList) {
				if(dao.selectUserNumberLiked(dto.getWorryNumber()).contains(userNumber)) {
					dto.setCheck(true);
				}
			}
		} catch (Exception e) { 
			e.printStackTrace();
		}
		JSONArray List = new JSONArray();
	      for(WorryDTO dto : worryList) {
	         JSONObject worry = new JSONObject();
	         worry.put("worryCategoryNumber", dto.getWorryCategoryNumber());
	         worry.put("worryHashTag", dto.getWorryHashTag());
	         worry.put("worryTitle", dto.getWorryTitle());
	         worry.put("worryContent", dto.getWorryContent());
	         worry.put("worryLikeNumber", dto.getWorryLikeNumber());
	         worry.put("userNickname", dto.getUserNickname());
	         worry.put("isCheck", dto.isCheck());
	         worry.put("userNumber", dto.getUserNumber());
	         worry.put("worryNumber", dto.getWorryNumber());
	         List.add(worry);
	      }
	      
	      out.print(List.toJSONString());
	      out.close();
		
		return null;
	}
}
