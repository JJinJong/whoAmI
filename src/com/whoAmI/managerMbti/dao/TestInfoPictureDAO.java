package com.whoAmI.managerMbti.dao;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;


import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.oreilly.servlet.MultipartRequest;
import com.whoAmI.managerMbti.vo.PictureDTO;
import com.whoAmI.managerMbti.vo.TestInfoPictureVO;
import com.whoAmI.mybatis.config.MyBatisConfig;

public class TestInfoPictureDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessoinFactory();
	SqlSession sqlSession;

	public TestInfoPictureDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}

	public int selectManagerNumber(int testInfoNumber) {
		return sqlSession.selectOne("TestInfoPicture.selectManagerNumber", testInfoNumber);
	}
	
	// 첨부파일 추가(SQL)
	private void insert(TestInfoPictureVO pInfo) {
		sqlSession.insert("TestInfoPicture.insert", pInfo);
	}

	// 첨부파일 추가(로직)
	public void insert(MultipartRequest multi, int testInfoNumber) {
		List<PictureDTO> pictures = new ArrayList<>();
		TestInfoPictureVO pInfo = new TestInfoPictureVO();
		Enumeration<String> pInfos = multi.getFileNames();
		
		// type="file"인 태그의 개수만큼 반복
		// 첨부파일이 무조건 2개 들어옴(썸네일1개, 일반1개)
		while (pInfos.hasMoreElements()) {
			PictureDTO picture = new PictureDTO();
			//각 파일의 원본이름, 각 파일의 시스템이름
			
			// 사용자가 업로드한 파일 태그의 name값
			String name = pInfos.nextElement();

			// 사용자가 업로드한 원본 파일 이름
			String fileNameOriginal = multi.getOriginalFileName(name);

			// 중복 시 변경된 이름
			String fileName = multi.getFilesystemName(name);

			// 첨부파일이 업로드되지 않았다면
			if (fileName == null) {
				continue;
			}
			
			picture.setFileName(fileName);
			picture.setOrginalName(fileNameOriginal);
			pictures.add(picture);
		}
		pInfo.setTestInfoPicture(pictures.get(0).getFileName());
		pInfo.setTestInfoPictureSumnailNameOrignal(pictures.get(0).getOrginalName());
		pInfo.setTestInfoPicturePoster(pictures.get(1).getFileName());
		pInfo.setTestInfoPicturePosterNameOrignal(pictures.get(1).getOrginalName());
		pInfo.setTestInfoNumber(testInfoNumber);
		insert(pInfo);
	}

	// 첨부파일 삭제
	public void delete(int testInfoNumber) {
		sqlSession.delete("TestInfoPicture.delete", testInfoNumber);
	}

	// 첨부파일 가져오기
	
	public TestInfoPictureVO select(int testInfoNumber) {
		return sqlSession.selectOne("TestInfoPicture.select", testInfoNumber);
	}

	// 첨부파일 전부가져오기
	public List<TestInfoPictureVO> selectAll(int testInfoNumber) {
		return sqlSession.selectList("TestInfoPicture.selectAll", testInfoNumber);
	}

}