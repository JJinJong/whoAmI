package com.whoAmI.diary.vo;

public class DiaryDTO {
	private int diaryNumber;
	private String diaryDate;
	private String diaryFileName;
	private String diaryContent2;
	private String diaryContent3;
	private String diaryContent4;
	private String diaryContent5;
	private String diaryContent6;
	private String diaryContent7;
	private String diaryContent8;
	private String diaryAnonymous;
	private String diaryPublic;
	private int diaryLikeCount;
	private int userNumber;
	private String userNickname;
	
	public DiaryDTO() {;}
	
	public DiaryDTO(DiaryVO diaryVO) {
		super();
		this.userNumber = diaryVO.getUserNumber();
		this.diaryNumber = diaryVO.getDiaryNumber();
		this.diaryDate = diaryVO.getDiaryDate();
		this.diaryFileName = diaryVO.getDiaryFileName();
		this.diaryContent2 = diaryVO.getDiaryContent2();
		this.diaryContent3 = diaryVO.getDiaryContent3();
		this.diaryContent4 = diaryVO.getDiaryContent4();
		this.diaryContent5 = diaryVO.getDiaryContent5();
		this.diaryContent6 = diaryVO.getDiaryContent6();
		this.diaryContent7 = diaryVO.getDiaryContent7();
		this.diaryContent8 = diaryVO.getDiaryContent8();
		this.diaryAnonymous = diaryVO.getDiaryAnonymous();
		this.diaryPublic = diaryVO.getDiaryPublic();
		this.diaryLikeCount = diaryVO.getDiaryLikeCount();
	}
	
	public int getDiaryNumber() {
		return diaryNumber;
	}
	
	public void setDiaryNumber(int diaryNumber) {
		this.diaryNumber = diaryNumber;
	}
	
	public String getDiaryDate() {
		return diaryDate;
	}
	
	public void setDiaryDate(String diaryDate) {
		this.diaryDate = diaryDate;
	}
	
	public String getDiaryFileName() {
		return diaryFileName;
	}
	
	public void setDiaryFileName(String diaryFileName) {
		this.diaryFileName = diaryFileName;
	}
	
	public String getDiaryContent2() {
		return diaryContent2;
	}
	
	public void setDiaryContent2(String diaryContent2) {
		this.diaryContent2 = diaryContent2;
	}
	
	public String getDiaryContent3() {
		return diaryContent3;
	}
	
	public void setDiaryContent3(String diaryContent3) {
		this.diaryContent3 = diaryContent3;
	}
	
	public String getDiaryContent5() {
		return diaryContent5;
	}
	
	public void setDiaryContent5(String diaryContent5) {
		this.diaryContent5 = diaryContent5;
	}
	
	public String getDiaryContent4() {
		return diaryContent4;
	}
	
	public void setDiaryContent4(String diaryContent4) {
		this.diaryContent4 = diaryContent4;
	}
	
	public String getDiaryContent6() {
		return diaryContent6;
	}
	
	public void setDiaryContent6(String diaryContent6) {
		this.diaryContent6 = diaryContent6;
	}
	
	public String getDiaryContent7() {
		return diaryContent7;
	}
	
	public void setDiaryContent7(String diaryContent7) {
		this.diaryContent7 = diaryContent7;
	}
	
	public String getDiaryContent8() {
		return diaryContent8;
	}
	
	public void setDiaryContent8(String diaryContent8) {
		this.diaryContent8 = diaryContent8;
	}
	
	public String getDiaryAnonymous() {
		return diaryAnonymous;
	}
	
	public void setDiaryAnonymous(String diaryAnonymous) {
		this.diaryAnonymous = diaryAnonymous;
	}
	
	public String getDiaryPublic() {
		return diaryPublic;
	}
	
	public void setDiaryPublic(String diaryPublic) {
		this.diaryPublic = diaryPublic;
	}
	
	public int getUserNumber() {
		return userNumber;
	}
	
	public void setUserNumber(int userNumber) {
		this.userNumber = userNumber;
	}
	
	public String getUserNickname() {
		return userNickname;
	}
	
	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}
	
	public int getDiaryLikeCount() {
		return diaryLikeCount;
	}
	
	public void setDiaryLikeCount(int diaryLikeCount) {
		this.diaryLikeCount = diaryLikeCount;
	}
	
}
