package com.nic.in.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;
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
import com.nic.in.model.Respondent;

@Repository
public class RespondentDaoImpl implements RespondentDao {

	@Autowired
	private NamedParameterJdbcTemplate namedParameterJdbcTemplate;

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public int addRepondent(Respondent respondent, Login login) {

		int save = 0;

		String sql = "INSERT INTO petition_respondent(row_id, petition_id, petitioner_id, userid, resp_srno,"
				+ " resp_type, resp_profession, resp_name, resp_caste, address,"
				+ " resp_mobile,resp_email,district, entry_date) "
				+ " VALUES (:row_id, :petition_id, :petitioner_id, :userid, :resp_srno, :resp_type,:resp_profession, "
				+ ":resp_name, :resp_caste, :address, :resp_mobile, :resp_email, :district, now())";

		MapSqlParameterSource map = new MapSqlParameterSource();
		try {
		
		int generateRespSrNo = generateRespSrNo(respondent.getPetition());
		map.addValue("row_id", generateRowIdForRespondent());
		if(generateRowIdForRespondent()!=0) {
			map.addValue("petition_id", respondent.getPetition());
			map.addValue("petitioner_id", respondent.getPetitionerId());
			map.addValue("userid", login.getCompid());
			map.addValue("resp_srno", generateRespSrNo);
			map.addValue("resp_type", respondent.getRespType());
			map.addValue("resp_type", respondent.getRespType());
			map.addValue("resp_profession", respondent.getRespProffesion());
			map.addValue("resp_name", respondent.getRespName());
			if(respondent.getCaste()!=null) {
				map.addValue("resp_caste", respondent.getCaste().trim());	
			}
			else{
				map.addValue("resp_caste", "0");	
			}
			map.addValue("address", respondent.getAddress());
			map.addValue("resp_mobile", respondent.getMobile());
			map.addValue("resp_email", respondent.getEmail());
			map.addValue("district", Integer.parseInt(respondent.getDistrict()));
				save = namedParameterJdbcTemplate.update(sql, map);
				if (save == 1) {
					save = generateRespSrNo;
				}
		}
		} catch (Exception e) {
			e.printStackTrace();
			save = 0;
		}
		return save;
	}

	// generating rowid for respondent table
	public int generateRowIdForRespondent() {
		Calendar cal=Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);
		
		String query = "SELECT coalesce(max(row_id),0) from petition_respondent where substring(cast(row_id  as varchar) from 1 for 4 )=?";
		int maxid = 0;
		try {
			int id = jdbcTemplate.queryForObject(query, new Object[] {String.valueOf(year)}, Integer.class);
			if (id == 0) {
				//String tempid=year+"0001";
				maxid = Integer.parseInt(year+"0001");
			} else {
				maxid = id + 1;
			}
		} catch (Exception e) {
			e.printStackTrace();
			maxid = 0;
		}
		return maxid;
	}

	// generating serial number for respondent details
	public int generateRespSrNo(String petitionid) {

		Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);

		String query = "SELECT coalesce(max(resp_srno),0) from petition_respondent where substring(petition_id from 3 for 4) "
				+ " =? and substring(? from 3 for 4) = ? and petition_id=?";

		int maxid = 0;
		try {
			int id = jdbcTemplate.queryForObject(query,
					new Object[] { petitionid.substring(2, 6), petitionid, String.valueOf(year), petitionid },
					Integer.class);
			if (id == 0) {
				maxid = 1;
			} else {
				maxid = id + 1;
			}
		} catch (Exception e) {
			e.printStackTrace();
			maxid = 0;
		}
		return maxid;
	}

	@Override
	public List<Respondent> getRespondents(String petId) {

		
		String query = "select resp_srno, d.dname, resp_type, resp_profession, resp_caste, "
				+ "resp_name, resp_mobile, resp_email from petition_respondent, district d where petition_id =? and d.dcode=district ";

		
		List<Respondent> respondents = jdbcTemplate.query(query, new Object[] {petId}, new RowMapper<Respondent>() {
			public Respondent mapRow(ResultSet rs, int rownumber) throws SQLException {
				Respondent respondent = new Respondent();
				respondent.setRespName(rs.getString("resp_name"));
				respondent.setRespType(rs.getString("resp_type"));
				respondent.setRespProffesion(rs.getString("resp_profession"));
				respondent.setRespno(rs.getString("resp_srno"));
				respondent.setCaste(rs.getString("resp_caste").trim());
				respondent.setMobile(rs.getString("resp_mobile"));
				respondent.setEmail(rs.getString("resp_email"));
				respondent.setDistrict(rs.getString("dname"));
				boolean equals = respondent.getCaste().equals("0");
				if(equals) {
					respondent.setCaste("-");
				}
				else {
					
					if(respondent.getCaste().equals("1")) {
						
						respondent.setCaste("OC");
					}
					if(respondent.getCaste().equals("2")) {
						
						respondent.setCaste("BC");
					}
					
				}
				
				return respondent;
			}
		});
		return respondents;
	}

	@Override
	public int deleteRespondent(String respcode, String petitionerId) {
		
		String sql="delete from petition_respondent where resp_srno=? and petitioner_id=?";
		int delete=0;
		try {
			delete = jdbcTemplate.update(sql, new Object[] {Integer.parseInt(respcode), petitionerId } );
		}
		catch (Exception e) {
			delete=0;
			e.printStackTrace();
		}
		return delete;
	}

	@Override
	public Respondent getRespondentById(String respcode, String petitionId) {

		String query = "select resp_srno, resp_type, address, resp_profession, resp_caste, "
				+ "resp_name, resp_mobile, resp_email, district from petition_respondent where resp_srno=? and petition_id=?";
		Respondent respondent = new Respondent();

		return jdbcTemplate.query(query, new Object[] { Integer.parseInt(respcode), petitionId }, new ResultSetExtractor<Respondent>() {
			public Respondent extractData(ResultSet rs) throws SQLException, DataAccessException {
				if (rs.next()) {
				respondent.setRespName(rs.getString("resp_name"));
				respondent.setRespType(rs.getString("resp_type"));
				respondent.setRespProffesion(rs.getString("resp_profession"));
				respondent.setRespno(rs.getString("resp_srno"));
				respondent.setCaste(rs.getString("resp_caste"));
				respondent.setMobile(rs.getString("resp_mobile"));
				respondent.setEmail(rs.getString("resp_email"));
				respondent.setDistrict(rs.getString("district"));
				respondent.setAddress(rs.getString("address"));
				}
				return respondent;
			}

		});
	}

	@Override
	public int updateRespondent(String respcode, Respondent respondent, Login login) {
		
		int update=0;
		
		try {
		String sql= "UPDATE petition_respondent "
				 + " SET  resp_type=:resp_type, resp_profession=:resp_profession, resp_name=:resp_name, resp_caste=:resp_caste, address=:address, " 
				 + " resp_mobile=:resp_mobile, resp_email=:resp_email, district=:district, "       
			     + " action_date=now(), action_userid=:action_userid where resp_srno=:resp_srno and petition_id=:petition_id"; 
		
		
		MapSqlParameterSource map= new MapSqlParameterSource();
		map.addValue("resp_type", respondent.getRespType());
		map.addValue("resp_profession", respondent.getRespProffesion());
		map.addValue("resp_name", respondent.getRespName());
		map.addValue("resp_caste", respondent.getCaste());
		map.addValue("address", respondent.getAddress());
		map.addValue("resp_mobile", respondent.getMobile());
		map.addValue("resp_email", respondent.getEmail());
		map.addValue("district", Integer.parseInt(respondent.getDistrict()));
		map.addValue("resp_srno", Integer.parseInt(respcode));
		map.addValue("petition_id", respondent.getPetition());
		map.addValue("action_userid", login.getCompid());
					
		
			
			update= namedParameterJdbcTemplate.update(sql, map);
			if(update==1) {
				update=1;
			}
		}
		catch (Exception e) {
			e.printStackTrace();
			update = 0;
		}

		return update;
	}

}
