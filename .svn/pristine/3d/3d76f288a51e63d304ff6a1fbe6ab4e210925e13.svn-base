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

public class ExpertCheckPwOK implements Action {
	
	 @Override
	   public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
	      req.setCharacterEncoding("UTF-8");
	      resp.setCharacterEncoding("UTF-8");
	      
		  String password = req.getParameter("password");
		  ExpertPageDAO dao = new ExpertPageDAO();
	      UserVO user = dao.expertInfo((Integer)req.getSession().getAttribute("userNumber"));
	      JSONObject obj = new JSONObject();
	      PrintWriter out = resp.getWriter();
	      System.out.println("들어옴289");
	      System.out.println("받아온 비밀번호" + password);
	      System.out.println("유저비밀번호" + user.getUserPw());
	      
	      
	      System.out.println(password.equals(user.getUserPw()));
	      if(password.equals(user.getUserPw())) {
	    	  obj.put("status", "ok");
	    	  System.out.println("너는 가능해?");
	      }else {
	    	  obj.put("status", "not-ok");
	    	  System.out.println("들어왔냐?");
	      }
	      
//	      if(password.equals(user.getUserPw())) {
//	    	  obj.put("status", "ok");
//	    	  
//	      }else{
//	    	  obj.put("status", "not-ok");
//	    	  System.out.println("넌 다맞아");
//	         
//	      }
	      
	      out.print(obj.toJSONString());
	      out.close();
	      return null;
	   }
}
