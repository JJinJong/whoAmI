package com.whoAmI.managerMbti;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.managerMbti.dao.TestInfoDAO;
import com.whoAmI.managerMbti.dao.TestInfoPictureDAO;
import com.whoAmI.managerMbti.vo.TestInfoPictureVO;


public class TestInfoDeleteOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		String uploadFolder = "C:\\aigb_0900_jsj\\jsp\\workspace\\whoAmI\\WebContent\\upload";
		int testInfoNumber = Integer.parseInt(req.getParameter("testInfoNumber"));
		TestInfoDAO bDao = new TestInfoDAO();
		TestInfoPictureDAO fDao = new TestInfoPictureDAO();
		ActionForward af = new ActionForward();
		
		TestInfoPictureVO file = fDao.select(testInfoNumber);
		
		fDao.delete(testInfoNumber);
		bDao.delete(testInfoNumber);
		
			File[] files = {
					new File(uploadFolder, file.getTestInfoPicturePosterNameOrignal()),
					new File(uploadFolder, file.getTestInfoPictureSumnailNameOrignal())
			};
			
			for (int i = 0; i < files.length; i++) {
				if(files[i].exists()) {
					files[i].delete();
				}
			}
		
		af.setRedirect(true);
		af.setPath(req.getContextPath() + "/managerMbti/TestInfoListOk.ns");
		
		return af;
	}

}
