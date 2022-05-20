package com.whoAmI.managerWorry.vo;

public class consultReviewVO {
	private int consultReviewNumber;
	private String consultReviewContent;
	private String consultReviewDate;
	private int managerNumber;
	private int userNumber;
	
	consultReviewVO(){;}

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

	public int getManagerNumber() {
		return managerNumber;
	}

	public void setManagerNumber(int managerNumber) {
		this.managerNumber = managerNumber;
	}

	public int getUserNumber() {
		return userNumber;
	}

	public void setUserNumber(int userNumber) {
		this.userNumber = userNumber;
	}
	
	

}
