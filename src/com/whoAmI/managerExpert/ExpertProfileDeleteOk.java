package com.whoAmI.managerExpert;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.managerExpert.dao.ExpertProfileDAO;
import com.whoAmI.managerExpert.vo.ExpertProfileVO;

public class ExpertProfileDeleteOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		String uploadFolder = "C:\\aigb_0900_jsj\\jsp\\workspace\\whoAmI\\WebContent\\upload";
		
		ExpertProfileDAO epDao = new ExpertProfileDAO();
		
		int managerProfileNumber;
		try {
			managerProfileNumber = epDao.getProfileNumberByMangerNumber((Integer)req.getSession().getAttribute("userNumber"));
		} catch (Exception e1) {
			managerProfileNumber = Integer.parseInt(req.getParameter("managerProfileNumber"));
			e1.printStackTrace();
		}

		ExpertProfileVO profile = epDao.selectDetail(managerProfileNumber);
		
		String PictureNameOrignal = profile.getManagerPictureNameOrignal();
		
		int userNumberExpert = epDao.selectDetail(managerProfileNumber).getUserNumberExpert();
		
		epDao.deletePayment(userNumberExpert);
		
		epDao.deleteProfile(managerProfileNumber);
		
		try {
			File f = new File(uploadFolder, PictureNameOrignal);
			if(f.exists()) {f.delete();}
		} catch (Exception e) {
		}
		
		return new ActionForward(true, req.getContextPath()+"/expert/ManagerExpertListOk.me");
	}

}
