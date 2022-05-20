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

public class ExpertConsultTypeListOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		//프로필 넘버 받기
		int managerProfileNumber = Integer.parseInt(req.getParameter("managerProfileNumber"));
		
//		액션 포워드 준비
		// ActionForward af = new ActionForward();

//		다오 사용 준비
		ExpertProfileDAO epDao = new ExpertProfileDAO();
		
//		상담 정보들을 담을 List
		List<ExpertConsultVO>consults = new ArrayList<>();

		// 프로필 넘버로 프로필 가져오기 
		ExpertProfileVO profile = epDao.selectDetail(managerProfileNumber);

		// 가져온 프로필에서 전문가 등급 가져오기
		String managerRank = profile.getManagerRank();

		// 상담 리스트, List<ExpertConsultVO>
		consults = epDao.selectConsult(managerRank);
		
//		매니저 프로필과, 상담 리스트 데이터 넘기기
		req.setAttribute("profile", profile);
		req.setAttribute("consults", consults);
		
//		정보를 담아가니깐 false로 주자
		//af.setRedirect(false);
		//af.setPath("/app/expert/solo/consultTypeList.jsp");
		
		return new ActionForward(false, "/app/expert/solo/consultTypeList.jsp");
	}

}
