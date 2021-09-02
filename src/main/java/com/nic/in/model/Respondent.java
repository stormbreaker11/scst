package com.nic.in.model;

public class Respondent {

	private String respno;
	private String respName;
	private String gender;
	private String caste;
	private String address;
	private String pincode;
	private String mobile;
	private String email;
	private String district;
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
