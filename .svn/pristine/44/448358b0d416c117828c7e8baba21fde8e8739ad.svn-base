package com.whoAmI.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.user.dao.UserDAO;

//컨트롤러
public class UserCheckIdOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		String userEmail=req.getParameter("userEmail"); //사용자가 화면에 입력한 아이디
		UserDAO dao=new UserDAO(); //아이디 중복검사 메소드를 사용하기 위해 객체화...?
		PrintWriter out= resp.getWriter(); //html방식으로 출력
		JSONObject obj=new JSONObject();
		
		if(dao.checkId(userEmail)) { //if문 안에 들어 왔다는 것은 중복되었다는 뜻이다
		//아이디 중복검사는 ajax로 연결해서 알려줄거니까 아래 not ok, ok인지 판단
		//out.print("not-ok");
		obj.put("status", "not-ok");
		}else {//사용가능한 아이디
		//out.print("ok");
		obj.put("status", "ok");
		}
		
		out.print(obj.toJSONString());
		out.close();
		return null; //페이지 이동이 없기 때문에 null값으로 전송
	}
  
 }
//JSP페이지 ->web.xml->프론트컨트롤러->컨트롤러->dao(DB와 관련된 메소드),xml페이지 
//에이작스의 대표적인 좋아요. 우리가 좋아요를 누르면 숫자의 변화가 눈에 보인다.사용자는 디비를 볼 수 없어요 
//볼수 있도록 만든게 에이작스 디비의 데이터변화를 사용자가 볼 수 있도록 하는 것이 에이작스 중복된아이디입니다 사용가능합니다.
