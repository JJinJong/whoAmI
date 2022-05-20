package com.whoAmI.expertPage;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.whoAmI.action.ActionForward;
import com.whoAmI.expertPage.dao.ExpertPageDAO;
import com.whoAmI.userMyPage.vo.ConsultPaymentDetailDTO;

public class ExpertCousultUpdateOK {
public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
      
      
      
   ExpertPageDAO EPUdao = new ExpertPageDAO();
      
      
      List<ConsultPaymentDetailDTO> ConsultList =  EPUdao.expertConsultDetail(((Integer)req.getSession().getAttribute("userNumber")));
      
      ActionForward af = new ActionForward();
      
      req.setAttribute("ConsultList", ConsultList);
      
      af.setRedirect(false);
      af.setPath("/app/expertCounselingDetail/expertCounselingDetail.jsp");
      
      return af;
   }
}