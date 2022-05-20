package com.whoAmI.userMyPage.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.whoAmI.mybatis.config.MyBatisConfig;
import com.whoAmI.user.vo.UserVO;
import com.whoAmI.userMyPage.vo.ConsultPaymentDetailDTO;

public class MyPageUserInformDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessoinFactory();
	SqlSession sqlSession;
	
	public MyPageUserInformDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	
	// 비밀번호 검사 로그인 비밀번호 비밀번호 확인
	public boolean userCheckPw(String userCheckPw) {
		return (Integer)(sqlSession.selectOne("UserMyPage.userCheckPw", userCheckPw)) == 1;
	}
	
	// 비밀번호 유효성 검사   
	   public boolean checkPw(String userPw) {
	      return (Integer)(sqlSession.selectOne("UserMyPage.checkPw", userPw)) == 1;
	   }
	
	// 회원 정보 조회	
	public UserVO getInfo(int userNumber) {
		return sqlSession.selectOne("UserMyPage.getInfo", userNumber);
	}
	
	// 회원정보 수정
	public void myPageUpdate(UserVO user) {
		System.out.println(user.getUserNickname());
		System.out.println(user.getUserBirth());
		System.out.println(user.getUserGender());
		System.out.println(user.getUserPw());
		System.out.println(user.getUserAddress());
	    sqlSession.update("UserMyPage.myPageUpdate", user);
	}
	
	// 예약내역 출력
	public List<ConsultPaymentDetailDTO> consultDetail(int userNumber) {
		return sqlSession.selectList("UserMyPage.consultDetail", userNumber);
	}
}