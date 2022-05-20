package com.whoAmI.worry;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.worry.dao.WorryDAO;

public class WorryLikeNumberOK implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		WorryDAO dao = new WorryDAO();
		JSONObject obj = new JSONObject();
		PrintWriter out = resp.getWriter();
		
		int worryNumber = Integer.parseInt(req.getParameter("worryNumber"));
		
		obj.put("worryLikeNumber", dao.selectWorryLikeNumber(worryNumber));
		out.print(obj.toJSONString());
		
		return null;
	}
}
