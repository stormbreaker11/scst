package com.nic.in.dao;

import java.util.List;

import com.nic.in.model.Land;
import com.nic.in.model.Login;
import com.nic.in.model.Petitition_Land;

public interface LandDao {

	public int saveLandPetition(Petitition_Land land, Login login, String pid);

	public int addLand(Land land, Login login, String pid);

	public List<Land> getLanddetailssByPetition(String petId);

	public int deleteLand(String landcode, String petitionerId);
}
