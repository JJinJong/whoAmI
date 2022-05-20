package com.whoAmI.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.admin.dao.AdminDAO;

public class AdminCheckIdOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		String managerId=req.getParameter("managerId"); //사용자가 화면에 입력한 아이디
		AdminDAO dao=new AdminDAO(); 
		PrintWriter out= resp.getWriter(); 
		JSONObject obj=new JSONObject();
		
		
		if(dao.checkId(managerId)) {
			obj.put("status", "not-ok");
		}else {
			obj.put("status", "ok");
		}
		out.print(obj.toJSONString());
		out.close();
		return null;
	}

}
