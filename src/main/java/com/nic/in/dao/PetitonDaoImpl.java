package com.nic.in.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.nic.in.model.Petitioner;
import com.nic.in.util.Date_Id_generator;
import com.nic.in.util.PetitionIdGenerator;

@Repository
public class PetitonDaoImpl implements PetitionDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;


	@Autowired
	private NamedParameterJdbcTemplate namedParameterJdbcTemplate;
	
	@Override
	public String savePetiton(Petitioner petitioner, String compid) {
		
		String save="";
		String petioner="";
		String sql="INSERT INTO petitioner(petitioner_id, userid, is_petitioner, pr_name, age, gender, "
				+ "pr_caste, relation_type, relation_name, address, pincode, pr_mobile, "
				+ "pr_email, district, mandal, village, pr_id_type, pr_id_no, pr_photo, "
				+ "pr_signature, b_pr_name, b_pr_profession, b_pr_address, b_pr_mobile, "
				+ "b_pr_email, b_pr_id_type, b_pr_id_no, b_pr_signature, entry_date) "
				
				+ "VALUES (:petitioner_id, :userid, :is_petitioner,:pr_name,:age, "
				+ " :gender, :pr_caste, :relation_type, :relation_name, :address, :pincode,  "
				+ ":pr_mobile, :pr_email, :district, :mandal, :village, :pr_id_type, :pr_id_no,  "
				+ ":pr_photo, :pr_signature, :b_pr_name, :b_pr_profession, :b_pr_address,  "
				+ ":b_pr_mobile, :b_pr_email, :b_pr_id_type, :b_pr_id_no, :b_pr_signature, now())";
		
		MapSqlParameterSource map=new MapSqlParameterSource();
		String petitonerId = Date_Id_generator.getPetitonerId();
		map.addValue("is_petitioner", petitioner.getIsPetitioner());
		if(petitioner.getIsPetitioner().equals("Y")) {
			map.addValue("petitioner_id", petitonerId);
			//map.addValue("petition_id", generatePetionId());
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
			map.addValue("petitioner_id", petitonerId);
			//map.addValue("petition_id", generatePetionId());
			map.addValue("pr_name", petitioner.getBprpetionerName());
			map.addValue("age", petitioner.getBprage());
			map.addValue("userid", compid);
			map.addValue("gender", petitioner.getBprgender());
			map.addValue("pr_caste", petitioner.getBprcaste());
			map.addValue("relation_type", petitioner.getBprrelationType());
			map.addValue("relation_name", petitioner.getBprrelationName());
			map.addValue("address", petitioner.getBpraddress());
			map.addValue("pincode", petitioner.getBprpincode());
			map.addValue("pr_mobile", petitioner.getBprprMobile());
			map.addValue("pr_email", petitioner.getBprprMail());
			map.addValue("district", Integer.parseInt(petitioner.getBprdistrict()));
			map.addValue("mandal", petitioner.getBprmandal());
			map.addValue("village", petitioner.getBprvillage());
			map.addValue("pr_id_type", petitioner.getBprprProofType());
			map.addValue("pr_id_no", petitioner.getBprprProofId());
			map.addValue("pr_photo", petitioner.getBprprPhoto());
			map.addValue("pr_signature", petitioner.getBprprSign());
			map.addValue("b_pr_name", petitioner.getBprName());
			map.addValue("b_pr_profession", petitioner.getBprProfession());
			map.addValue("b_pr_address", petitioner.getBprAddress());
			map.addValue("b_pr_mobile", petitioner.getBprMobile());
			map.addValue("b_pr_email", petitioner.getBprMail());
			map.addValue("b_pr_id_type", petitioner.getBprProofId());
			map.addValue("b_pr_id_no", petitioner.getBprProofNo());
			map.addValue("b_pr_signature", petitioner.getBprSign());
			
		}
		
		try {
			
			int update = namedParameterJdbcTemplate.update(sql, map);
			if(update==1) {
				save = petitonerId;
			}
		}
		catch (Exception e) {
			e.printStackTrace();
			save="";
		}
		
		return save;
		
	}

	@Override
	public List<Petitioner> getPetitions(String userid) {
		
		String quer = "SELECT petitioner_id,is_petitioner,pr_name,age,gender, entry_date from petitioner where petition_id is null and userid=?";
		Object[] eduParam = new Object[] { userid };
		List<Petitioner> plist = jdbcTemplate.query(quer, eduParam, new RowMapper<Petitioner>(){
			public Petitioner mapRow(ResultSet rs, int rownumber) throws SQLException {
				Petitioner p = new Petitioner();
				p.setPetionerId(rs.getString("petitioner_id"));
				p.setIsPetitioner(rs.getString("is_petitioner"));
				p.setPetionerName(rs.getString("pr_name"));
				p.setAge(rs.getString("age"));
				p.setGender(rs.getString("gender"));
				p.setEntry(rs.getString("entry_date"));
		      
		        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		        Date fechaNueva;
				try {
					fechaNueva = format.parse(p.getEntry());
					format = new SimpleDateFormat("dd/MM/YYYY");
			        p.setEntry(format.format(fechaNueva));		
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		        
				return  p;
			}
		});
		return plist;
	}

	@Override
	public String createPetitionId(String type) {
		String sql = "select max(right(petition_id, 8)) as pid from petitioner";
		String idGenerate = "";
		try {
			String queryForObject = jdbcTemplate.queryForObject(sql, String.class);
		 idGenerate = PetitionIdGenerator.idGenerate(queryForObject, type);
		} catch (Exception e) {
			e.printStackTrace();
			idGenerate = "";
		}
		return idGenerate;
	}
}
