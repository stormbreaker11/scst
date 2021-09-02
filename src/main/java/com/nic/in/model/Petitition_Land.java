package com.nic.in.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.collections.FactoryUtils;
import org.apache.commons.collections.list.LazyList;

public class Petitition_Land {

	private String petitionType;
	private String petitionId;
	private String petitionerId;
	private String landKind;
	private String landType;
	private String appeal;
	private String pet_detail;
	private String courtComp;
	private String courtName;
	private String courtState;
	private String courtDist;
	private String courtMandal;
	private String caseNo;
	private String caseStatus;
	
	@SuppressWarnings("unchecked")
	private List<Respondent> education = LazyList.decorate(new ArrayList<Respondent>(),
			FactoryUtils.instantiateFactory(Respondent.class));
	
	
	@SuppressWarnings("unchecked")
	private List<Land> lands = LazyList.decorate(new ArrayList<Land>(),
			FactoryUtils.instantiateFactory(Land.class));


	public String getPetitionType() {
		return petitionType;
	}


	public void setPetitionType(String petitionType) {
		this.petitionType = petitionType;
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


	public String getLandKind() {
		return landKind;
	}


	public void setLandKind(String landKind) {
		this.landKind = landKind;
	}


	public String getLandType() {
		return landType;
	}


	public void setLandType(String landType) {
		this.landType = landType;
	}


	public String getAppeal() {
		return appeal;
	}


	public void setAppeal(String appeal) {
		this.appeal = appeal;
	}


	public String getPet_detail() {
		return pet_detail;
	}


	public void setPet_detail(String pet_detail) {
		this.pet_detail = pet_detail;
	}


	public String getCourtComp() {
		return courtComp;
	}


	public void setCourtComp(String courtComp) {
		this.courtComp = courtComp;
	}


	public String getCourtName() {
		return courtName;
	}


	public void setCourtName(String courtName) {
		this.courtName = courtName;
	}


	public String getCourtState() {
		return courtState;
	}


	public void setCourtState(String courtState) {
		this.courtState = courtState;
	}


	public String getCourtDist() {
		return courtDist;
	}


	public void setCourtDist(String courtDist) {
		this.courtDist = courtDist;
	}


	public String getCourtMandal() {
		return courtMandal;
	}


	public void setCourtMandal(String courtMandal) {
		this.courtMandal = courtMandal;
	}


	public String getCaseNo() {
		return caseNo;
	}


	public void setCaseNo(String caseNo) {
		this.caseNo = caseNo;
	}


	public String getCaseStatus() {
		return caseStatus;
	}


	public void setCaseStatus(String caseStatus) {
		this.caseStatus = caseStatus;
	}


	public List<Respondent> getEducation() {
		return education;
	}


	public void setEducation(List<Respondent> education) {
		this.education = education;
	}


	public List<Land> getLands() {
		return lands;
	}


	public void setLands(List<Land> lands) {
		this.lands = lands;
	}
	
	
}
