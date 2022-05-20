package com.whoAmI.diary.vo;

public class DiaryLikeDTO {
	private int diaryLikeNumber ;
	private int diaryNumber;
	private int userNumber;
	
	public DiaryLikeDTO() {;}
	
	public DiaryLikeDTO(DiaryLikeVO diaryLikeVO) {
		super();
		this.diaryLikeNumber = diaryLikeVO.getDiaryLikeNumber();
		this.userNumber = diaryLikeVO.getUserNumber();
		this.diaryNumber = diaryLikeVO.getDiaryNumber();
	}	
	
	public int getDiaryLikeNumber() {
		return diaryLikeNumber;
	}
	public void setDiaryLikeNumber(int diaryLikeNumber) {
		this.diaryLikeNumber = diaryLikeNumber;
	}
	public int getDiaryNumber() {
		return diaryNumber;
	}
	public void setDiaryNumber(int diaryNumber) {
		this.diaryNumber = diaryNumber;
	}
	public int getUserNumber() {
		return userNumber;
	}
	public void setUserNumber(int userNumber) {
		this.userNumber = userNumber;
	}
}
