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

public class ExpertProfileDetailReview implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		PrintWriter out = resp.getWriter();
		
		int managerProfileNumber = Integer.parseInt(req.getParameter("managerProfileNumber"));
		
		boolean check = true;
		
		int rowCount = Integer.parseInt(req.getParameter("rowCount"));
		
		ExpertProfileDAO EpDao = new ExpertProfileDAO();
		

		//	전문가 프로필 가져오기 By managerProfileNumber
		int userNumberExpert = EpDao.selectDetail(managerProfileNumber).getUserNumberExpert();

		// 리뷰 총 갯수
		int reviewCount = EpDao.selectReviewCount(userNumberExpert);
		JSONObject json = new JSONObject();
		
		
		//	리뷰 목록  가져오기 By userNumberExpert
		List<ConsultReviewDTO> consultReviewList = EpDao.selectReviewAll(userNumberExpert, rowCount);

		System.out.println(consultReviewList.size());
		JSONArray consultReviews = new JSONArray();
		for(ConsultReviewDTO vo : consultReviewList) {
			JSONObject consultReview = new JSONObject();
			consultReview.put("consultReviewNumber", vo.getConsultReviewNumber());
			consultReview.put("consultReviewContent", vo.getConsultReviewContent());
			consultReview.put("consultTitle", vo.getConsultTitle());
			consultReview.put("consultType", vo.getConsultType());
			consultReview.put("consultReviewDate", vo.getConsultReviewDate());
			consultReview.put("userNumberExpert", vo.getUserNumberExpert());
			consultReview.put("userNumber", vo.getUserNumber());
			consultReviews.add(consultReview);
		}
		
		if(reviewCount <= rowCount) {
			check = false;
		}
		
		json.put("consultReviews", consultReviews);
		json.put("check", check);
		
		out.print(json.toJSONString());
		out.close();
		
		
		return null;
	}
	
}
