package com.nic.in.model;

public class Land {

	private String petitionId;
	private String petitionerId;
	private int landId;
	private String landDistrict;
	private String landmandal;
	private String landvillage;
	private String passbookNo;
	private String surveyNo;
	private String extentOfLand;
	private String landUnits;
	public String getPetitionId() {
		return petitionId;
	}
	public void setPetitionId(String petitionId) {
		this.petitionId = petitionId;
	}
	public String getPetitionerId() {
		return petitionerId;
	}
	public void setPetitionerId(String petitionerId) {
		this.petitionerId = petitionerId;
	}
	public int getLandId() {
		return landId;
	}
	public void setLandId(int landId) {
		this.landId = landId;
	}
	public String getLandDistrict() {
		return landDistrict;
	}
	public void setLandDistrict(String landDistrict) {
		this.landDistrict = landDistrict;
	}
	public String getLandmandal() {
		return landmandal;
	}
	public void setLandmandal(String landmandal) {
		this.landmandal = landmandal;
	}
	public String getLandvillage() {
		return landvillage;
	}
	public void setLandvillage(String landvillage) {
		this.landvillage = landvillage;
	}
	public String getPassbookNo() {
		return passbookNo;
	}
	public void setPassbookNo(String passbookNo) {
		this.passbookNo = passbookNo;
	}
	public String getSurveyNo() {
		return surveyNo;
	}
	public void setSurveyNo(String surveyNo) {
		this.surveyNo = surveyNo;
	}
	public String getExtentOfLand() {
		return extentOfLand;
	}
	public void setExtentOfLand(String extentOfLand) {
		this.extentOfLand = extentOfLand;
	}
	public String getLandUnits() {
		return landUnits;
	}
	public void setLandUnits(String landUnits) {
		this.landUnits = landUnits;
	}
	@Override
	public String toString() {
		return "Land [petitionId=" + petitionId + ", petitionerId=" + petitionerId + ", landId=" + landId
				+ ", landDistrict=" + landDistrict + ", landmandal=" + landmandal + ", landvillage=" + landvillage
				+ ", passbookNo=" + passbookNo + ", surveyNo=" + surveyNo + ", extentOfLand=" + extentOfLand
				+ ", landUnits=" + landUnits + "]";
	}
	
	
	
}
