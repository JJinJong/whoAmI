package com.whoAmI.managerExpert.vo;

public class ConsultReviewVO {
	 private int  consultReviewNumber;
	 private String consultReviewContent;
	 private String consultReviewDate;
	 private int userNumberExpert;
	 private int userNumber;
	 private int consultPaymentDetailNumber;
	 
	 public ConsultReviewVO() {;}

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

	public int getConsultPaymentDetailNumber() {
		return consultPaymentDetailNumber;
	}

	public void setConsultPaymentDetailNumber(int consultPaymentDetailNumber) {
		this.consultPaymentDetailNumber = consultPaymentDetailNumber;
	}
}
