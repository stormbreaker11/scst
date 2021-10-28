package com.nic.in.dao;

import java.util.List;

import com.nic.in.model.Petitioner;

public interface PetitionerDao {
	public Petitioner getDocs(String pid);
	public List<Petitioner> getPetitions(String userid);
	public int checkSelfEntry(String compid);
}
