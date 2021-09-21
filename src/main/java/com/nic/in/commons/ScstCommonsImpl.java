package com.nic.in.commons;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.nic.in.model.Atrocity;
import com.nic.in.model.District;
import com.nic.in.model.Identity;
import com.nic.in.model.State;

@Repository
public class ScstCommonsImpl implements ScstCommons {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public List<Identity> getIdentities() {

		String query = "SELECT identity_code, identity_name FROM identity_type where active='Y' order by identity_name ";

		List<Identity> ilist = jdbcTemplate.query(query, new RowMapper<Identity>() {
			public Identity mapRow(ResultSet rs, int rownumber) throws SQLException {
				Identity i = new Identity();
				i.setIdcode(rs.getString("identity_code"));
				i.setIdname(rs.getString("identity_name"));
				return i;
			}
		});
		return ilist;
	}

	@Override
	public List<District> getDistrict(String scode) {
		
		String query = "select dcode, dname from district where scode=? order by dname ";

		List<District> dlist = jdbcTemplate.query(query, new Object[] {Integer.parseInt(scode)} ,new RowMapper<District>() {
			public District mapRow(ResultSet rs, int rownumber) throws SQLException {
				District d = new District();
				d.setDistCode(rs.getString("dcode"));
				d.setDistName(rs.getString("dname"));
				return d;
			}
		});
		return dlist;
}

	@Override
	public List<State> getStates() {
		
		String query = "select scode, sname from state order by sname ";

		List<State> slist = jdbcTemplate.query(query, new RowMapper<State>() {
			public State mapRow(ResultSet rs, int rownumber) throws SQLException {
				State s = new State();
				s.setSname(rs.getString("sname"));
				s.setScode(rs.getString("scode"));
				return s;
			}
		});
		return slist;
}

	@Override
	public List<Atrocity> getAtrocities() {
		String query = "select type_code, type_name from atrocity_type WHERE active='Y' order by type_name  ";

		List<Atrocity> alist = jdbcTemplate.query(query, new RowMapper<Atrocity>() {
			public Atrocity mapRow(ResultSet rs, int rownumber) throws SQLException {
				Atrocity a = new Atrocity();
				a.setAtrocity_type(rs.getString("type_code"));
				a.setAtrocity_name(rs.getString("type_name"));
				return a;
			}
		});
		return alist;
}
}
