package com.nic.in.dao;

import java.util.List;

import com.nic.in.model.Atrocity;
import com.nic.in.model.Login;
import com.nic.in.model.Petition;

public interface AtrocityDao 
{
	public int saveAtrocityPetition(Atrocity a, Login login, String pid);
	
	public String createAtrocityPetitionId(String type);
	
	public Atrocity getAtrocityForm(String petition_id);

	public Petition getPetition(String pid, String petid);
	
	public Atrocity getAtrocityPetition(String petid);

	public int updateAtrocity(Atrocity updateatrocity, Login login);

}
