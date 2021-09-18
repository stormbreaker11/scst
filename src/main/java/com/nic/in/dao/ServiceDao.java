package com.nic.in.dao;



import com.nic.in.model.Login;
import com.nic.in.model.Petition;
import com.nic.in.model.Service;

public interface ServiceDao {

	public int saveServicePetition(Service s, Login login, String pid);
	
	public String createServicePetitionId(String type);

	public Petition getPetition(String pid, String petid);

	public Service getSerivePetiton(String petition);

	public int updateServiceAppeal(Service service, Login login);

}
