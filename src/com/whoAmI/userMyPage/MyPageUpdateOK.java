package com.whoAmI.userMyPage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.user.vo.UserVO;
import com.whoAmI.userMyPage.dao.MyPageUserInformDAO;

public class MyPageUpdateOK implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
	    resp.setCharacterEncoding("UTF-8");
	    
	    MyPageUserInformDAO MPUdao = new MyPageUserInformDAO();
	    UserVO user = MPUdao.getInfo((Integer)req.getSession().getAttribute("userNumber"));
	    JSONObject obj = new JSONObject();
	    PrintWriter out = resp.getWriter();
	    
	    user.setUserNickname(req.getParameter("userNickname"));
	    user.setUserBirth(req.getParameter("userBirth"));
	    user.setUserGender(req.getParameter("userGender"));
	    user.setUserPw(req.getParameter("userPw"));
	    user.setUserAddress(req.getParameter("userAddress"));
	    System.out.println("업데이트 하고싶다");
	    MPUdao.myPageUpdate(user);
	    
	   
	    
	    out.print("success");
	    
//	    obj.put("userNickname", user.getUserNickname());
//	    obj.put("userBirth", user.getUserBirth());
//	    obj.put("userGender", user.getUserGender());
//	    obj.put("userPw", user.getUserPw());
//	    obj.put("userAddress", user.getUserAddress());
	    
	    
//	    out.print(obj.toJSONString());
	    out.close();
	    
	    
	    
	    
	    
	    
		return null;
	}
	
}
