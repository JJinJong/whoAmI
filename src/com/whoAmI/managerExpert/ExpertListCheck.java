package com.whoAmI.managerExpert;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.managerExpert.dao.ExpertProfileDAO;

public class ExpertListCheck implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		ExpertProfileDAO epDao = new ExpertProfileDAO();
		
		int userNumberExpert = (Integer)req.getSession().getAttribute("userNumber");
		
		int profileCount = epDao.selectCountProfile(userNumberExpert);
		
		if(profileCount == 0) {
			return new ActionForward(false, "/expert/ExpertProfileWrite.me");
		}
		
		int managerProfileNumber = epDao.getProfileNumberByMangerNumber(userNumberExpert);
		
		
		return new ActionForward(false, "/expert/ExpertProfileDetail.me?managerProfileNumber=" + managerProfileNumber);
	}
}
