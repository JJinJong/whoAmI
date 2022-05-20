package com.whoAmI.admin;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.admin.dao.AdminDAO;

public class AdminLoginOk implements Action{

   @Override
   public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
      //외부에서 받는 값을 파라미터로 받는다
      HashMap<String,String>loginMap= new HashMap<>();
      AdminDAO dao = new AdminDAO();
      int managerNumber=0;
      String managerId="";
      ActionForward af =new ActionForward();;
      HttpSession session=req.getSession();
      
      loginMap.put("managerId",req.getParameter("managerId"));
      loginMap.put("managerPw",req.getParameter("managerPw"));
      
      managerNumber=dao.login(loginMap);
      managerId=req.getParameter("managerId");
      managerId=dao.header(managerId);
      
      
      if(managerNumber==0) {
         af=new ActionForward();
         af.setRedirect(false);
         af.setPath("/admin/AdminLogin.mg?code="+managerNumber);
   
      }else {
         session.setAttribute("managerNumber", managerNumber);
         session.setAttribute("managerId", managerId);
         af.setRedirect(true);
         af.setPath(req.getContextPath()+"/admin/Main.mg");
      }
      return af;
   }
}