package com.whoAmI.userMyPage;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.worry.dao.WorryDAO;
import com.whoAmI.worry.vo.WorryDTO;

public class MyWorryListOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		System.out.println("여기 고민 나 왓다");
		WorryDAO dao = new WorryDAO();
		
		int userNumber = (Integer)req.getSession().getAttribute("userNumber");
		System.out.println("유저넘이다::"+userNumber);
		List<WorryDTO> worryList = dao.selectAllMyWorry(userNumber);
		System.out.println("worryList이다::"+worryList);
		JSONArray worryInfoList = new JSONArray();
		PrintWriter out = resp.getWriter();
		
		for (WorryDTO vo : worryList) {
			JSONObject worryInfo = new JSONObject();
			worryInfo.put("worryCategoryNumber", vo.getWorryCategoryNumber());
			worryInfo.put("worryTitle", vo.getWorryTitle());
			worryInfo.put("worryLikeNumber", vo.getWorryLikeNumber());
			worryInfo.put("userNickname", vo.getUserNickname());
			worryInfo.put("worryNumber", vo.getWorryNumber());
			worryInfo.put("worryContent", vo.getWorryContent());

			worryInfoList.add(worryInfo);
		}
		System.out.println(worryInfoList+"worryInfoList들어옴");
		out.print(worryInfoList.toJSONString());
		out.close();
		return null;
	}
}