package com.nic.in.dao;

import com.nic.in.model.Login;
import com.nic.in.model.Petitition_Land;

public interface LandDao {

	public int saveLandPetition(Petitition_Land land, Login login, String pid);
}
