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
import com.whoAmI.worry.dao.WorryDAO;
import com.whoAmI.worry.vo.WorryCommentDTO;

public class WorryCommentListOK implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		WorryDAO dao = new WorryDAO();
		PrintWriter out = resp.getWriter();
		JSONArray infos = new JSONArray();
		
		
		int worryNumber = Integer.parseInt(req.getParameter("worryNumber"));
		List<WorryCommentDTO> WorryList = dao.selectCommentAll(worryNumber);
		
		for (WorryCommentDTO dto : WorryList) {
			JSONObject commentInfo = new JSONObject();
			commentInfo.put("userNickName", dto.getUserNickName());
			commentInfo.put("worryCommentContent", dto.getWorryCommentContent());
			commentInfo.put("worryCommentDate", dto.getWorryCommentDate());
			infos.add(commentInfo);
		}
		
		out.print(infos.toJSONString());
		out.close();
		return null;
	}

}

