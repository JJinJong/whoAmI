package com.whoAmI.worry.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.whoAmI.worry.vo.WorryCommentDTO;
import com.whoAmI.worry.vo.WorryCommentVO;
import com.whoAmI.worry.vo.WorryDTO;
import com.whoAmI.worry.vo.WorryLikeVO;
import com.whoAmI.worry.vo.WorryManagermentDTO;
import com.whoAmI.managerWorry.vo.WorryCommentManagerDTO;
import com.whoAmI.managerWorry.vo.WorryCommentManagerVO;
import com.whoAmI.mybatis.config.MyBatisConfig;
import com.whoAmI.worry.vo.WorryVO;

public class WorryDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessoinFactory();
	SqlSession sqlSession;
	
	public WorryDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	// 게시글 메인페이지목록
		public List<WorryDTO> selectAllMain() {
			return sqlSession.selectList("Worry.selectAllMain");
		}
		//게시글 목록
		public List<WorryDTO> selectAll() {
			return sqlSession.selectList("Worry.selectAll");
		}
		// 마이페이지 안 게시글 목록
		public List<WorryDTO> selectAllMyWorry(int userNumber) {
			System.out.println("여기가 못들엇왓냐?");
			return sqlSession.selectList("Worry.selectAllMyWorry", userNumber);
		}
		
		//게시글 카테고리 목록
		public List<WorryDTO> selectCategoryAll(HashMap<String, Object> categoryMap) {
			return sqlSession.selectList("Worry.selectCategoryAll", categoryMap);
		}
		
		//관리자 게시글 목록
		public List<WorryManagermentDTO> selectManagermentAll(Map<String, Integer> worryMap) {
			return sqlSession.selectList("Worry.selectManagermentAll", worryMap);
		}
		
		//게시글 댓글 목록
		public List<WorryCommentDTO> selectCommentAll(int worryNumber) {
			return sqlSession.selectList("Worry.selectCommentAll", worryNumber);
		}
		
		//게시글 전문가 댓글 목록
		public List<WorryCommentManagerDTO> selectManagerCommentAll(int worryNumber) {
			HashMap<String, Integer> commentMap = new HashMap<>();
			commentMap.put("worryNumber", worryNumber);
			return sqlSession.selectList("Worry.selectManagerCommentAll", commentMap);
		}
		
		//게시글 정보 조회
		public WorryDTO selectDetail(int worryNumber) {
			return sqlSession.selectOne("Worry.selectDetail", worryNumber);
		}
		
		//게시글 추가
		public void insert(WorryVO worry) {
			sqlSession.insert("Worry.insert", worry);
		}
		
		//게시글 댓글 추가
		public void commentinsert(WorryCommentVO worryComment) {
			sqlSession.insert("Worry.commentinsert", worryComment);
		}
		
		//게시글 전문가 댓글 추가
		public void commentManagerinsert(WorryCommentManagerVO worryCommentManager) {
			sqlSession.insert("Worry.commentManagerinsert", worryCommentManager);
		}
		
		//게시글 전체 개수
		public int getTotal() {
			return sqlSession.selectOne("Worry.getTotal");
		}
		
		//게시글 댓글 전체 개수
		public int getCommentTotal(int worryNumber) {
			return sqlSession.selectOne("Worry.getCommentTotal", worryNumber);
		}
		
		//게시글 수정
		public void update(WorryVO worry) {
			sqlSession.update("Worry.update", worry);
		}
		
		
		
		//게시글 삭제
		public void delete(int worryNumber) {
			sqlSession.delete("Worry.delete", worryNumber);
		}
		//게시글 삭제
		public void deleteLike(int worryNumber) {
			sqlSession.delete("Worry.deleteLike", worryNumber);
		}
		
		//전문가게시글 삭제
		public void deleteManagerComment(int worryNumber) {
			sqlSession.delete("Worry.deleteManagerComment", worryNumber);
		}
		
		//
//		public String liekCount() {
//			return sqlSession.selectOne("Worry.getTotal");
//		}
		
		//게시글  공감수  증가
		public void updateWorryLikeNumber(int worryNumber, int count) {
			HashMap<String, Integer> likeMap = new HashMap<>();
			likeMap.put("worryNumber", worryNumber);
			likeMap.put("count", count);
			sqlSession.update("Worry.updateWorryLikeNumber", likeMap);
		} 
		
		//게시글 공감수 감소
		public void deleteLikeUser(int userNumber, int worryNumber) {
			HashMap<String, Integer> likedeleteMap = new HashMap<>();
			likedeleteMap.put("userNumber", userNumber);
			likedeleteMap.put("worryNumber", worryNumber);
			sqlSession.delete("Worry.deleteLikeUser", likedeleteMap);
		}
		
		//해당 게시글의 좋아요 누른 회원 전체 목록
		public void insertLikeUser(int worryNumber, int userNumber){
			HashMap<String, Integer> likeListMap = new HashMap<>();
			likeListMap.put("worryNumber", worryNumber);
			likeListMap.put("userNumber", userNumber);
			sqlSession.insert("Worry.insertLikeUser", likeListMap);
		}
		
		//공감수 가져오기
		public int selectWorryLikeNumber(int worryNumber) {
			return sqlSession.selectOne("Worry.selectWorryLikeNumber", worryNumber);
		}
		
		//좋아요 누른 회원들
		public List<Integer> selectUserNumberLiked(int worryNumber){
			return sqlSession.selectList("Worry.selectUserNumberLiked", worryNumber);
		}
		
		//카테고리이름 가져오기 byNumber
		public String selectCategoryName(int worryCategoryNumber){
			return sqlSession.selectOne("Worry.selectCategoryName", worryCategoryNumber);
		}
		
		
	}
