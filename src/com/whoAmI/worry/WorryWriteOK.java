package com.whoAmI.worry;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.whoAmI.action.ActionForward;
import com.whoAmI.worry.dao.WorryDAO;
import com.whoAmI.worry.vo.WorryVO;
import com.whoAmI.action.Action;
//import com.oreilly.servlet.MultipartRequest;
//import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class WorryWriteOK implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		WorryDAO wDao = new WorryDAO();
		WorryVO worry = new WorryVO();
		ActionForward af = new ActionForward();
		
		worry.setWorryTitle(req.getParameter("worryTitle"));
		worry.setWorryContent(req.getParameter("worryContent"));
		worry.setWorryCategoryNumber(Integer.parseInt(req.getParameter("worryCategoryNumber")));
		worry.setWorryHashTag(req.getParameter("worryHashTag"));
		worry.setWorryReadMeCheck(req.getParameter("worryReadMeCheck"));
		worry.setWorryNickNameCheck(req.getParameter("worryNickNameCheck"));
		worry.setUserNumber((Integer)req.getSession().getAttribute("userNumber"));
		
		wDao.insert(worry);
		
		af.setRedirect(true);
		af.setPath(req.getContextPath() + "/worry/ListOK.bo");
		
		return af;
	}
}
