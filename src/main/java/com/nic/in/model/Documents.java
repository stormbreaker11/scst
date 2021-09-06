package com.nic.in.model;



public class Documents {

	private String docDesc;
	private byte[] docContent;
	private String docType;
	private String petitionId;
	private String petitionerId;
	private String docNo;
	
	
	public String getDocNo() {
		return docNo;
	}
	public void setDocNo(String docNo) {
		this.docNo = docNo;
	}
	public String getDocDesc() {
		return docDesc;
	}
	public void setDocDesc(String docDesc) {
		this.docDesc = docDesc;
	}
	public byte[] getDocContent() {
		return docContent;
	}
	public void setDocContent(byte[] docContent) {
		this.docContent = docContent;
	}
	public String getDocType() {
		return docType;
	}
	public void setDocType(String docType) {
		this.docType = docType;
	}
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
	
	
	
	
}
