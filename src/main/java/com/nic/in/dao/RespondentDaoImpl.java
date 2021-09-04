package com.nic.in.dao;

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
import com.nic.in.model.Respondent;

@Repository
public class RespondentDaoImpl implements RespondentDao {

	@Autowired
	private NamedParameterJdbcTemplate namedParameterJdbcTemplate;

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public int addRepondent(Respondent respondent, Login login, String pid) {

		int save = 0;

		String sql = "INSERT INTO petition_respondent(row_id, petition_id, petitioner_id, userid, resp_srno,"
				+ " resp_type, resp_profession, resp_name, resp_caste, address,"
				+ " resp_mobile,resp_email,district, entry_date) "
				+ " VALUES (:row_id, :petition_id, :petitioner_id, :userid, :resp_srno, :resp_type,:resp_profession, "
				+ ":resp_name, :resp_caste, :address, :resp_mobile, :resp_email, :district, now())";

		MapSqlParameterSource map = new MapSqlParameterSource();

		int generateRespSrNo = generateRespSrNo();
		map.addValue("row_id", generateRowIdForRespondent());
		map.addValue("petition_id", pid);
		map.addValue("petitioner_id", respondent.getPetitionerId());
		map.addValue("userid", login.getCompid());
		map.addValue("resp_srno", generateRespSrNo);
		map.addValue("resp_type", respondent.getRespType());
		map.addValue("resp_type", respondent.getRespType());
		map.addValue("resp_profession", respondent.getRespProffesion());
		map.addValue("resp_name", respondent.getRespName());
		map.addValue("resp_caste", respondent.getCaste());
		map.addValue("address", respondent.getAddress());
		map.addValue("resp_mobile", respondent.getMobile());
		map.addValue("resp_email", respondent.getEmail());
		map.addValue("district", Integer.parseInt(respondent.getDistrict()));

		try {
			save = namedParameterJdbcTemplate.update(sql, map);
			if (save == 1) {
				save = generateRespSrNo;
			}
		} catch (Exception e) {
			e.printStackTrace();
			save = 0;
		}
		return save;
	}

	// generating rowid for respondent table
	public int generateRowIdForRespondent() {
		String query = "SELECT coalesce(max(row_id),0) from petition_respondent";
		int maxid = 0;
		try {
			int id = jdbcTemplate.queryForObject(query, Integer.class);
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

	// generating serial number for respondent details
	public int generateRespSrNo() {
		String query = "SELECT coalesce(max(resp_srno),0) from petition_respondent";
		int maxid = 0;
		try {
			int id = jdbcTemplate.queryForObject(query, Integer.class);
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

		
		String query = "select resp_srno, resp_type, resp_profession, resp_caste, "
				+ "resp_name, resp_mobile, resp_email, district from petition_respondent where petition_id =? ";

		
		List<Respondent> respondents = jdbcTemplate.query(query, new Object[] {petId}, new RowMapper<Respondent>() {
			public Respondent mapRow(ResultSet rs, int rownumber) throws SQLException {
				Respondent respondent = new Respondent();
				respondent.setRespName(rs.getString("resp_name"));
				respondent.setRespType(rs.getString("resp_type"));
				respondent.setRespProffesion(rs.getString("resp_profession"));
				respondent.setRespno(rs.getString("resp_srno"));
				respondent.setCaste(rs.getString("resp_caste"));
				respondent.setMobile(rs.getString("resp_mobile"));
				respondent.setEmail(rs.getString("resp_email"));
				respondent.setDistrict(rs.getString("district"));
				
				
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

}
