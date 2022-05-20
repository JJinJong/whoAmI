package com.whoAmI.managerExpert;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.managerExpert.dao.ExpertProfileDAO;
import com.whoAmI.managerExpert.vo.ExpertConsultVO;
import com.whoAmI.managerExpert.vo.ExpertProfileVO;

public class ExpertProfileDetail implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		

		ExpertProfileDAO EpDao = new ExpertProfileDAO();

		int managerProfileNumber = EpDao.getProfileNumberByMangerNumber((Integer)req.getSession().getAttribute("userNumber"));
		
		ExpertProfileVO profile =  EpDao.selectDetail(managerProfileNumber);
		
		List<ExpertConsultVO> consults = EpDao.selectConsult(profile.getManagerRank());
		
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
		
		return new ActionForward(false, "/app/expert/solo/expertProfileDetail.jsp");
	}
}
