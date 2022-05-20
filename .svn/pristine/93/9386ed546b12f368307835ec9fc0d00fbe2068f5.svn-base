package com.whoAmI.user.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.whoAmI.mybatis.config.MyBatisConfig;
import com.whoAmI.user.vo.UserVO;
//dao를 만들기 전에
public class UserDAO {
	//DAO의 핵심,쿼리문만 사용 
	SqlSessionFactory sqlSessionFactory =MyBatisConfig.getSqlsessoinFactory();
	SqlSession sqlSession;
	
	public UserDAO() {
		sqlSession = sqlSessionFactory.openSession(true); //true를 넣으면 오토커밋
	}
	//아이디 중복검사 
	public boolean checkId(String userEmail) {// 아이디가 존재하면 1 true, 없으면 0 false
		return(Integer)sqlSession.selectOne("User.checkId",userEmail)==1; 
	}
	//회원가입
	public void join(UserVO user) {
		sqlSession.insert("User.join",user);
	}
	
	public UserVO kakaoLogin(String kakaoEmail) {
		return sqlSession.selectOne("User.kakaoLogin", kakaoEmail);
	}
	
	//로그인
	public int login(Map<String, String>loginMap) {
		int userNumber=0;
		try {userNumber=sqlSession.selectOne("User.login",loginMap);} catch (Exception e) {;}
		return userNumber;
	}
	
	//비밀번호 수정
		public void update(String userEmail, String userPw) {
			 HashMap<String, String> FindEmailMap = new HashMap<>();
			 FindEmailMap.put("userEmail", userEmail);
			 FindEmailMap.put("userPw", userPw);
			sqlSession.update("User.update", FindEmailMap);
			
		}
		
		public String header(String userEmail) {
			return sqlSession.selectOne("User.header", userEmail);
		}
		
		//유저 삭제
        public void userDelete(int userNumber) {
           sqlSession.delete("User.userDelete", userNumber);
        }

}
