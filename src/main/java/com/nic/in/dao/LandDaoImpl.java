package com.nic.in.dao;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.nic.in.model.Land;
import com.nic.in.model.Login;
import com.nic.in.model.Petitition_Land;

@Repository
public class LandDaoImpl implements LandDao {

	@Autowired
	private NamedParameterJdbcTemplate namedParameterJdbcTemplate;
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	
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


	@Override
	public int addLand(Land land, Login login, String pid) {
		int save=0;
		String sql="INSERT INTO land_detail( row_id, petition_id, petitioner_id, userid, land_srno, land_kind, land_type, district,mandal, "
				+ " village, passbook_no, survey_no, extent_land, land_units,entry_date)"
				+ " VALUES (:row_id,:petition_id,:petitioner_id,:userid,:land_srno, :land_kind, :land_type, :district,:mandal, :village, "
				+ ":passbook_no, :survey_no, :extent_land, :land_units, now())";
		MapSqlParameterSource map = new MapSqlParameterSource();
		int generateLandSrNo = generateLandSrNo();
		map.addValue("row_id", generateRowIdForLand());
		map.addValue("petition_id", pid);
		map.addValue("petitioner_id", land.getPetitionerId());
		map.addValue("userid", login.getCompid());
		map.addValue("land_kind", land.getLandKind());
		map.addValue("land_type", land.getLandType());
		map.addValue("land_srno", generateLandSrNo);
		map.addValue("district", land.getLandDistrict());
		map.addValue("mandal", Integer.parseInt(land.getLandmandal()));
		map.addValue("village", land.getLandvillage());
		map.addValue("passbook_no", land.getPassbookNo());
		map.addValue("survey_no", land.getSurveyNo());
		map.addValue("extent_land", new BigDecimal(land.getExtentOfLand()));
		map.addValue("land_units", land.getUnits());
		
		try {
			save=namedParameterJdbcTemplate.update(sql, map);
			if(save==1) {
				save=generateLandSrNo;
			}
		}
		catch (Exception e) {
		e.printStackTrace();
		save=0;
		}
		
		return save;
	}
	//generating rowid 
	public int generateRowIdForLand() {
		String query = "SELECT coalesce(max(row_id),0) from land_detail";
		int maxid = 0;
		try {
			int id = jdbcTemplate.queryForObject(query, Integer.class);
			if (id==0) {
				maxid =1;
			} else {
				maxid = id+1;
			}
		} catch (Exception e) {
			e.printStackTrace();
			maxid = 0;
		}
		return maxid;
	}
	//generating serial number for land details
	public int generateLandSrNo() {
		String query = "SELECT coalesce(max(land_srno),0) from land_detail";
		int maxid = 0;
		try {
			int id = jdbcTemplate.queryForObject(query, Integer.class);
			if (id==0) {
				maxid =1;
			} else {
				maxid = id+1;
			}
		} catch (Exception e) {
			e.printStackTrace();
			maxid = 0;
		}
		return maxid;
	}


	//fetching land details by petitioner
	@Override
	public List<Land> getLanddetailssByPetition(String petId) {
	
	
		String query = "select lt.land__type_name, lk.land_name, survey_no, passbook_no, d.extent_land, d.land_units, "
				+ " land_srno from land_detail d, land_type lt,   "
				+ " land_kind lk where lt.land_type_code=d.land_type and lk.land_code=d.land_kind and  petition_id=?";

		
		List<Land> lands = jdbcTemplate.query(query, new Object[] {petId}, new RowMapper<Land>() {
			public Land mapRow(ResultSet rs, int rownumber) throws SQLException {
				Land land = new Land();
				
				land.setLandId(Integer.parseInt(rs.getString("land_srno")));
				land.setLandType(rs.getString("land__type_name"));
				land.setLandKind(rs.getString("land_name"));
				land.setSurveyNo(rs.getString("survey_no"));
				land.setPassbookNo(rs.getString("passbook_no"));
				land.setExtentOfLand(rs.getString("extent_land"));
				land.setUnits(rs.getString("land_units"));
				
				return land;
			}
		});
		return lands;
	}


	@Override
	public int deleteLand(String landcode, String petitionerId) {
		
		String sql="delete from land_detail where land_srno=? and petitioner_id=?";
		int delete=0;
		try {
			delete = jdbcTemplate.update(sql, new Object[] {Integer.parseInt(landcode), petitionerId } );
		}
		catch (Exception e) {
			delete=0;
			e.printStackTrace();
		}
		return delete;
	}
}
