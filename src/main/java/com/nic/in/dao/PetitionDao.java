package com.nic.in.dao;

import java.util.List;

import com.nic.in.model.Petitioner;

public interface PetitionDao {

	public String savePetiton(Petitioner petitioner, String compid);
	public List<Petitioner> getPetitions(String userid);
	public String createPetitionId(String type);
}
