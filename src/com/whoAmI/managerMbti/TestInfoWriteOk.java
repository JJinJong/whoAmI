package com.whoAmI.managerMbti;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.whoAmI.action.Action;
import com.whoAmI.action.ActionForward;
import com.whoAmI.managerMbti.dao.TestInfoDAO;
import com.whoAmI.managerMbti.dao.TestInfoPictureDAO;
import com.whoAmI.managerMbti.vo.TestInfoVO;

public class TestInfoWriteOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		String uploadFolder = "C:\\aigb_0900_jsj\\jsp\\workspace\\whoAmI\\WebContent\\upload";
		int fileSize = 1024 * 1024 * 5;// 5M
		TestInfoDAO bDao = new TestInfoDAO();
		TestInfoPictureDAO fDao = new TestInfoPictureDAO();
		TestInfoVO info = new TestInfoVO();
		ActionForward af = new ActionForward();

		// 요청객체, 업로드폴더 경로, 파일의 크기, 인코딩 방식, 이름변경정책
		MultipartRequest multi = new MultipartRequest(req, uploadFolder, fileSize, "UTF-8",
				new DefaultFileRenamePolicy());

		info.setTestInfoTitle(multi.getParameter("testInfoTitle"));
		info.setTestInfoUsetime(multi.getParameter("testInfoUsetime"));
		info.setTestInfoPath(multi.getParameter("testInfoPath"));
		info.setManagerNumber(1);
//		info.setManagerNumber((Integer)req.getSession().getAttribute("managerNumber"));

		// 게시글 추가
		bDao.insert(info);

		// 파일 추가
		fDao.insert(multi, bDao.getSeq());
		
		af.setRedirect(true);
		af.setPath(req.getContextPath() + "/managerMbti/TestInfoListOk.ns");
		
		return af;
	}

}
