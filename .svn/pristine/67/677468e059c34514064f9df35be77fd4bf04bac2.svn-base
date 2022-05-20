package com.whoAmI.managerExpert;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.managerExpert.dao.ExpertProfileDAO;
import com.whoAmI.managerExpert.vo.ExpertProfileVO;
import com.whoAmI.managerMbti.dao.TestInfoDAO;
import com.whoAmI.managerMbti.dao.TestInfoPictureDAO;
import com.whoAmI.managerMbti.vo.TestInfoPictureVO;
import com.whoAmI.managerMbti.vo.TestInfoVO;

public class ExpertProfleUpdateOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {

		ExpertProfileDAO MpDao = new ExpertProfileDAO();
		ExpertProfileVO profile = new ExpertProfileVO();
		
		String uploadFolder = "C:\\aigb_0900_jsj\\jsp\\workspace\\whoAmI\\WebContent\\upload";
		int fileSize = 1024 * 1024 * 5;//5M
		
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
		
		int managerProfileNumber = MpDao.getProfileNumberByMangerNumber((Integer)req.getSession().getAttribute("userNumber"));
		profile = MpDao.selectDetail(managerProfileNumber);
		String PictureNameOrignal = profile.getManagerPictureNameOrignal();
		
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
		
		MpDao.update(profile);
		
		try {
			File f = new File(uploadFolder, PictureNameOrignal);
			if(f.exists()) {f.delete();}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return new ActionForward(true, req.getContextPath() + "/expert/MainPage.me");
	}

}
