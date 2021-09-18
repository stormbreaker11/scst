package com.nic.in.dao;

import java.util.List;

import com.nic.in.model.Land;
import com.nic.in.model.Login;
import com.nic.in.model.Petition;
import com.nic.in.model.Petitition_Land;

public interface LandDao {

	public int saveLandPetition(Petitition_Land land, Login login, String pid);

	public int addLand(Land land, Login login, String pid);

	public List<Land> getLanddetailssByPetition(String petId);

	public int deleteLand(String landcode, String petitionerId);

	public Petitition_Land getLandAppeal(String petition);

	public Land landdetails(String landcode, String petitionerId);

	public int updateLand(Land land, Login login);
	public Petition getPetition(String petitionerId, String pid);

	public int updateLandAppeal(Petitition_Land land, Login login);
}
