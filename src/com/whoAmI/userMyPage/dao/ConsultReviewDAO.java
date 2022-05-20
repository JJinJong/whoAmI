package com.whoAmI.userMyPage.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;


import com.whoAmI.mybatis.config.MyBatisConfig;
import com.whoAmI.userMyPage.vo.ConsultReviewVO;


public class ConsultReviewDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessoinFactory();
	SqlSession sqlSession;
	
	public ConsultReviewDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	
	// 리뷰 목록
	public List<ConsultReviewVO> selectAll(int userNumber) {
		return sqlSession.selectList("UserMyPage.selectAllReview", userNumber);
	}
	// 리뷰 가져오기
	public ConsultReviewVO select(int reviewNumber) {
		return sqlSession.selectOne("UserMyPage.selectReview", reviewNumber);
	}
	//리뷰 삭제
	public void delete(int reviewNumber) {
		sqlSession.delete("UserMyPage.deleteReview",reviewNumber);
	}
	//리뷰 업데이트
	public void upDate(ConsultReviewVO review) {
		System.out.println(sqlSession.update("UserMyPage.updateReview",review)+"살려줭~~");
		sqlSession.update("UserMyPage.updateReview",review);
	}
	
}
