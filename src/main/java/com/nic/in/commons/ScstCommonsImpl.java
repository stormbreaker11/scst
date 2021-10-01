package com.nic.in.commons;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.apache.commons.lang3.text.WordUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.nic.in.model.Atrocity;
import com.nic.in.model.Caste;
import com.nic.in.model.Category;
import com.nic.in.model.District;
import com.nic.in.model.Identity;
import com.nic.in.model.Land;
import com.nic.in.model.Mandal;
import com.nic.in.model.Petition;
import com.nic.in.model.Relation;
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
				String capitalizeFully = WordUtils.capitalizeFully(d.getDistName());
				d.setDistName(capitalizeFully);
				
				return d;
			}
		});
		return dlist;
}

	@Override
	public List<State> getStates() {
		
		String query = "select scode, sname from state where scode in ('36') order by sname  "; //36 code is for telanaganaa 

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

	@Override
	public List<Relation> getRelations() {
		String query = "select type_code, type_name from atrocity_type WHERE active='Y' order by type_name  ";

		List<Relation> rlist = jdbcTemplate.query(query, new RowMapper<Relation>() {
			public Relation mapRow(ResultSet rs, int rownumber) throws SQLException {
				Relation r = new Relation();
				r.setRcode(rs.getString(""));
				r.setRname(rs.getString(""));
				return r;
			}
		});
		return rlist;
}

	@Override
	public List<Caste> getCastes(String id) {
		
		String sql="select sub_code, sub_name from sub_caste where caste_code=? order by sub_name";
		List<Caste> clist = jdbcTemplate.query(sql, new Object[] {id} ,new RowMapper<Caste>() {
			public Caste mapRow(ResultSet rs, int rownumber) throws SQLException {
				Caste c = new Caste();
				c.setCcode(rs.getString("sub_code"));
				c.setCname(rs.getString("sub_name"));
				return c;
			}
		});
		return clist;
	}

	@Override
	public List<Category> getCategories() {

		String sql = "select ccode, cname from category_master where active='Y' order by cname";
		List<Category> clist = jdbcTemplate.query(sql, new RowMapper<Category>() {
			public Category mapRow(ResultSet rs, int rownumber) throws SQLException {
				Category c1 = new Category();
				c1.setCcode(rs.getString("ccode"));
				c1.setCname(rs.getString("cname"));
				return c1;
			}
		});
		return clist;

	}

	@Override
	public List<Land> getLands() {
		String query=" select land_code, land_name from land_kind where active='Y' ";
		List<Land> list = jdbcTemplate.query(query, new RowMapper<Land>() {
			public Land mapRow(ResultSet rs, int rownumber) throws SQLException {
				Land l1 = new Land();
				l1.setLandsrno(rs.getString("land_code"));
				l1.setLandKind(rs.getString("land_name"));
				return l1;
			}
		});
		return list;
	}

	@Override
	public List<Land> getLandTypes() {
		
		String query=" select land_type_code, land__type_name from land_type where active='Y' ";
		List<Land> list = jdbcTemplate.query(query, new RowMapper<Land>() {
			public Land mapRow(ResultSet rs, int rownumber) throws SQLException {
				Land l1 = new Land();
				l1.setLandsrno(rs.getString("land_type_code"));
				l1.setLandType(rs.getString("land__type_name"));
				return l1;
			}
		});
		return list;
	}

	@Override
	public List<Mandal> getMandals(String id) {
		
		String query="select mcode, mname from mandal where dcode=? order by mname";
		List<Mandal> list = jdbcTemplate.query(query, new Object[] {Integer.parseInt(id)}, new RowMapper<Mandal>() {
			public Mandal mapRow(ResultSet rs, int rownumber) throws SQLException {
				Mandal m = new Mandal();
				m.setMcode(rs.getString("mcode"));
				m.setMname(rs.getString("mname"));
				return m;
			}
		});
		return list;
	}
	
	
}