package com.whoAmI.expertPage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.expertPage.dao.ExpertPageDAO;
import com.whoAmI.user.vo.UserVO;

public class ExpertProflieUpdateSee implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		System.out.println("see컨트롤러 입성2");
		
		req.setCharacterEncoding("UTF-8");
	    resp.setCharacterEncoding("UTF-8");
	      
	      ExpertPageDAO EPUdao = new ExpertPageDAO();
	      PrintWriter out = resp.getWriter();
	      
	      System.out.println("see컨트롤러 입성");
	      
	      UserVO user = EPUdao.expertInfo((Integer)req.getSession().getAttribute("userNumber"));
	      
	      
	         JSONObject expertmyPage = new JSONObject();
	         expertmyPage.put("userEmail", user.getUserEmail());
	         expertmyPage.put("userName", user.getUserName());
	         expertmyPage.put("userHP", user.getUserHP());
	         expertmyPage.put("userGender", user.getUserGender());
	      System.out.println("컨트롤러 입성 이메일" + user.getUserEmail());
	      
	      out.print(expertmyPage.toJSONString());
	      out.close();
		
		return null;
	}

}
