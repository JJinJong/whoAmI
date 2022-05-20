package com.whoAmI.managerExpert.vo;
public class ConsultReviewDTO {
	 private int  consultReviewNumber;
	 private String consultReviewContent;
	 private String consultTitle;
	 private String consultType;
	 private String consultReviewDate;
	 private int userNumberExpert;
	 private int userNumber;
	 
	 public ConsultReviewDTO() {;}

	public int getConsultReviewNumber() {
		return consultReviewNumber;
	}

	public void setConsultReviewNumber(int consultReviewNumber) {
		this.consultReviewNumber = consultReviewNumber;
	}

	public String getConsultReviewContent() {
		return consultReviewContent;
	}

	public void setConsultReviewContent(String consultReviewContent) {
		this.consultReviewContent = consultReviewContent;
	}

	public String getConsultTitle() {
		return consultTitle;
	}

	public void setConsultTitle(String consultTitle) {
		this.consultTitle = consultTitle;
	}

	public String getConsultType() {
		return consultType;
	}

	public void setConsultType(String consultType) {
		this.consultType = consultType;
	}

	public String getConsultReviewDate() {
		return consultReviewDate;
	}

	public void setConsultReviewDate(String consultReviewDate) {
		this.consultReviewDate = consultReviewDate;
	}

	public int getUserNumberExpert() {
		return userNumberExpert;
	}

	public void setUserNumberExpert(int userNumberExpert) {
		this.userNumberExpert = userNumberExpert;
	}

	public int getUserNumber() {
		return userNumber;
	}

	public void setUserNumber(int userNumber) {
		this.userNumber = userNumber;
	}

}
