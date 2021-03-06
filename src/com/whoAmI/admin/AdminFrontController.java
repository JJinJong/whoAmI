 package com.whoAmI.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.whoAmI.action.ActionForward;

public class AdminFrontController extends HttpServlet {
   @Override
   protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      doProcess(req, resp);
   }
    
   @Override
   protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      doProcess(req, resp);
   }    
   protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      String requestURI = req.getRequestURI(); 
      String contextPath = req.getContextPath();
      String command = requestURI.substring(contextPath.length());
      ActionForward af = null;

      if(command.equals("/admin/AdminCheckIdOk.mg")) {
         new AdminCheckIdOk().execute(req, resp);
      
      }else if(command.equals("/admin/AdminJoin.mg")) {
         af = new ActionForward();
         af.setRedirect(false);
         af.setPath("/app/management/ManagerAccount/adminJoin.jsp"); 
      
      }else if(command.equals("/admin/AdminJoinOk.mg")) {
         af = new AdminJoinOk().execute(req, resp);
      
      }else if(command.equals("/admin/AdminLogin.mg")) {
         af=new ActionForward();
         af.setRedirect(false);
         af.setPath("/app/management/ManagerAccount/adminLogin.jsp");
      
      }else if(command.equals("/admin/AdminLoginOk.mg")) {
         af=new AdminLoginOk().execute(req, resp);
      
      }else if(command.equals("/admin/AdminLogout.mg")) {
      af=new AdminLogout().execute(req, resp);
      
      }else if(command.equals("/admin/AdminDetail.mg")) {
         af=new AdminDetail().execute(req, resp);
      
      }else if(command.equals("/admin/Main.mg")) {
         af=new ActionForward();
         af.setRedirect(false);
         af.setPath("/app/management/managementMainPage/managementMainPage.jsp");
      }
      

      
      //???????????????
      if(af != null) {
         if(af.isRedirect()) {
            resp.sendRedirect(af.getPath());
         }else {
            RequestDispatcher dispatcher = req.getRequestDispatcher(af.getPath());
            dispatcher.forward(req, resp);
         }
      }
   }
}