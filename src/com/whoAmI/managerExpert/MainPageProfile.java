package com.whoAmI.managerExpert;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.managerExpert.dao.ExpertProfileDAO;
import com.whoAmI.managerExpert.vo.ConsultReviewDTO;
import com.whoAmI.managerExpert.vo.ExpertProfileVO;

public class MainPageProfile implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		PrintWriter out = resp.getWriter();
		
		ExpertProfileDAO EpDao = new ExpertProfileDAO();
		
		//	리뷰 목록  가져오기 By userNumberExpert
		List<ExpertProfileVO> profileList = EpDao.selectRandomProfiles();

		JSONArray profiles = new JSONArray();
		for(ExpertProfileVO vo : profileList) {
			JSONObject profile = new JSONObject();
			profile.put("managerName", vo.getManagerName());
			profile.put("managerIntroduce", vo.getManagerIntroduce());
			profile.put("managerconsultText", vo.getManagerconsultText());
			profile.put("managerconsultVoice", vo.getManagerconsultVoice());
			profile.put("managerconsultMeet", vo.getManagerconsultMeet());
			profile.put("managerPictureNameOrignal", vo.getManagerPictureNameOrignal());
			profile.put("managerProfileNumber", vo.getManagerProfileNumber());
			profiles.add(profile);
		}
		
		out.print(profiles.toJSONString());
		out.close();
		
		return null;
	}

}
