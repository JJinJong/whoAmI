package com.whoAmI.userMyPage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.user.vo.UserVO;
import com.whoAmI.userMyPage.dao.MyPageUserInformDAO;

public class MyPageUpdateSee implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {

	      req.setCharacterEncoding("UTF-8");
	      resp.setCharacterEncoding("UTF-8");
	      
	      MyPageUserInformDAO MPUdao = new MyPageUserInformDAO();
	      PrintWriter out = resp.getWriter();
	      
	      UserVO user = MPUdao.getInfo((Integer)req.getSession().getAttribute("userNumber"));
	      
	         JSONObject myPage = new JSONObject();
	         myPage.put("userEmail", user.getUserEmail());
	         myPage.put("userNickname", user.getUserNickname());
	         myPage.put("userBirth", user.getUserBirth());
	         myPage.put("userGender", user.getUserGender());
	         myPage.put("userAddress", user.getUserAddress());
	      System.out.println("이메일" + user.getUserEmail());
	      
	      out.print(myPage.toJSONString());
	      out.close();
	      
	      return null;
	   
		
	}
	
}
