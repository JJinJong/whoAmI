package com.whoAmI.managerExpert;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.managerExpert.dao.ExpertProfileDAO;
import com.whoAmI.managerExpert.vo.ExpertProfileVO;

public class ExpertProfileWriteOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		String uploadFolder = "C:\\aigb_0900_jsj\\jsp\\workspace\\whoAmI\\WebContent\\upload";
		int fileSize = 1024 * 1024 * 10;//5M
		ExpertProfileDAO MpDao = new ExpertProfileDAO();
		ExpertProfileVO profile = new ExpertProfileVO();
		ActionForward af = new ActionForward();
		
		//요청객체, 업로드폴더 경로, 파일의 크기, 인코딩 방식, 이름변경정책
		MultipartRequest multi = new MultipartRequest(req, uploadFolder, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		
		Enumeration<String> files = multi.getFileNames();
		String managerPictureNameOrignal ="";
		String managerprofileName ="";
//		//type="file"인 태그의 개수만큼 반복
//		
		while(files.hasMoreElements()) {
			//사용자가 업로드한 파일 태그의 name값
			String name = files.nextElement();
			
			//사용자가 업로드한 원본 파일 이름
			managerPictureNameOrignal = multi.getOriginalFileName(name);
			
			//중복 시 변경된 이름
			managerprofileName = multi.getFilesystemName(name);
		}
		System.out.println(managerprofileName);
		
		profile.setManagerName(multi.getParameter("managerName"));
		profile.setManagerPictureNameOrignal(managerPictureNameOrignal);
		profile.setManagerProfileName(managerprofileName);	 
		profile.setManagerIntroduce(multi.getParameter("managerIntroduce"));	 
		profile.setManagerRank(multi.getParameter("managerRank"));	 
		profile.setManagerCareer(multi.getParameter("managerCareer"));	 
		profile.setManagerDegree(multi.getParameter("managerDegree"));	 
		profile.setManagerContent1(multi.getParameter("managerContent1"));	 
		profile.setManagerContent2(multi.getParameter("managerContent2"));	 
		profile.setManagerContent3(multi.getParameter("managerContent3"));	 
		profile.setManagerconsultText(multi.getParameter("managerconsultText"));	 
		profile.setManagerconsultVoice(multi.getParameter("managerconsultVoice"));	 
		profile.setManagerconsultMeet(multi.getParameter("managerconsultMeet"));	 
		profile.setUserNumberExpert((Integer)req.getSession().getAttribute("userNumber"));
		
		MpDao.insert(profile);
		
		af.setRedirect(true);
		af.setPath(req.getContextPath() + "/expert/MainPage.me");
		return af;
	}

}