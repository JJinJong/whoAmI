package com.whoAmI.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Message.RecipientType;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.user.dao.UserDAO;

public class SendEmailOK implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		ActionForward af=new ActionForward();

	      // 메일 인코딩
	       final String bodyEncoding = "UTF-8"; //콘텐츠 인코딩
	       
	       //원하는 메일 제목 작성
	       String subject = "메일 발송 테스트";
	       
	       //****************건들지 마세요********************
	       String fromEmail = "Jspproject123@gmail.com";
	       String fromUsername = "Jspproject123";
	       
	      
	       //받는 이메일 req.getParameter("email") : 사용자가 입력한 이메일로 대체
	       //String toEmail = "wlsdyd427@naver.com"; // 콤마(,)로 여러개 나열
	       String FindEmail=req.getParameter("FindEmail");
	 
	       
	       
	       
	     //****************건들지 마세요********************
	       final String username = "Jspproject123";         
	       final String password = "pakgegxwrjxhbyau";
	       //*********************************************
	       
	       // 메일에 출력할 텍스트
	       StringBuffer sb = new StringBuffer();
	       sb.append("<img src='https://i.esdrop.com/d/f/VowpzHTaPN/rPboXsPaKu.png'>\n");
	       sb.append("<div  style='margin-top: -70px';  'padding-bottom: 68px'; 'margin-left: 67px';/>");
	       sb.append("<a style='text-decoration-line: none;' href='http://localhost:8081"+ req.getContextPath() + "/user/ChangePw.user?FindEmail=" + FindEmail + "'><h2>비밀번호 변경하기</h2></a>\n"); 
	       sb.append("</div>");
	       String html = sb.toString();
	       
	       // 메일 옵션 설정
	       Properties props = new Properties();    
	       props.put("mail.smtp.starttls.enable", "true");
	       props.put("mail.smtp.host", "smtp.gmail.com");
	       props.put("mail.smtp.auth", "true");
	       props.put("mail.smtp.port", "587");
	       props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
	       props.put("mail.smtp.ssl.protocols", "TLSv1.2");
	       
	       try {
	         // 메일 서버  인증 계정 설정
	         Authenticator auth = new Authenticator() {
	           protected PasswordAuthentication getPasswordAuthentication() {
	             return new PasswordAuthentication(username, password);
	           }
	         };
	         
	         // 메일 세션 생성
	         Session session = Session.getDefaultInstance(props, auth);
	        
	         // 메일 송/수신 옵션 설정
	         Message message = new MimeMessage(session);
	         message.setFrom(new InternetAddress(fromEmail, fromUsername));
	         message.setRecipients(RecipientType.TO, InternetAddress.parse(FindEmail, false));
	         message.setSubject(subject);
	         message.setSentDate(new Date());
	         
	         // 메일 콘텐츠 설정
	         Multipart mParts = new MimeMultipart();
	         MimeBodyPart mTextPart = new MimeBodyPart();
	        // MimeBodyPart mFilePart = null;
	   
	         // 메일 콘텐츠 - 내용
	         mTextPart.setText(html, bodyEncoding, "html");
	         mParts.addBodyPart(mTextPart);
	               
	         // 메일 콘텐츠 설정
	         message.setContent(mParts);
	    
	         // 메일 발송
	         Transport.send( message );
	        
	         
	       } catch ( Exception e ) {
	         e.printStackTrace();
	         
	       }
	        af.setRedirect(true);
			af.setPath(req.getContextPath()+"/user/Main.user");
			return af;
	}

}
