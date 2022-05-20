package com.whoAmI.managerExpert;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.managerExpert.dao.ExpertProfileDAO;
import com.whoAmI.managerExpert.vo.ConsultReviewDTO;
import com.whoAmI.managerExpert.vo.ExpertConsultVO;
import com.whoAmI.managerExpert.vo.ExpertProfileVO;

public class ExpertProfileDetailOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		
		int managerProfileNumber = Integer.parseInt(req.getParameter("managerProfileNumber"));
		
		ExpertProfileDAO EpDao = new ExpertProfileDAO();
		
		ActionForward af = new ActionForward();
		
		List<ExpertConsultVO>consults = new ArrayList<>();
		
//		전문가 프로필 가져오기 By managerProfileNumber
		ExpertProfileVO profile =  EpDao.selectDetail(managerProfileNumber);
		
		int userNumberExpert = EpDao.selectDetail(managerProfileNumber).getUserNumberExpert();
		
		String rank = profile.getManagerRank();
		
		consults = EpDao.selectConsult(rank);
		
		int price = 0;
		int priceVoice = (Integer.parseInt(consults.get(1).getConsultPrice3().replace(",", "").replace("원", "")) / 8);
		int priceText = (Integer.parseInt(consults.get(0).getConsultPrice3().replace(",", "").replace("원", "")) / 8);
		
		if(profile.getManagerconsultVoice() != null) {
			price = priceVoice;
		}
		
		if(profile.getManagerconsultText() != null) {
			price = priceText;
		}
		
		req.setAttribute("price", price);
		
		//게시글 번호로 조회한 게시글의 전체 정보를 requestScope에 저장한다.
		req.setAttribute("profile", profile);
		req.setAttribute("managerProfileNumber", managerProfileNumber);
		//리뷰 목록 저장
		
		
		//requestScope에 데이터를 담았기 때문에 forward로 페이지까지 req객체를 유지한다.
		af.setRedirect(false);
		af.setPath("/app/expert/solo/expertProfile.jsp");
		
		return af;
	}

}
