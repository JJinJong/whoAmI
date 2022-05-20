package com.whoAmI.userMyPage;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.managerMbti.vo.TestInfoVO;
import com.whoAmI.userMyPage.dao.MyCommentDAO;

import com.whoAmI.userMyPage.vo.MyCommentVO;

public class MyCommentListOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		System.out.println("리스트ok에 왓다");
		MyCommentDAO dao = new MyCommentDAO();
		PrintWriter out = resp.getWriter();
		
		int userNumber = (Integer) req.getSession().getAttribute("userNumber");
		JSONArray infos = new JSONArray();
		List<MyCommentVO> commentList = dao.selectAll(userNumber);
		
		for (MyCommentVO vo : commentList) {
			JSONObject commentInfo = new JSONObject();
			commentInfo.put("userNickName", vo.getUserNickName());
			commentInfo.put("worryCommentContent", vo.getWorryCommentContent());
			commentInfo.put("worryCommentDate", vo.getWorryCommentDate());
			commentInfo.put("worryCommentLikeNumber", vo.getWorryCommentLikeNumber());
			commentInfo.put("worryCommentNumber", vo.getWorryCommentNumber());
			infos.add(commentInfo);
		}

		out.print(infos.toJSONString());
		out.close();
		return null;
	}

}