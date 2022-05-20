package com.whoAmI.userMyPage.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.whoAmI.mybatis.config.MyBatisConfig;
import com.whoAmI.user.vo.UserVO;

public class UserListDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessoinFactory();
	SqlSession sqlSession;
	
	public UserListDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	public List<UserVO> selectAll(Map<String, Integer> userMap) {
		return sqlSession.selectList("User.selectAll",userMap);
	}
	public int getTotal() {
		return sqlSession.selectOne("User.getTotal");
	}

}