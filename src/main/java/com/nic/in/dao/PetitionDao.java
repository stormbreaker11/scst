package com.nic.in.dao;

import java.util.List;

import com.nic.in.model.Login;
import com.nic.in.model.NodalOfficer;
import com.nic.in.model.Petition;
import com.nic.in.model.Petitioner;

public interface PetitionDao {

	public int savePetiton(Petitioner petitioner, String compid);

	public String createPetitionId(String pid, String type);

	public int insertPetition(Petition petition,  Login login);

	public List<Petition> getSubmittedPetition(String compid);

	public int submitPetition(String petitionerId, String pid);

	public List<Petition> getEvedince(String pid, String petid);

	public Petition getPetitionDetails(String petition);
	
	public int updateNodal(Petition petition, String pid);

}
