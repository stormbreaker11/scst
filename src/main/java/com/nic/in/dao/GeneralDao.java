package com.nic.in.dao;

import com.nic.in.model.General;
import com.nic.in.model.Login;
import com.nic.in.model.Petition;

public interface GeneralDao {
	public int saveGeneralPetition(General general, Login login, String petitionID);

	public Petition getPetition(String petitionerId, String pid);

	public General getGeneralPetition(String appeal);

	public int updateGeneral(General g, Login login);
}
