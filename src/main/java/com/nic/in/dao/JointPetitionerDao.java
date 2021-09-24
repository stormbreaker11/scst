package com.nic.in.dao;

import java.util.List;

import com.nic.in.model.Login;
import com.nic.in.model.Petitioner;

public interface JointPetitionerDao {

	public int addJointPetitioner(Petitioner petitioner, Login login, String pid);

	public Petitioner getSign(String pid, String docno);

	public int deleteSign(String doccode, String petitionerId);
	public List<Petitioner> getJointPetioners(String pid); 

}
