package com.nic.in.dao;

import java.util.List;

import com.nic.in.model.Login;
import com.nic.in.model.Respondent;

public interface RespondentDao {

	//add respondent
	public int addRepondent(Respondent respondent, Login login, String pid);

	public List<Respondent> getRespondents(String petId); //get respondent details based on petition id

	public int deleteRespondent(String respcode, String petitionerId); //delete respondent

}
