package com.whoAmI.expertPage.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.whoAmI.mybatis.config.MyBatisConfig;
import com.whoAmI.user.vo.UserVO;
import com.whoAmI.userMyPage.vo.ConsultPaymentDetailDTO;
import com.whoAmI.userMyPage.vo.ConsultReviewVO;

public class ExpertPageDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessoinFactory();
	SqlSession sqlSession;
	
	public ExpertPageDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	
//	 비밀번호 검사 로그인 비밀번호 비밀번호 확인
		public boolean expertCheckPw(String userCheckPw) {
			return (Integer)(sqlSession.selectOne("ExpertPage.userCheckPw", userCheckPw)) == 1;
		}
		
		// 비밀번호 유효성 검사   
		   public boolean checkPw(String userPw) {
		      return (Integer)(sqlSession.selectOne("ExpertPage.checkPw", userPw)) == 1;
		   }
	
		// 전문가 정보 조회	
		public UserVO expertInfo(int userNumber) {
			return sqlSession.selectOne("ExpertPage.expertInfo", userNumber);
		}
	
		// 전문가 회원정보 수정
			public void expertInfoUpdate(UserVO user) {
				System.out.println(user.getUserNickname());
				System.out.println(user.getUserBirth());
				System.out.println(user.getUserGender());
				System.out.println(user.getUserPw());
				System.out.println(user.getUserAddress());
			    sqlSession.update("ExpertPage.expertInfoUpdate", user);
			}
		
		// 예약내역 출력
		public List<ConsultPaymentDetailDTO> expertConsultDetail(int userNumber) {
			return sqlSession.selectList("ExpertPage.expertConsultDetail", userNumber);
		}
		
		// 진행중 업데이트
		public void consultGoUpdate(int consultPaymentDetailNumber) {
			sqlSession.update("ExpertPage.consultGoUpdate", consultPaymentDetailNumber);
		}
		
		// 상담 완료 업데이트
		public void consultEndUpdate(int consultPaymentDetailNumber) {
			sqlSession.update("ExpertPage.consultEndUpdate", consultPaymentDetailNumber);
		}
		
		//프로필넘버로 사용자 번호와 전문가 번호 가져오기 
		public ConsultReviewVO selectNumbers(int consultPaymentDetailNumber) {
			return sqlSession.selectOne("ExpertPage.selectNumbers", consultPaymentDetailNumber);
		}
		
		public void insertNumbers(ConsultReviewVO number) {
			sqlSession.insert("ExpertPage.insertNumbers", number);
		}
}