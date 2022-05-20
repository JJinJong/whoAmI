package com.whoAmI.worry.vo;

import com.whoAmI.worry.vo.WorryVO;

public class WorryDTO {
	private int worryNumber;
	private int worryCategoryNumber;
	private String worryNickNameCheck;
	private String worryReadMeCheck;
	private String worryTitle;
	private String worryContent;
	private String worryDate;
	private String worryHashTag;
	private String worryReadCount;
	private int worryLikeNumber;
	private int worryReportNumber;
	private int userNumber;
	private String userNickname;
	private boolean check;
	
	public WorryDTO() {;}
	
	public WorryDTO(WorryVO worryVO) {
		super();
		this.userNumber = worryVO.getUserNumber();
		this.worryNumber = worryVO.getWorryNumber();
		this.worryTitle = worryVO.getWorryTitle();
		this.worryContent = worryVO.getWorryContent();
		this.worryDate = worryVO.getWorryDate();
		this.worryCategoryNumber = worryVO.getWorryCategoryNumber();
		this.worryNickNameCheck = worryVO.getWorryNickNameCheck();
		this.worryReadMeCheck = worryVO.getWorryReadMeCheck();
		this.worryHashTag = worryVO.getWorryHashTag();
		this.worryReadCount = worryVO.getWorryReadCount();
		this.worryLikeNumber = worryVO.getWorryLikeNumber();
		this.worryReportNumber = worryVO.getWorryReportNumber();
	}
	
	
	
	public boolean isCheck() {
		return check;
	}

	public void setCheck(boolean check) {
		this.check = check;
	}

	public String getUserNickname() {
		return userNickname;
	}

	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}

	public int getWorryNumber() {
		return worryNumber;
	}

	public void setWorryNumber(int worryNumber) {
		this.worryNumber = worryNumber;
	}

	

	
	

	public int getWorryCategoryNumber() {
		return worryCategoryNumber;
	}

	public void setWorryCategoryNumber(int worryCategoryNumber) {
		this.worryCategoryNumber = worryCategoryNumber;
	}

	public String getWorryNickNameCheck() {
		return worryNickNameCheck;
	}

	public void setWorryNickNameCheck(String worryNickNameCheck) {
		this.worryNickNameCheck = worryNickNameCheck;
	}

	public String getWorryReadMeCheck() {
		return worryReadMeCheck;
	}

	public void setWorryReadMeCheck(String worryReadMeCheck) {
		this.worryReadMeCheck = worryReadMeCheck;
	}

	public String getWorryTitle() {
		return worryTitle;
	}

	public void setWorryTitle(String worryTitle) {
		this.worryTitle = worryTitle;
	}

	public String getWorryContent() {
		return worryContent;
	}

	public void setWorryContent(String worryContent) {
		this.worryContent = worryContent;
	}

	public String getWorryDate() {
		return worryDate;
	}

	public void setWorryDate(String worryDate) {
		this.worryDate = worryDate;
	}

	public String getWorryHashTag() {
		return worryHashTag;
	}

	public void setWorryHashTag(String worryHashTag) {
		this.worryHashTag = worryHashTag;
	}

	public String getWorryReadCount() {
		return worryReadCount;
	}

	public void setWorryReadCount(String worryReadCount) {
		this.worryReadCount = worryReadCount;
	}

	public int getWorryLikeNumber() {
		return worryLikeNumber;
	}

	public void setWorryLikeNumber(int worryLikeNumber) {
		this.worryLikeNumber = worryLikeNumber;
	}

	public int getWorryReportNumber() {
		return worryReportNumber;
	}

	public void setWorryReportNumber(int worryReportNumber) {
		this.worryReportNumber = worryReportNumber;
	}

	public int getUserNumber() {
		return userNumber;
	}

	public void setUserNumber(int userNumber) {
		this.userNumber = userNumber;
	}
	   
}
