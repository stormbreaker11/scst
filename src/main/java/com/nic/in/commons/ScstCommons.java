package com.nic.in.commons;

import java.util.List;

import com.nic.in.model.Atrocity;
import com.nic.in.model.Caste;
import com.nic.in.model.Category;
import com.nic.in.model.District;
import com.nic.in.model.Identity;
import com.nic.in.model.Land;
import com.nic.in.model.Relation;
import com.nic.in.model.State;

public interface ScstCommons {

	public List<Identity> getIdentities();

	public List<District> getDistrict(String scode);

	public List<State> getStates();

	public List<Atrocity> getAtrocities();

	public List<Relation> getRelations();

	public List<Caste> getCastes(String id);

	public List<Category> getCategories();

	public List<Land> getLands();

	public List<Land> getLandTypes();
}
