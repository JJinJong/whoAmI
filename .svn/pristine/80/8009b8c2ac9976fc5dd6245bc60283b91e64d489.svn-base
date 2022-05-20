package com.whoAmI.worry.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.whoAmI.mybatis.config.MyBatisConfig;

public class WorryCommentDAO {

	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessoinFactory();
	SqlSession sqlSession;
	
	public WorryCommentDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	
	//댓글 삭제
			public void deleteComment(int worryNumber) {
				sqlSession.delete("Worry.deleteComment", worryNumber);
			}
}
