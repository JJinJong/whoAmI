package com.whoAmI.expertPage;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.expertPage.dao.ExpertPageDAO;
import com.whoAmI.userMyPage.vo.ConsultPaymentDetailDTO;

public class ExpertCousultUpdateSee implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		 req.setCharacterEncoding("UTF-8");
	     resp.setCharacterEncoding("UTF-8");
		
		ExpertPageDAO EPUdao = new ExpertPageDAO();
		PrintWriter out = resp.getWriter();
		
		JSONArray cInfos = new JSONArray();
		List<ConsultPaymentDetailDTO> ConsultList =  EPUdao.expertConsultDetail(((Integer)req.getSession().getAttribute("userNumber")));
		
		
		for(ConsultPaymentDetailDTO CPD : ConsultList) {
			JSONObject CL = new JSONObject();
			CL.put("userName", CPD.getUserName());
			CL.put("userHP", CPD.getUserHP());
			CL.put("consultType", CPD.getConsultType());
			CL.put("consultTitle", CPD.getConsultTitle());
			CL.put("consultStatus", CPD.getConsultStatus());
			System.out.println("뻐킹" + CL);
			cInfos.add(CL);
			System.out.println("시바" + cInfos);
		}
		
		
		System.out.println("전문가쪽 상담목록 들어왔당");
		
		out.print(cInfos.toJSONString());
		out.close();
		
		return null;
	}

}
