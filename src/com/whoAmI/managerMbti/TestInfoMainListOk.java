package com.whoAmI.managerMbti;

import java.io.IOException;
import java.io.PrintWriter;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.managerMbti.dao.TestInfoDAO;
import com.whoAmI.managerMbti.dao.TestInfoPictureDAO;
import com.whoAmI.managerMbti.vo.TestInfoPictureVO;
import com.whoAmI.managerMbti.vo.TestInfoVO;

public class TestInfoMainListOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");


		TestInfoDAO bDao = new TestInfoDAO();
		TestInfoPictureDAO fDao = new TestInfoPictureDAO();
		PrintWriter out = resp.getWriter();


		JSONArray files = new JSONArray();
		//디비에 있는 제목이랑 사용시간들을 가져옴 
		List<TestInfoVO> infoTest = bDao.selectAllOnly();
//		System.out.println(infoTest);
		for (TestInfoVO vo : infoTest) {
			JSONObject infofile = new JSONObject();
			infofile.put("testInfoNumber", vo.getTestInfoNumber());
			infofile.put("testInfoTitle", vo.getTestInfoTitle());
			//디비에 있는 사진들을 가져옴
			List<TestInfoPictureVO> infoPicture = fDao.selectAll(vo.getTestInfoNumber());
//			System.out.println(infoPicture);
			for (TestInfoPictureVO pVo : infoPicture) {
				infofile.put("testInfoPicturePosterNameOrignal", pVo.getTestInfoPicturePosterNameOrignal());	
			}
			files.add(infofile);
		}
		
		
		System.out.println(files);

		out.print(files.toJSONString());
		out.close();

		return null;
	}

}
