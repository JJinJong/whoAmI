package com.whoAmI.managerMbti.vo;

public class TestInfoDTO {

	private int testInfoNumber;
	private String testInfoTitle;
	private String testInfoUsetime;
	private String testInfoPath;
	private String testInfoDate;
	private String testInfoPicture ;
	private String  testInfoPictureSumnailNameOrignal ;
	private String  testInfoPicturePosterNameOrignal;
	
	public TestInfoDTO() {;}
	
	public TestInfoDTO(TestInfoPictureVO testInfoPictureVO) {
		super();
		this.testInfoPicture=testInfoPictureVO.getTestInfoPicture();
		this.testInfoPictureSumnailNameOrignal=testInfoPictureVO.getTestInfoPictureSumnailNameOrignal();
		this.testInfoPicturePosterNameOrignal=testInfoPictureVO.getTestInfoPicturePosterNameOrignal();
	}
	public int getTestInfoNumber() {
		return testInfoNumber;
	}

	public void setTestInfoNumber(int testInfoNumber) {
		this.testInfoNumber = testInfoNumber;
	}

	public String getTestInfoTitle() {
		return testInfoTitle;
	}

	public void setTestInfoTitle(String testInfoTitle) {
		this.testInfoTitle = testInfoTitle;
	}

	public String getTestInfoUsetime() {
		return testInfoUsetime;
	}

	public void setTestInfoUsetime(String testInfoUsetime) {
		this.testInfoUsetime = testInfoUsetime;
	}

	public String getTestInfoPath() {
		return testInfoPath;
	}

	public void setTestInfoPath(String testInfoPath) {
		this.testInfoPath = testInfoPath;
	}

	public String getTestInfoDate() {
		return testInfoDate;
	}

	public void setTestInfoDate(String testInfoDate) {
		this.testInfoDate = testInfoDate;
	}

	public String getTestInfoPicture() {
		return testInfoPicture;
	}

	public void setTestInfoPicture(String testInfoPicture) {
		this.testInfoPicture = testInfoPicture;
	}

	public String getTestInfoPictureSumnailNameOrignal() {
		return testInfoPictureSumnailNameOrignal;
	}

	public void setTestInfoPictureSumnailNameOrignal(String testInfoPictureSumnailNameOrignal) {
		this.testInfoPictureSumnailNameOrignal = testInfoPictureSumnailNameOrignal;
	}

	public String getTestInfoPicturePosterNameOrignal() {
		return testInfoPicturePosterNameOrignal;
	}

	public void setTestInfoPicturePosterNameOrignal(String testInfoPicturePosterNameOrignal) {
		this.testInfoPicturePosterNameOrignal = testInfoPicturePosterNameOrignal;
	}

	
}
