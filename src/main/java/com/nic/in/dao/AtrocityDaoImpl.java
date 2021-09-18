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
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.nic.in.model.Atrocity;
import com.nic.in.model.Login;
import com.nic.in.model.Petition;
import com.nic.in.util.PetitionIdGenerator;

@Repository
public class AtrocityDaoImpl implements AtrocityDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Autowired
	private NamedParameterJdbcTemplate namedParameterJdbcTemplate;

	@Override
	public int saveAtrocityPetition(Atrocity a, Login login, String pid) {

		int save = 0;
		SimpleDateFormat simple = new SimpleDateFormat("yyyy-MM-dd");
		try {
			Date date = simple.parse(a.getOffence_date());

			String sql = "insert into petition_atrocity(petition_id,petitioner_id,userid,atrocity_type,offence_date,"
					+ "offence_place,off_district,off_mandal,ps_complaint,ps_name,ps_village,"
					+ " ps_mandal,ps_district,fir_no,fir_pdf,appeal,pet_detail, entry_date) "

					+ "VALUES (:petition_id, :petitioner_id, :userid, :atrocity_type, :offence_date, :offence_place, "
					+ ":off_district, :off_mandal, :ps_complaint, :ps_name, :ps_village, "
					+ " :ps_mandal, :ps_district, :fir_no, :fir_pdf, :appeal, :pet_detail, now())";


			MapSqlParameterSource map = new MapSqlParameterSource();

			// map.addValue("petition_id", PetitionIdGenerator.idGenerate("login", "pid"));
			map.addValue("petition_id", pid);
			map.addValue("petitioner_id", a.getPetitioner_id()); // pet id 
			map.addValue("userid", login.getCompid());
			map.addValue("atrocity_type", a.getAtrocity_type());
			map.addValue("offence_date", date);

			map.addValue("offence_place", a.getOffence_place());
			map.addValue("off_district", Integer.parseInt(a.getOff_district()));
			map.addValue("off_mandal", Integer.parseInt(a.getOff_mandal()));
			map.addValue("ps_complaint", a.getPs_complaint());
			if(a.getPs_complaint().equals("2")) { //1 yes, 2 No 
				map.addValue("ps_name", null);
				map.addValue("ps_village", null);
				map.addValue("ps_mandal", null);
				map.addValue("ps_district", null);
				map.addValue("fir_no", null);
				map.addValue("fir_pdf", null);
			}
			else {
				map.addValue("ps_name", a.getPs_name());
				map.addValue("ps_village", a.getPs_village());
				map.addValue("ps_mandal", Integer.parseInt(a.getPs_mandal()));
				map.addValue("ps_district", Integer.parseInt(a.getPs_district()));
				map.addValue("fir_no", a.getFir_no());
				map.addValue("fir_pdf", a.getFir_pdf());
				
			}
			map.addValue("appeal", a.getAppeal());
			map.addValue("pet_detail", a.getPet_detail());

			int update = namedParameterJdbcTemplate.update(sql, map);
			if (update == 1) {
				save = 1;
				a.setPetitioner_id(a.getPetitioner_id());
			}
		} catch (Exception e) {
			e.printStackTrace();
			save = 0;
		}
		return save;

	}

	@Override
	public String createAtrocityPetitionId(String type) {
		String sql = "select max(right(petition_id, 8)) as pid from petition_atrocity";
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

	/*
	 * public List<State> getStates() { String query =
	 * "SELECT scode, sname from state order by sname"; List<State> slist =
	 * jdbcTemplate.query(query, new RowMapper<State>() { public State
	 * mapRow(ResultSet rs, int rownumber) throws SQLException { State s = new
	 * State(); s.setScode(rs.getString("scode"));
	 * s.setSname(rs.getString("sname"));
	 * 
	 * return s; } }); return slist;
	 * 
	 * }
	 * 
	 * @Override public List<District> getDistricts(int dcode) { String query =
	 * "SELECT dcode, dname from district where scode=?"; List<District> dlist =
	 * jdbcTemplate.query(query, new Object[] {dcode} ,new RowMapper<District>() {
	 * public District mapRow(ResultSet rs, int rownumber) throws SQLException {
	 * District d = new District(); d.setDcode(rs.getString("dcode"));
	 * d.setDname(rs.getString("dname"));
	 * 
	 * return d; } }); return dlist; }
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 */

	@Override
	public Atrocity getAtrocityForm(String petition_id) {

		String sql = "select atrocity_type, off_district, off_mandal from petition_atrocity where petition_id=?";
		Atrocity atrocity = new Atrocity();

		return jdbcTemplate.query(sql, new Object[] { petition_id }, new ResultSetExtractor<Atrocity>() {
			public Atrocity extractData(ResultSet rs) throws SQLException, DataAccessException {
				if (rs.next()) {
					atrocity.setAtrocity_type(rs.getString("atrocity_type"));
					atrocity.setOff_district(rs.getString("off_district"));
					atrocity.setOff_mandal(rs.getString("off_mandal"));

				}
				return atrocity;

			}
		});
	}

	@Override
	public Petition getPetition(String petitionerId, String petid) {
		String sql="SELECT pm.petition_id, pm.petitioner_id,  pm.submit_date, pr.pr_name, pr.pr_caste, pr.address, pr.pr_photo,  pr.pr_signature, "
				+ "pr.pr_mobile, pr.pr_email, pr.district, pr.mandal, pr.village, "
				+ "pm.petition_type, pm.petition_category, pm.submit_date, " 
				+ "pa.appeal,pa.pet_detail, rs.resp_type from petitioner  pr, " 
				+ "petition_master pm, petition_atrocity pa, petition_respondent rs "
				+ "where pr.petitioner_id=? and pr.petitioner_id=pa.petitioner_id "
				+ "and pr.petitioner_id=rs.petitioner_id and pa.petition_id=pm.petition_id"
				+ " and rs.petition_id=?";

		Petition pl= new Petition();

		return jdbcTemplate.query(sql, new Object[] {petitionerId, petid}, new ResultSetExtractor<Petition>() {
			public Petition extractData(ResultSet rs) throws SQLException, DataAccessException {
				if (rs.next()) {
					pl.setPetitionerId(rs.getString("petitioner_id"));
					pl.setPetitionId(rs.getString("petition_id"));
					pl.setPetitionerName(rs.getString("pr_name"));
					pl.setPetitionCat(rs.getString("petition_category"));
					pl.setPetitionType(rs.getString("petition_type"));
					pl.setMobile(rs.getString("pr_mobile"));
					pl.setEmail(rs.getString("pr_email"));
					pl.setDistrict(rs.getString("district"));
					pl.setMandal(rs.getString("mandal"));
					pl.setVillage(rs.getString("village"));
					pl.setDistrict(rs.getString("district"));
					pl.setAppeal(rs.getString("appeal"));
					pl.setCourtPet(rs.getString("pet_detail"));
					pl.setRespondent(rs.getString("resp_type"));
					pl.setSubmit(rs.getString("submit_date"));
					pl.setPhoto(rs.getBytes("pr_photo"));
					pl.setSign(rs.getBytes("pr_signature"));
					
					String pid=pl.getPetitionId().substring(0, 2)+"/"+pl.getPetitionerId().substring(2, 6)+"/"+pl.getPetitionerId().substring(6, 10);
					pl.setPetitionId(pid);
				}
				return pl;

			}
		});

}

	@Override
	public Atrocity getAtrocityPetition(String petid) {
		
		String sql = "SELECT atrocity_type, offence_date, offence_place, off_district, off_mandal, ps_complaint, ps_name, ps_village,"
				+ " ps_mandal, ps_district, fir_no, fir_pdf, appeal, pet_detail from petition_atrocity where petition_id = ?";  
		Atrocity atrocity = new Atrocity();
		
		return jdbcTemplate.query(sql, new Object[] {petid}, new ResultSetExtractor<Atrocity>() {
			public Atrocity extractData(ResultSet rs) throws SQLException, DataAccessException {
				if (rs.next()) {
					
					atrocity.setAtrocity_type(rs.getString("atrocity_type"));
					atrocity.setOffence_date(rs.getString("offence_date"));
					atrocity.setOffence_place(rs.getString("offence_place"));
					atrocity.setOff_district(rs.getString("off_district"));
					atrocity.setOff_mandal(rs.getString("off_mandal"));
					atrocity.setPs_complaint(rs.getString("ps_complaint"));
					atrocity.setPs_name(rs.getString("ps_name"));
					atrocity.setPs_village(rs.getString("ps_village"));
					atrocity.setPs_mandal(rs.getString("ps_mandal"));
					atrocity.setPs_district(rs.getString("ps_district"));
					atrocity.setFir_no(rs.getString("fir_no"));
					atrocity.setFir_pdf(rs.getBytes("fir_pdf"));
					atrocity.setAppeal(rs.getString("appeal"));
					atrocity.setPet_detail(rs.getString("pet_detail"));
					
				}
				return atrocity;

			}
		});
	}

	@Override
	public int updateAtrocity(Atrocity a , Login login) {

		int save = 0;
		SimpleDateFormat simple = new SimpleDateFormat("yyyy-MM-dd");
		try {
			Date date = simple.parse(a.getOffence_date());

			String sql = "update petition_atrocity set atrocity_type=:atrocity_type, offence_date=:offence_date, offence_place=:offence_place, off_district=:off_district,"
					+ " off_mandal=:off_mandal, ps_complaint=:ps_complaint, ps_name=:ps_name, ps_village=:ps_village, ps_mandal=:ps_mandal, ps_district=:ps_district,"
					+ " fir_no=:fir_no, fir_pdf=:fir_pdf, appeal=:appeal,  pet_detail=:pet_detail, action_userid=:action_userid, "
					+ " action_date=now() where petition_id=:petition_id ";

			MapSqlParameterSource map = new MapSqlParameterSource();
			map.addValue("petition_id", a.getPetition_id());
			map.addValue("atrocity_type", a.getAtrocity_type());
			map.addValue("offence_date", date);

			map.addValue("offence_place", a.getOffence_place());
			map.addValue("off_district", Integer.parseInt(a.getOff_district()));
			map.addValue("off_mandal", Integer.parseInt(a.getOff_mandal()));
			map.addValue("ps_complaint", a.getPs_complaint());

			if (a.getPs_complaint().equals("2")) { // 1 yes, 2 No
				map.addValue("ps_name", null);
				map.addValue("ps_village", null);
				map.addValue("ps_mandal", null);
				map.addValue("ps_district", null);
				map.addValue("fir_no", null);
				map.addValue("fir_pdf", null);
			} else {
				map.addValue("ps_name", a.getPs_name());
				map.addValue("ps_village", a.getPs_village());
				map.addValue("ps_mandal", Integer.parseInt(a.getPs_mandal()));
				map.addValue("ps_district", Integer.parseInt(a.getPs_district()));
				map.addValue("fir_no", a.getFir_no());
				map.addValue("fir_pdf", a.getFir_pdf());

			}
			map.addValue("appeal", a.getAppeal());
			map.addValue("pet_detail", a.getPet_detail());
			map.addValue("action_userid", login.getCompid());

			int update = namedParameterJdbcTemplate.update(sql, map);
			if (update == 1) {
				save = 1;
			}

		} catch (Exception e) {
			e.printStackTrace();
			save = 0;
		}

		return save;

	}

}
