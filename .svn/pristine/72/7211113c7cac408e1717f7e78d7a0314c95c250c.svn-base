package com.whoAmI.manager.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.whoAmI.manager.vo.ManagerVO;
import com.whoAmI.mybatis.config.MyBatisConfig;
import com.whoAmI.user.vo.UserVO;

public class ManagerDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessoinFactory();
	SqlSession sqlSession;

	public ManagerDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}

	//전문가 목록
	public List<ManagerVO> selectAll() {
		return sqlSession.selectList("Manager.selectAll");
	}
	
	//전문가 전체 수 // sql문 "Manager.getTotal"에서 Manager가 뭘까? 매퍼 이름?
	public int getTotal() {
		return sqlSession.selectOne("Manager.getTotal");
	}
	
	//관리자 목록
	public List<ManagerVO> selectManager1(){
		return sqlSession.selectList("Manager.selectManager1");
	}
	
	//관리자 전체 수
	public int getTotalManager() {
		return sqlSession.selectOne("Manager.getTotalManager");
	}
	
	//회원 목록
	public List<UserVO> selectUserList(){
		return sqlSession.selectList("Manager.selectUserList");
	}
	
	//회원 전체 수
	public int getTotalMember() {
		return sqlSession.selectOne("Manager.getTotalMember");
	}
	
	//관리자 삭제
	public void deleteManager(int managerNumber) {
		sqlSession.delete("Manager.deleteManager", managerNumber);
	}
	
	//전문가 정보 조회
	public ManagerVO getManagerDetail(int managerNumber) {
		return sqlSession.selectOne("Member.getManagerDetail", managerNumber);
	}
	
	//전문가 정보 조회
	public ManagerVO getRealManagerDetail(int managerNumber) {
		return sqlSession.selectOne("Member.getRealManagerDetail", managerNumber); 
	}
	
}
