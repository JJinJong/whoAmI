package com.whoAmI.expertPage;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;

public class ExpertCommentList implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		System.out.println("전문가 나의 댓글 들어옴");
		ActionForward af=new ActionForward();
		af.setRedirect(false);
		af.setPath("/app/expertCommentFix/expertCommentFix.jsp");
		return af;
	}

}
