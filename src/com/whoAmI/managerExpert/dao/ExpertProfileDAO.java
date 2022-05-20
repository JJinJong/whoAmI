package com.whoAmI.managerExpert.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.whoAmI.managerExpert.vo.ConsultPaymentDetailVO;
import com.whoAmI.managerExpert.vo.ConsultReviewDTO;
import com.whoAmI.managerExpert.vo.ExpertConsultVO;
import com.whoAmI.managerExpert.vo.ExpertProfileDTO;
import com.whoAmI.managerExpert.vo.ExpertProfileVO;
import com.whoAmI.managerMbti.vo.TestInfoVO;
import com.whoAmI.mybatis.config.MyBatisConfig;
import com.whoAmI.user.vo.UserVO;

public class ExpertProfileDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessoinFactory();
	SqlSession sqlSession;
	
	
	public ExpertProfileDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	
//	스테이터스 가져오기
	public int selectStatus (HashMap<String, String> loginMap) {
		return sqlSession.selectOne("Expert.selectStatus", loginMap);
	}
	
//	필터에서 체크된 목록으로 리스트 받기
	public List<ExpertProfileVO> selectProfilesFiltered(HashMap<String, Object> filterMap) {
		return sqlSession.selectList("Expert.selectProfilesFiltered", filterMap);
	}
	

	//전문가 회원가입
	public void ExpertJoin(UserVO user) {
		sqlSession.insert("Expert.ExpertJoin",user);
	}
	
	// 프로필 추가
	public void insert(ExpertProfileVO profile) {
		sqlSession.insert("Expert.insert", profile);
	}
	
	// 프로필 가져오기
	public ExpertProfileVO selectDetail(int managerProfileNumber) {
		return sqlSession.selectOne("Expert.selectDetail", managerProfileNumber);
	}
	
	// 프로필리스트
	public List<ExpertProfileVO> selectProfiles(){
		return sqlSession.selectList("Expert.selectProfiles");
	}
	
	// 프로필리스트 가격순
	public List<ExpertProfileVO> selectProfilesPrice(){
		return sqlSession.selectList("Expert.selectProfilesPrice");
	}
	
	// 상담 리스트 가져오기 By mangerRank
	public List<ExpertConsultVO> selectConsult(String managerRank){
		return sqlSession.selectList("Expert.selectConsult", managerRank);
	}
	
	//	전문가 프로필 넘버 By managerNumber
	public int getProfileNumberByMangerNumber(int userNumberExpert) {
		return sqlSession.selectOne("Expert.getProfileNumberByMangerNumber", userNumberExpert);
	}
	
	//	결제 리스트 작성
	public void insertConsultPaymentDetail(ConsultPaymentDetailVO consultPaymentDetail) {
		sqlSession.insert("Expert.insertConsultPaymentDetail", consultPaymentDetail);
	}

	// 프로필 전체 개수
	public int getTotal() {
		return sqlSession.selectOne("Expert.getTotal");
	}
	
	// 프로필 목록
	public List<ExpertProfileDTO> selectAll(Map<String, Integer> ProfileMap) {
		return sqlSession.selectList("Expert.selectAll", ProfileMap);
	}
	
	// 프로필 업데이트	
	public void update(ExpertProfileVO profile) {
		sqlSession.update("Expert.update", profile);
	}
	
	// 상담 결제 내역 삭제
	public void deletePayment(int managerProfileNumber) {
		sqlSession.delete("Expert.deletePayment", managerProfileNumber);
	}
	
	// 프로필 삭제
	public void deleteProfile(int managerProfileNumber) {
		sqlSession.delete("Expert.deleteProfile", managerProfileNumber);
	}
	
	// 프로필 개수 카운트
	public int selectCountProfile(int userNumberExpert) {
		return sqlSession.selectOne("Expert.selectCountProfile", userNumberExpert);
	}
	
//	유저 정보 가져오기 by userNumber
	public UserVO selectUserAll(int userNumber) {
		return sqlSession.selectOne("Expert.selectUserAll", userNumber);
	}
	
//	리뷰 목록 가져오기 By userNumberExpert
	public List<ConsultReviewDTO> selectReviewAll(int userNumberExpert, int rowCount) {
		HashMap<String, Object> map = new HashMap<>();
		map.put("userNumberExpert", userNumberExpert);
		map.put("rowCount", rowCount);
		return sqlSession.selectList("Expert.selectReviewAll", map);
	}
	
	public int selectReviewCount(int userNumberExpert) {
		return sqlSession.selectOne("Expert.selectReviewCount", userNumberExpert);
	}
	
//	랜덤 프로필 3개 셀렉
	public List<ExpertProfileVO> selectRandomProfiles(){
		return sqlSession.selectList("Expert.selectRandomProfiles");
	}
	
}
