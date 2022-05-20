package com.whoAmI.expertPage.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.whoAmI.managerWorry.vo.WorryCommentManagerDTO;
import com.whoAmI.mybatis.config.MyBatisConfig;
import com.whoAmI.userMyPage.vo.MyCommentVO;

public class ExpertPageCommentDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessoinFactory();
	SqlSession sqlSession;
	
	public  ExpertPageCommentDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	
	// 댓글 목록
	public List<WorryCommentManagerDTO> selectAll(int userNumberExpert) {
		return sqlSession.selectList("ExpertPage.selectAllComment", userNumberExpert);
	}
	
	// 댓글 가져오기
		public WorryCommentManagerDTO select(int worryCommentManagerNumber) {
			return sqlSession.selectOne("ExpertPage.selectComment", worryCommentManagerNumber);
		}
	
	//댓글 업데이트
		public void upDate(WorryCommentManagerDTO comment) {
			sqlSession.update("ExpertPage.updateComment",comment);
		}
		
	//댓글 삭제
		public void delete(int worryCommentManagerNumber) {
			sqlSession.delete("ExpertPage.deleteComment",worryCommentManagerNumber);
		}	
	
}
