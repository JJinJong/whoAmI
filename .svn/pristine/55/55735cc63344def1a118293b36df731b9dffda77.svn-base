package com.whoAmI.worry;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.managerWorry.vo.WorryCommentManagerDTO;
import com.whoAmI.worry.dao.WorryDAO;
import com.whoAmI.worry.vo.WorryCommentDTO;


public class WorryCommentManagerListOK implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		WorryDAO dao = new WorryDAO();
		PrintWriter out = resp.getWriter();
		JSONArray managerinfos = new JSONArray();
		
		int worryNumber = Integer.parseInt(req.getParameter("worryNumber"));
		int userNumberExpert = (Integer)req.getSession().getAttribute("userNumber");
		List<WorryCommentManagerDTO> WorryManagerList = dao.selectManagerCommentAll(worryNumber, userNumberExpert);
		System.out.println(WorryManagerList.get(0).getWorryCommentManagerContent());
		System.out.println(WorryManagerList.size());
		for (WorryCommentManagerDTO dto : WorryManagerList) {
			JSONObject managercommentInfo = new JSONObject();
			managercommentInfo.put("ManagerName", dto.getManagerName());
			managercommentInfo.put("WorryCommentManagerContent", dto.getWorryCommentManagerContent());
			managercommentInfo.put("ManagerNumberDate", dto.getManagerNumberDate());
			managercommentInfo.put("ManagerPictureNameOrignal", dto.getManagerPictureNameOrignal());
			managerinfos.add(managercommentInfo);
		}
		
		
		out.print(managerinfos.toJSONString());
		out.close();
		return null;
	}

}
