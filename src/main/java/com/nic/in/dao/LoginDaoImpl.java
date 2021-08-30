package com.nic.in.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.nic.in.model.Login;
import com.nic.in.util.Date_Id_generator;

@Repository
public class LoginDaoImpl implements LoginDao
{

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	private NamedParameterJdbcTemplate namedParameterJdbcTemplate;
	
	@Override
	public Login getUser(String mobile) {

		String sql = "select userid, comp_id from scst_user where userid=?";
		Login login = new Login();

		return jdbcTemplate.query(sql, new Object[] { mobile }, new ResultSetExtractor<Login>() {
			public Login extractData(ResultSet rs) throws SQLException, DataAccessException {
				if (rs.next()) {
					login.setMobile(rs.getString("userid"));
					login.setCompid(rs.getString("comp_id"));
				}
				return login;

			}
		});
	}
	
	@Override
	public int createUser(String mobile, String otpid, String comp) {
		
		@SuppressWarnings("unused")
		int save=0;
		
		String sql="INSERT INTO scst_user(userid, comp_id, otp_id,otp_date, otp_time, create_date)" + 
				"	VALUES (:userid, :comp_id, :otp_id, :otp_date, now(), now())";
		try {
			MapSqlParameterSource scst= new MapSqlParameterSource();
			scst.addValue("userid", mobile);
			scst.addValue("comp_id", comp );
			scst.addValue("otp_id", otpid );
			scst.addValue("otp_date", new Date());
			save = namedParameterJdbcTemplate.update(sql, scst);
		}
		catch (Exception e) {
			e.printStackTrace();
			save=0;
		}
		return save;
	}
}
