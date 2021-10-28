package com.nic.in.dao;

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
import org.springframework.stereotype.Repository;

import com.nic.in.model.Petitioner;

@Repository
public class PetitionerDaoImpl implements PetitionerDao {

	
	@Autowired
	private JdbcTemplate jdbcTemplate;

	
	  //geting type of petitions by user id 
		@Override
		public List<Petitioner> getPetitions(String userid) {

			try {
				String quer = "SELECT petitioner_id,is_petitioner,pr_name,age,gender, entry_date from petitioner where userid=?";
				Object[] eduParam = new Object[] { userid };
				List<Petitioner> plist = jdbcTemplate.query(quer, eduParam, new RowMapper<Petitioner>() {
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
							e.printStackTrace();
							return null;
						}

						return p;
					}
				});
				return plist;				
			}
			catch (Exception e) {
				e.printStackTrace();
				return null;
			}

		}

		@Override
		public Petitioner getDocs(String pid) {
			
			String sql="select pr_photo, pr_signature from petitioner where petitioner_id=?";

			Petitioner pl= new Petitioner();

			return jdbcTemplate.query(sql, new Object[] {pid}, new ResultSetExtractor<Petitioner>() {
				public Petitioner extractData(ResultSet rs) throws SQLException, DataAccessException {
					if (rs.next()) {
						pl.setPrPhoto(rs.getBytes("pr_photo"));
						pl.setPrSign(rs.getBytes("pr_signature"));
					}
					return pl;
				}
			});
		}

		@Override
		public int checkSelfEntry(String compid) {

			int flag = 0;
			try {

				String query = "Select count(*) from petitioner where is_petitioner ='Y' and userid=?";
				Object[] roleParam = new Object[] { compid };
				flag = jdbcTemplate.queryForObject(query, roleParam, Integer.class);
			} catch (Exception e) {
				System.out.println(e.getMessage());
				flag = 0;
			}
			return flag;
		}
	
}
