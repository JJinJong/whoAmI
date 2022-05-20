package com.whoAmI.userMyPage.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;


import com.whoAmI.mybatis.config.MyBatisConfig;
import com.whoAmI.userMyPage.vo.MyCommentVO;


public class MyCommentDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessoinFactory();
	SqlSession sqlSession;
	
	public MyCommentDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	
	// 댓글 목록
	public List<MyCommentVO> selectAll(int userNumber) {
		return sqlSession.selectList("UserMyPage.selectAllComment", userNumber);
	}
	// 댓글 가져오기
	public MyCommentVO select(int worryCommentNumber) {
		return sqlSession.selectOne("UserMyPage.selectComment", worryCommentNumber);
	}
	//댓글 삭제
	public void delete(int commentNumber) {
		sqlSession.delete("UserMyPage.deleteComment",commentNumber);
	}
	//댓글 업데이트
	public void upDate(MyCommentVO comment) {
		sqlSession.update("UserMyPage.updateComment",comment);
	}
	
}
