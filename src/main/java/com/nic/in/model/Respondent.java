package com.nic.in.model;

public class Respondent {

	private String respno;
	private String respType;
	private String respName;
	private String respProffesion;
	private String gender;
	private String caste;
	private String address;
	private String pincode;
	private String mobile;
	private String email;
	private String district;
	private String petitionerId;
	private String petition;
	
	
	
	public String getPetition() {
		return petition;
	}
	public void setPetition(String petition) {
		this.petition = petition;
	}
	public String getRespProffesion() {
		return respProffesion;
	}
	public void setRespProffesion(String respProffesion) {
		this.respProffesion = respProffesion;
	}
	public String getRespType() {
		return respType;
	}
	public void setRespType(String respType) {
		this.respType = respType;
	}
	public String getPetitionerId() {
		return petitionerId;
	}
	public void setPetitionerId(String petitionerId) {
		this.petitionerId = petitionerId;
	}
	public String getRespno() {
		return respno;
	}
	public void setRespno(String respno) {
		this.respno = respno;
	}
	public String getRespName() {
		return respName;
	}
	public void setRespName(String respName) {
		this.respName = respName;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getCaste() {
		return caste;
	}
	public void setCaste(String caste) {
		this.caste = caste;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPincode() {
		return pincode;
	}
	public void setPincode(String pincode) {
		this.pincode = pincode;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	@Override
	public String toString() {
		return "Respondent [respno=" + respno + ", respName=" + respName + ", gender=" + gender + ", caste=" + caste
				+ ", address=" + address + ", pincode=" + pincode + ", mobile=" + mobile + ", email=" + email
				+ ", district=" + district + "]";
	}
	
	
	
}
