package com.whoAmI.expertPage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.expertPage.dao.ExpertPageDAO;

public class CheckPwOK implements Action {
	
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
	      req.setCharacterEncoding("UTF-8");
	      resp.setCharacterEncoding("UTF-8");
	      
		  String userPw = req.getParameter("userPw");
		  ExpertPageDAO dao = new ExpertPageDAO();
	      JSONObject obj = new JSONObject();
	      PrintWriter out = resp.getWriter();
	      System.out.println("들어옴1");
	      if(dao.checkPw(userPw)) {
	    	  obj.put("status", "not-ok");
	      }else {
	    	  obj.put("status", "ok");
	         
	      }
	      
	      out.print(obj.toJSONString());
	      out.close();
	      return null;
	   }
}
