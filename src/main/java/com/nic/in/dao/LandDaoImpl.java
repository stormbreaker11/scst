package com.nic.in.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.nic.in.model.Login;
import com.nic.in.model.Petitition_Land;

@Repository
public class LandDaoImpl implements LandDao {

	@Autowired
	private NamedParameterJdbcTemplate namedParameterJdbcTemplate;
	
	
	@Override
	public int saveLandPetition(Petitition_Land land, Login login, String pid) {
		
		int save=0;
		
		
		String sql="INSERT INTO land_appeal(petition_id, petitioner_id, userid, land_kind, land_type, appeal,pet_detail, comp_in_court,"
				+ " court_name, court_state, court_dist, court_mandal,"
				+ " case_no, case_status, entry_date)"
				+ "VALUES (:petition_id,:petitioner_id,:userid, :land_kind, :land_type, :appeal,:pet_detail, :comp_in_court,"
				+ ":court_name,:court_state,:court_dist,:court_mandal,:case_no,:case_status, now() )";
	
		MapSqlParameterSource map= new MapSqlParameterSource();
		
		map.addValue("petition_id", pid);
		map.addValue("petitioner_id", land.getPetitionerId());
		map.addValue("userid", pid);
		map.addValue("appeal", land.getAppeal());
		map.addValue("pet_detail", land.getPet_detail());
		map.addValue("comp_in_court", land.getCourtComp());
		map.addValue("land_kind", "1");
		map.addValue("land_type", "2");
		
		if(land.getCourtComp().equals("Y")) {
			map.addValue("court_name", land.getCourtName());
			map.addValue("court_state", Integer.parseInt(land.getCourtState()));
			map.addValue("court_dist", Integer.parseInt(land.getCourtDist()));
			map.addValue("court_mandal", Integer.parseInt(land.getCourtMandal()));
			map.addValue("case_no", land.getCaseNo());
			map.addValue("case_status", land.getCaseStatus());
			
		}else {
			
			map.addValue("court_name", null);
			map.addValue("court_state", null);
			map.addValue("court_dist", null);
			map.addValue("court_mandal", null);
			map.addValue("case_no", null);
			map.addValue("case_status", null);
		}
		try {
			save= namedParameterJdbcTemplate.update(sql, map);
		}
		catch (Exception e) {
			e.printStackTrace();
			save=0;
		}
		
		return save;
	}

}
