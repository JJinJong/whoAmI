package com.whoAmI.worry;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.worry.dao.WorryDAO;
import com.whoAmI.worry.vo.WorryDTO;

public class CategoryCheckOK implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		 req.setCharacterEncoding("UTF-8");
	     resp.setCharacterEncoding("UTF-8");
	     
	     WorryDAO dao = new WorryDAO();
	     PrintWriter out = resp.getWriter();
	     
	     HashMap<String, Object> categoryMap = new HashMap<>();
	     
	     	String allTheStories = req.getParameter("allTheStories");
	     	String generalConcern = req.getParameter("generalConcern");
	     	String employment = req.getParameter("employment");
	     	String job = req.getParameter("job");
	     	String love = req.getParameter("love");
	     	String sexualHarassment = req.getParameter("sexualHarassment");
	     	String marriage = req.getParameter("marriage");
	     	String interpersonal = req.getParameter("interpersonal");
	     	String apearance = req.getParameter("apearance");
	     	String family = req.getParameter("family");
	     	String study = req.getParameter("study");
	     	String money = req.getParameter("money");
	     	String sexualLife = req.getParameter("sexualLife");
	     	String parting = req.getParameter("parting");
	     	String addiction = req.getParameter("addiction");
	     	String body = req.getParameter("body");
	     	String mentalHealth = req.getParameter("mentalHealth");
	     	String LGBT = req.getParameter("LGBT");
	     	String ego = req.getParameter("ego");
	     	String outcasting = req.getParameter("outcasting");
	     	String cheering = req.getParameter("cheering");
	     	String freedom = req.getParameter("freedom");
	     
	     	categoryMap.put("allTheStories", allTheStories);
	     	categoryMap.put("generalConcern", generalConcern);
			categoryMap.put("employment", employment);
			categoryMap.put("job", job);
			categoryMap.put("love", love);
			categoryMap.put("sexualHarassment", sexualHarassment);
			categoryMap.put("marriage", marriage);
			categoryMap.put("interpersonal", interpersonal);
			categoryMap.put("apearance", apearance);
			categoryMap.put("family", family);
			categoryMap.put("study", study);
			categoryMap.put("money", money);
			categoryMap.put("sexualLife", sexualLife);
			categoryMap.put("parting", parting);
			categoryMap.put("addiction", addiction);
			categoryMap.put("body", body);
			categoryMap.put("mentalHealth", mentalHealth);
			categoryMap.put("LGBT", LGBT);
			categoryMap.put("ego", ego);
			categoryMap.put("outcasting", outcasting);
			categoryMap.put("cheering", cheering);
			categoryMap.put("freedom", freedom);
			
			List<WorryDTO> categoryList = dao.selectCategoryAll(categoryMap);
			
			JSONArray categorys = new JSONArray();
		      for(WorryDTO dto : categoryList) {
		         JSONObject category = new JSONObject();
		         System.out.println(dto.getWorryCategoryNumber());
		         category.put("worryCategoryNumber", dto.getWorryCategoryNumber());
		         System.out.println(dto.getWorryHashTag());
		         category.put("worryHashTag", dto.getWorryHashTag());
		         category.put("worryTitle", dto.getWorryTitle());
		         category.put("worryContent", dto.getWorryContent());
		         category.put("worryLikeNumber", dto.getWorryLikeNumber());
		         category.put("userNickname", dto.getUserNickname());
		         category.put("isCheck", dto.isCheck());
		         category.put("userNumber", dto.getUserNumber());
		         category.put("worryNumber", dto.getWorryNumber());
		         categorys.add(category);
		      }
		      
		      out.print(categorys.toJSONString());
		      out.close();

		return null;
	}

}
