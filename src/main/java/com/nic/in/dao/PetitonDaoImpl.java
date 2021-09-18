package com.nic.in.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
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

import com.nic.in.model.Login;
import com.nic.in.model.Petition;
import com.nic.in.model.Petitioner;
import com.nic.in.util.Date_Id_generator;

@Repository
public class PetitonDaoImpl implements PetitionDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Autowired
	private NamedParameterJdbcTemplate namedParameterJdbcTemplate;

	//petitioner registration
	@Override
	public int savePetiton(Petitioner petitioner, String compid) {

		int save = 0;
		
		try {

		String sql = "INSERT INTO petitioner(petitioner_id, userid, is_petitioner, pr_name, age, gender, "
				+ "pr_caste, relation_type, relation_name, address, pincode, pr_mobile, "
				+ "pr_email, district, mandal, village, pr_id_type, pr_id_no, pr_photo, "
				+ "pr_signature, b_pr_name, b_pr_profession, b_pr_address, b_pr_mobile, "
				+ "b_pr_email, b_pr_id_type, b_pr_id_no, b_pr_signature, entry_date) "

				+ "VALUES (:petitioner_id, :userid, :is_petitioner,:pr_name,:age, "
				+ " :gender, :pr_caste, :relation_type, :relation_name, :address, :pincode,  "
				+ ":pr_mobile, :pr_email, :district, :mandal, :village, :pr_id_type, :pr_id_no,  "
				+ ":pr_photo, :pr_signature, :b_pr_name, :b_pr_profession, :b_pr_address,  "
				+ ":b_pr_mobile, :b_pr_email, :b_pr_id_type, :b_pr_id_no, :b_pr_signature, now())";

		MapSqlParameterSource map = new MapSqlParameterSource();
		String petitonerId = Date_Id_generator.getPetitonerId();
		
		if(petitonerId.length()==12) { //petitioner id length should be 12 
			map.addValue("is_petitioner", petitioner.getIsPetitioner());
			
			map.addValue("petitioner_id", petitonerId);
			map.addValue("pr_name", petitioner.getPetionerName());
			map.addValue("age", petitioner.getAge());

			map.addValue("gender", petitioner.getGender());
			map.addValue("userid", compid);
			map.addValue("pr_caste", petitioner.getCaste());
			map.addValue("relation_type", petitioner.getRelationType());
			map.addValue("relation_name", petitioner.getRelationName());
			map.addValue("address", petitioner.getAddress());
			map.addValue("pincode", petitioner.getPincode());
			map.addValue("pr_mobile", petitioner.getPrMobile());
			map.addValue("pr_email", petitioner.getPrMail());
			map.addValue("district", Integer.parseInt(petitioner.getDistrict()));
			map.addValue("mandal", petitioner.getMandal());
			map.addValue("village", petitioner.getVillage());
			map.addValue("pr_id_type", "2");
			map.addValue("pr_id_no", "1");
			map.addValue("pr_photo", petitioner.getPrPhoto());
			map.addValue("pr_signature", petitioner.getPrSign());
		
			//Y is for self, N is for on behalf petitioner registration
			if (petitioner.getIsPetitioner().equals("Y")) {  
				map.addValue("b_pr_name", null);
				map.addValue("b_pr_profession", null);
				map.addValue("b_pr_address", null);
				map.addValue("b_pr_mobile", null);
				map.addValue("b_pr_email", null);
				map.addValue("b_pr_id_type", null);
				map.addValue("b_pr_id_no", null);
				map.addValue("b_pr_signature", null);
			}
			
			else {
				map.addValue("b_pr_name", petitioner.getBprName());
				map.addValue("b_pr_profession", petitioner.getBprProfession());
				map.addValue("b_pr_address", petitioner.getBprAddress());
				map.addValue("b_pr_mobile", petitioner.getBprMobile());
				map.addValue("b_pr_email", petitioner.getBprMail());
				map.addValue("b_pr_id_type", petitioner.getBprProofId());
				map.addValue("b_pr_id_no", petitioner.getBprProofNo());
				map.addValue("b_pr_signature", petitioner.getBprSign());
				
			}
			int update = namedParameterJdbcTemplate.update(sql, map);
			if (update == 1) {
				petitioner.setPetionerId(petitonerId);
				save=1;
			}
			
		}
		
		} catch (Exception e) {
			e.printStackTrace();
			save = 0;
		}

		return save;

	}

	
	// generating Petition id
	@Override
	public String createPetitionId(String pid, String type) {

		/*
		 * Date date = new Date(); int year = date.getYear() + 1900;
		 */
		
		Calendar cal=Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);
		String idGenerate = "";
		try {
			
			
		String sql = "select count(*) from petition_master where substring(petition_id from 3 for 4) =?"; //petition id 3 for 4 gives year eg 2021
		
		
			int petitionId = jdbcTemplate.queryForObject(sql, new Object[] {String.valueOf(year)}, Integer.class);

			if (petitionId > 0) {
			
				String sqlMax = "select max(right(petition_id, 4)) as pid from petition_master where  "
						+ "substring(petition_id from 3 for 4)=?";
				
				idGenerate = "";
				String newid = jdbcTemplate.queryForObject(sqlMax, new Object[] { String.valueOf(year) }, String.class);
				// idGenerate = PetitionIdGenerator.idGenerate(queryForObject, type);

				if (!newid.equals("")) {
					String yearAndId=year+newid; // gives eg. 2021+maxid from table
					int increment = Integer.parseInt(yearAndId);
					increment++;
					if (type.equals("I")) {
						idGenerate = "PI"+increment; 
					}
					if (type.equals("G")) {
						idGenerate = "PG"+increment;
					}
				} 
				
			} else {
			
				if (type.equals("I")) {
					idGenerate = "P" + type + year + "0001";
				}
				if (type.equals("G")) {
					idGenerate = "P" + type + year + "0001";
				}
				
			}

		} catch (Exception e) {
			e.printStackTrace();
			idGenerate = "";
		}
		return idGenerate;
	}

	/*
	 * public String createPetition(String type) {
	 * 
	 * 
	 * String sql = "select max(right(petition_id, 8)) " +
	 * "as pid from petition_master"; String idGenerate = ""; try { String
	 * queryForObject = jdbcTemplate.queryForObject(sql, String.class); idGenerate =
	 * PetitionIdGenerator.idGenerate(queryForObject, type); } catch (Exception e) {
	 * e.printStackTrace(); idGenerate = ""; } return idGenerate; }
	 */
	//inserting petition details into petition_master table upon fresh registration 
	
	
	@Override
	public int insertPetition(Petition petition, Login login) {
		int status = 0;

		try {
			String sql = "select count(*) from petition_master where petition_type=? and petition_category=? and petitioner_id=?";
			int count = jdbcTemplate.queryForObject(sql,
					new Object[] { petition.getPetitionType(), petition.getPetitionCat(), petition.getPetitionerId() }, Integer.class);
			if (count == 0) {
				String queryInsert = "INSERT INTO petition_master( "
						+ " petition_id, petitioner_id, userid, petition_type, petition_category, "
						+ " petition_status, status_date, final_submit, submit_date, entry_date)"
						+ " VALUES (:petition_id, :petitioner_id, :userid, :petition_type, :petition_category, "
						+ ":petition_status, :status_date, :final_submit,"
						+ " :submit_date, now())";
				MapSqlParameterSource map = new MapSqlParameterSource();

				map.addValue("petition_id", petition.getPetitionId());
				map.addValue("petitioner_id", petition.getPetitionerId());
				map.addValue("userid", login.getCompid());
				map.addValue("petition_type", petition.getPetitionType());
				map.addValue("petition_category", petition.getPetitionCat());
				map.addValue("petition_status", "1");
				map.addValue("status_date", new Date());
				map.addValue("final_submit", "N");
				map.addValue("submit_date", new Date());

				int update = namedParameterJdbcTemplate.update(queryInsert, map);

				if (update == 1) {
					status = 1;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			status = 0;
		}
		return status;
	}

	//fetching petitions details by userid 
	@Override
	public List<Petition> getSubmittedPetition(String compid) {

		String quer = "SELECT petitioner_id, petition_id, petition_type, petition_category, submit_date, final_submit from"
				+ " petition_master pm where userid=?";
		Object[] eduParam = new Object[] { compid };
		List<Petition> plist = jdbcTemplate.query(quer, eduParam, new RowMapper<Petition>() {
			public Petition mapRow(ResultSet rs, int rownumber) throws SQLException {
				Petition p = new Petition();
				p.setPetitionerId(rs.getString("petitioner_id"));
				p.setPetitionId(rs.getString("petition_id"));
				p.setSubmit(rs.getString("submit_date"));
				p.setPetitionType(rs.getString("petition_type"));
				p.setPetitionCat(rs.getString("petition_category"));
				p.setFinalsubmit(rs.getString("final_submit"));
				p.setPetitionFormat(p.getPetitionId().substring(0,2)+"/"+p.getPetitionId().substring(2,6)+"/"+p.getPetitionId().substring(6,10));
				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
				Date fechaNueva;
				try {
					fechaNueva = format.parse(p.getSubmit());
					format = new SimpleDateFormat("dd-MM-YYYY");
					p.setSubmit(format.format(fechaNueva));
				} catch (ParseException e) {
					e.printStackTrace();
				}
				return p;
			}
		});
		return plist;
	}


	@Override
	public int submitPetition(String petitioner, String petiId) {
		
		
		int update = 0;
		String sql = "update petition_master set final_submit=:final_submit,"
				+ " submit_date=:submit_date where petitioner_id=:petitioner_id and petition_id=:petition_id  ";

		try {
			MapSqlParameterSource map = new MapSqlParameterSource();
			map.addValue("final_submit", "Y");
			map.addValue("submit_date", Date_Id_generator.dateFormat());
			map.addValue("petitioner_id", petitioner);
			map.addValue("petition_id", petiId);
			update = namedParameterJdbcTemplate.update(sql, map);
			
			if(update==1) {
				String petsql = "update petitioner set petition_id=? where petitioner_id=?";
				int change= jdbcTemplate.update(petsql, new Object[] {petiId, petitioner } );		
						if(change==1) {
							update=1;
						}else {
							update=0;
						}
				
			}
		} catch (Exception e) {
			e.printStackTrace();
			update = 0;
		}

		return update;
	}


	@Override
	public List<Petition> getEvedince(String pid, String petid) {
		
		String quer = "SELECT doc_desc, doc_pdf from evidence"
				+ " where petition_id=? and petitioner_id=?";
		Object[] param = new Object[] { petid,pid};
		List<Petition> plist = jdbcTemplate.query(quer, param, new RowMapper<Petition>() {
			public Petition mapRow(ResultSet rs, int rownumber) throws SQLException {
				Petition p = new Petition();
				p.setDocdesc(rs.getString("doc_desc"));
				return p;
			}
		});
		return plist;
	}

	


	
	
	
}
