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
import com.whoAmI.managerExpert.dao.ExpertProfileDAO;
import com.whoAmI.userMyPage.dao.ConsultReviewDAO;
import com.whoAmI.userMyPage.vo.ConsultReviewVO;

public class MyReviewListOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		System.out.println("여기 리뷰의 나 왓다");
		ConsultReviewDAO dao = new ConsultReviewDAO();
		ExpertProfileDAO pDao= new ExpertProfileDAO();
		PrintWriter out = resp.getWriter();
		
		int userNumber = (Integer) req.getSession().getAttribute("userNumber");
		
		JSONArray infoList = new JSONArray();
		List<ConsultReviewVO> reviewVO = dao.selectAll(userNumber);
		System.out.println("reviewVO"+reviewVO);
		
		
		for (ConsultReviewVO vo : reviewVO) {
			JSONObject reviewInfo = new JSONObject();
			reviewInfo.put("userNickName", vo.getUserNickName());
			reviewInfo.put("consultReviewNumber", vo.getConsultReviewNumber());
			reviewInfo.put("consultReviewContent", vo.getConsultReviewContent());
			reviewInfo.put("consultReviewDate", vo.getConsultReviewDate());
			reviewInfo.put("userNumberExpert", vo.getUserNumberExpert());
			System.out.println("전문가 유져넘버"+vo.getUserNumberExpert());
			reviewInfo.put("managerProfileNumber", pDao.getProfileNumberByMangerNumber(vo.getUserNumberExpert()));
			infoList.add(reviewInfo);
		}
		System.out.println(infoList+"infoList들어옴");
		out.print(infoList.toJSONString());
		out.close();
		return null;
	}

}