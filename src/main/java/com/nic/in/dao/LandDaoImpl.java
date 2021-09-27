package com.nic.in.dao;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;
import com.nic.in.model.Land;
import com.nic.in.model.Login;
import com.nic.in.model.Petition;
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
		
		try {
		String sql="INSERT INTO land_appeal(petition_id, petitioner_id, userid, appeal,pet_detail, comp_in_court,"
				+ " court_name, court_state, court_dist, court_mandal,"
				+ " case_no, case_status, entry_date)"
				+ "VALUES (:petition_id,:petitioner_id,:userid, :appeal,:pet_detail, :comp_in_court,"
				+ ":court_name,:court_state,:court_dist,:court_mandal,:case_no,:case_status, now() )";
	
		MapSqlParameterSource map= new MapSqlParameterSource();
		
		map.addValue("petition_id", pid);
		map.addValue("petitioner_id", land.getPetitionerId());
		map.addValue("userid", login.getCompid());
		map.addValue("appeal", land.getAppeal());
		map.addValue("pet_detail", land.getPet_detail());
		map.addValue("comp_in_court", land.getCourtComp());
	
		
		if(land.getCourtComp().equals("Y")) {
			map.addValue("court_name", land.getCourtName());
			map.addValue("court_state", Integer.parseInt(land.getCourtState()));
			map.addValue("court_dist", Integer.parseInt(land.getCourtDist()));
			map.addValue("court_mandal", land.getCourtMandal());
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
		
			
			save= namedParameterJdbcTemplate.update(sql, map);
			if(save==1) {
				save=1;
			}
			else {
				save=0;
			}
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
		map.addValue("petition_id", land.getPetitionId());
		map.addValue("petitioner_id", land.getPetitionerId());
		map.addValue("userid", login.getCompid());
		map.addValue("land_kind", land.getLandKind());
		map.addValue("land_type", land.getLandType());
		map.addValue("land_srno", generateLandSrNo);
		map.addValue("district", land.getLandDistrict());
		map.addValue("mandal", land.getLandmandal());
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


	



	@Override
	public Petitition_Land getLandAppeal(String petition) {
		
		
		
		String query="select appeal, pet_detail, comp_in_court, court_name,court_state, s.sname, court_dist, d.dname, court_mandal, case_no, case_status from "
				+ " land_appeal, state s, district d where court_state=s.scode and court_dist=d.dcode and petition_id=?";
		Petitition_Land land= new Petitition_Land();
		
		return jdbcTemplate.query(query, new Object[] {petition}, new ResultSetExtractor<Petitition_Land>() {
			public Petitition_Land extractData(ResultSet rs) throws SQLException, DataAccessException {
				if (rs.next()) {
				
					land.setAppeal(rs.getString("appeal"));
					land.setPet_detail(rs.getString("pet_detail"));
					land.setCourtComp(rs.getString("comp_in_court"));
					land.setCourtName(rs.getString("court_name"));
					land.setCourtState(rs.getString("sname"));
					land.setCourtDist(rs.getString("dname"));
					land.setCourtMandal(rs.getString("court_mandal"));
					land.setCaseNo(rs.getString("case_no"));
					land.setCaseStatus(rs.getString("case_status"));
					land.setCourtStateCode(rs.getString("court_state"));
					land.setCourtDistCode(rs.getString("court_dist"));
					/*
					 * String pid=pl.getPetitionId().substring(0,
					 * 2)+"/"+pl.getPetitionerId().substring(2,
					 * 6)+"/"+pl.getPetitionerId().substring(6, 10); pl.setPetitionId(pid);
					 */
				}
				return land;

			}
		});
	}


	@Override
	public Land landdetails(String landcode, String petitionerId) {
		
		String sql="SELECT land_kind, land_type, "
				+ "       land_srno, district, mandal, village, passbook_no, survey_no, "
				+ "       extent_land, land_units from land_detail where land_srno=? and petitioner_id=?";
		
		
		Land pl= new Land();

		return jdbcTemplate.query(sql, new Object[] {Integer.parseInt(landcode), petitionerId}, new ResultSetExtractor<Land>() {
			public Land extractData(ResultSet rs) throws SQLException, DataAccessException {
				if (rs.next()) {
					pl.setLandKind(rs.getString("land_kind"));
					pl.setLandType(rs.getString("land_type"));
					pl.setLandId(rs.getInt("land_srno"));
					pl.setLandDistrict(rs.getString("district"));
					pl.setLandmandal(rs.getInt("mandal"));
					pl.setLandvillage(rs.getString("village"));
					pl.setPassbookNo(rs.getString("passbook_no"));
					pl.setSurveyNo(rs.getString("survey_no"));
					pl.setExtentOfLand(String.valueOf(rs.getInt("extent_land")));
					pl.setUnits(rs.getString("land_units"));
					
				}
				return pl;

			}
		});
	}


	@Override
	public int updateLand(Land land, Login login) {
		
		int update=0;
		String sql="UPDATE land_detail "
				   + " SET  land_kind=:land_kind, "
					   + "    land_type=:land_type,  district=:district, mandal=:mandal, village=:village, passbook_no=:passbook_no, "
					   + "    survey_no=:survey_no, extent_land=:extent_land, land_units=:land_units, action_date=now(), "
					   + "  action_userid=:action_userid where land_srno=:land_srno and petition_id=:petition_id";
		
		
		MapSqlParameterSource map = new MapSqlParameterSource();
		
		try {
			
			map.addValue("land_type", land.getLandType());
			map.addValue("land_kind", land.getLandKind());
			map.addValue("district", land.getLandDistrict());
			map.addValue("mandal", land.getLandmandal());
			map.addValue("village", land.getLandvillage());
			map.addValue("passbook_no", land.getPassbookNo());
			map.addValue("survey_no", land.getSurveyNo());
			map.addValue("extent_land", new BigDecimal(land.getExtentOfLand()));
			map.addValue("land_units", land.getUnits());
			map.addValue("action_userid", login.getCompid());
			map.addValue("land_srno", land.getLandId());
			map.addValue("petition_id", land.getPetitionId());
			
			
			update = namedParameterJdbcTemplate.update(sql, map);
			if(update==1) {
				update=1;
			}
		}
		catch (Exception e) {
			e.printStackTrace();
			update=0;
		}
		return update;
	}



	@Override
	public Petition getPetition(String petitionerId, String pid) {
		
		String sql="SELECT pm.petition_id, pm.petitioner_id,  pm.submit_date, pr.pr_name, pr.pr_caste, pr.address, pr.pr_photo,  pr.pr_signature, "
				+ "	pr.pr_mobile, pr.pr_email, pr.mandal, d.dname, pr.village, "
				+ "	pm.petition_type, pm.petition_category, pm.submit_date, "
				+ "	la.appeal,la.pet_detail from petitioner  pr, district d, "
				+ "	petition_master pm, land_appeal la "
				+ "	where pr.petitioner_id=? and pr.petitioner_id=la.petitioner_id "
				+ " and la.petition_id=pm.petition_id and d.dcode=pr.district "
				+ "	and pm.petition_id=?";

		Petition pl= new Petition();

		return jdbcTemplate.query(sql, new Object[] {petitionerId, pid}, new ResultSetExtractor<Petition>() {
			public Petition extractData(ResultSet rs) throws SQLException, DataAccessException {
				if (rs.next()) {
					pl.setPetitionerId(rs.getString("petitioner_id"));
					pl.setPetitionId(rs.getString("petition_id"));
					pl.setPetitionerName(rs.getString("pr_name"));
					pl.setPetitionCat(rs.getString("petition_category"));
					pl.setPetitionType(rs.getString("petition_type"));
					pl.setCaste(rs.getString("pr_caste"));
					pl.setMobile(rs.getString("pr_mobile"));
					pl.setEmail(rs.getString("pr_email"));
					pl.setDistrict(rs.getString("dname"));
					pl.setMandal(rs.getString("mandal"));
					pl.setVillage(rs.getString("village"));
					pl.setAppeal(rs.getString("appeal"));
					pl.setCourtPet(rs.getString("pet_detail"));
					
					pl.setSubmit(rs.getString("submit_date"));
					pl.setPhoto(rs.getBytes("pr_photo"));
					pl.setSign(rs.getBytes("pr_signature"));
					String pid=pl.getPetitionId().substring(0, 2)+"/"+pl.getPetitionId().substring(2, 6)+"/"+pl.getPetitionId().substring(6, 10);
					pl.setPetitionFormat(pid);
					SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
					Date fechaNueva;
						try {
							fechaNueva = format.parse(pl.getSubmit());
							format = new SimpleDateFormat("dd-MM-YYYY");
							pl.setSubmit(format.format(fechaNueva));
						} catch (ParseException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
				}
				return pl;

			}
		});
	}


	@Override
	public int updateLandAppeal(Petitition_Land land, Login login) {
		
		int update = 0;
		try {
			
			
			String countQuery="select count(*) from land_appeal where petition_id=?";
			
			int count=jdbcTemplate.queryForObject(countQuery, new Object[] {land.getPetitionId()}, Integer.class);
			
			if(count==0) {
				
				int saveLandPetition = saveLandPetition(land, login, land.getPetitionId());
				if(saveLandPetition==1) {
					update=1;
				}
			}
			else {
				
				String updateQuery = "UPDATE land_appeal SET appeal=:appeal, pet_detail=:pet_detail, "
						+ " comp_in_court=:comp_in_court, court_name=:court_name, court_state=:court_state, "
						+ "court_dist=:court_dist, court_mandal=:court_mandal, case_order=:case_order, "
						+ " case_no=:case_no, case_status=:case_status, action_date=now(), action_userid=:action_userid where petition_id=:petition_id ";

				MapSqlParameterSource map = new MapSqlParameterSource();
				map.addValue("petition_id", land.getPetitionId());
				map.addValue("appeal", land.getAppeal());
				map.addValue("pet_detail", land.getPet_detail());
				map.addValue("comp_in_court", land.getCourtComp());
				map.addValue("action_userid", login.getCompid());

				if (land.getCourtComp().equals("Y")) // Court complaint --- Yes
				{
					map.addValue("court_name", land.getCourtName());
					map.addValue("court_state", Integer.parseInt(land.getCourtState()));
					map.addValue("court_dist", Integer.parseInt(land.getCourtDist()));
					map.addValue("court_mandal", land.getCourtMandal());
					map.addValue("case_no", land.getCaseNo());
					map.addValue("case_status", land.getCaseStatus());
					map.addValue("case_order", land.getCourtOrder());

				} else {

					map.addValue("court_name", null);
					map.addValue("court_state", null);
					map.addValue("court_dist", null);
					map.addValue("court_mandal", null);
					map.addValue("case_no", null);
					map.addValue("case_status", null);
					map.addValue("case_order", null);

				}

				update = namedParameterJdbcTemplate.update(updateQuery, map);	
				
			}
		}

		catch (Exception e) {
			update = 0;
			System.out.print(e.getMessage());
		}
		
		
		return update;
	}
}
