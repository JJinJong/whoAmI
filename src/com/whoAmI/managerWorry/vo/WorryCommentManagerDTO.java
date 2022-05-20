package com.whoAmI.managerWorry.vo;

public class WorryCommentManagerDTO {
	private int worryCommentManagerNumber;
	private String worryCommentManagerContent;
	private String managerNumberDate;
	private int worryNumber;
	private int userNumberExpert;
	private String managerPictureNameOrignal;
	private String managerName;
	
	

	public WorryCommentManagerDTO(){;}
	
	public WorryCommentManagerDTO(WorryCommentManagerVO worryVO) {
		super();
		this.worryCommentManagerNumber = worryVO.getWorryCommentManagerNumber();
		this.worryCommentManagerContent = worryVO.getWorryCommentManagerContent();
		this.managerNumberDate = worryVO.getManagerNumberDate();
		this.worryNumber = worryVO.getWorryNumber();
		this.userNumberExpert = worryVO.getUserNumberExpert();
	}
	
	public String getManagerName() {
		return managerName;
	}

	public void setManagerName(String managerName) {
		this.managerName = managerName;
	}
	
	public String getManagerPictureNameOrignal() {
		return managerPictureNameOrignal;
	}

	public void setManagerPictureNameOrignal(String managerPictureNameOrignal) {
		this.managerPictureNameOrignal = managerPictureNameOrignal;
	}

	

	

	public int getUserNumberExpert() {
		return userNumberExpert;
	}

	public void setUserNumberExpert(int userNumberExpert) {
		this.userNumberExpert = userNumberExpert;
	}

	public int getWorryCommentManagerNumber() {
		return worryCommentManagerNumber;
	}

	public void setWorryCommentManagerNumber(int worryCommentManagerNumber) {
		this.worryCommentManagerNumber = worryCommentManagerNumber;
	}

	public String getWorryCommentManagerContent() {
		return worryCommentManagerContent;
	}

	public void setWorryCommentManagerContent(String worryCommentManagerContent) {
		this.worryCommentManagerContent = worryCommentManagerContent;
	}

	public String getManagerNumberDate() {
		return managerNumberDate;
	}

	public void setManagerNumberDate(String managerNumberDate) {
		this.managerNumberDate = managerNumberDate;
	}

	public int getWorryNumber() {
		return worryNumber;
	}

	public void setWorryNumber(int worryNumber) {
		this.worryNumber = worryNumber;
	}

	
	
}
