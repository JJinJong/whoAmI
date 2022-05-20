package com.whoAmI.diary.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.whoAmI.diary.vo.DiaryDTO;
import com.whoAmI.diary.vo.DiaryVO;
import com.whoAmI.mybatis.config.MyBatisConfig;

public class DiaryDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessoinFactory();
	SqlSession sqlSession;
	
	public DiaryDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	
	// 다이어리 작성
	public void insertDiary (DiaryVO diary) {
		sqlSession.insert("Diary.insertDiary", diary);
	}

	// 다이어리 리스트
	public List<DiaryDTO> selectDiaryList() {
		return sqlSession.selectList("Diary.selectDiaryList");
	}

	// 다이어리 색깔 분류
	public List<DiaryDTO> selectColor(ArrayList<String> diaryFileNames) {
		return sqlSession.selectList("Diary.selectColor", diaryFileNames);
	}
	
	// 다이어리 상세 보기
	public DiaryDTO selectDiary(int diaryNumber) {
		return sqlSession.selectOne("Diary.selectDiary", diaryNumber);
	}

	// 다이어리 수정
	public void updateDiary(DiaryVO dVo) {
		sqlSession.selectOne("Diary.updateDiary", dVo);
	}
	
	// 다이어리 삭제
	public void deleteDiary(int diaryNumber) {
		sqlSession.selectOne("Diary.deleteDiary", diaryNumber);
	}
	
	//다이어리 달력
	public List<DiaryVO> selectCalendar(int userNumber) {
		return sqlSession.selectList("Diary.selectCalendar", userNumber);
	}
}











