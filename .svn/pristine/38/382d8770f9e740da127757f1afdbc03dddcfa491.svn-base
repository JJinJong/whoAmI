package com.whoAmI.managerMbti.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.whoAmI.managerMbti.vo.TestInfoVO;
import com.whoAmI.mybatis.config.MyBatisConfig;

public class TestInfoDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessoinFactory();
	SqlSession sqlSession;

	public TestInfoDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}

	// 게시글 목록
	public List<TestInfoVO> selectAll(Map<String, Integer> testInfoMap) {
		return sqlSession.selectList("TestInfo.selectAll", testInfoMap);
	}
	// 게시글 (페이지X)
	public List<TestInfoVO> selectAllOnly() {
		return sqlSession.selectList("TestInfo.selectAllOnly");
	}

	// 게시글 전체 개수
	public int getTotal() {
		return sqlSession.selectOne("TestInfo.getTotal");
	}

	// 게시글 정보 조회
	public TestInfoVO selectDetail(int testInfoNumber) {
		return sqlSession.selectOne("TestInfo.selectDetail", testInfoNumber);
	}

	// 최근 게시글 번호
	public int getSeq() {
		return sqlSession.selectOne("TestInfo.getSeq");
	}

	// 게시글 추가
	public void insert(TestInfoVO info) {
		sqlSession.insert("TestInfo.insert", info);
	}

	// 게시글 삭제
	public void delete(int testInfoNumber) {
		sqlSession.delete("TestInfo.delete", testInfoNumber);
	}
	// 게시글 수정
		public void update(TestInfoVO info) {
			sqlSession.delete("TestInfo.update", info);
	}

}
