package com.whoAmI.managerExpert;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;

public class ExpertJoinCheck implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		String joinCode = req.getParameter("joinCode");
		System.out.println(joinCode);
		String code = "ab123";
		boolean check = false;
		
		PrintWriter out = resp.getWriter();
		
		if(joinCode.equals(code)) {
			check = true;
		}
		
		System.out.println(check);
		
		JSONObject profile = new JSONObject();
		profile.put("check", check);
		
		out.print(profile.toJSONString());
		out.close();
		
		return null;
	}
}
