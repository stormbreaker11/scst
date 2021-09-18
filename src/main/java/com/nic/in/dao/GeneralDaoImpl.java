package com.nic.in.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.nic.in.model.General;
import com.nic.in.model.Login;
import com.nic.in.model.Petition;

@Repository
public class GeneralDaoImpl implements GeneralDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Autowired
	private NamedParameterJdbcTemplate namedParameterJdbcTemplate;

	@Override
	public int saveGeneralPetition(General g, Login login, String pid) {

		int save = 0;

		try {

			String sql = "insert into petition_general(petition_id,petitioner_id,userid,appeal,pet_detail, entry_date)"

					+ "VALUES (:petition_id, :petitioner_id, :userid, :appeal,:pet_detail, now())";

			MapSqlParameterSource map = new MapSqlParameterSource();
			map.addValue("petition_id", pid);
			map.addValue("petitioner_id", g.getPetitioner_id()); // pet id
			map.addValue("userid", login.getCompid());
			map.addValue("appeal", g.getAppeal());
			map.addValue("pet_detail", g.getPet_detail());

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

	@Override
	public Petition getPetition(String petitionerId, String pid) {

		String sql = "SELECT pm.petition_id, pm.petitioner_id,  pm.submit_date, pr.pr_name, pr.pr_caste, pr.address, pr.pr_photo,  pr.pr_signature, "
				+ "pr.pr_mobile, pr.pr_email, pr.district, pr.mandal, pr.village, "
				+ "pm.petition_type, pm.petition_category, pm.submit_date, "
				+ "pg.appeal,pg.pet_detail, rs.resp_type from petitioner  pr, "
				+ "petition_master pm, petition_general pg, petition_respondent rs "
				+ "where pr.petitioner_id=? and pr.petitioner_id=pg.petitioner_id "
				+ "and pr.petitioner_id=rs.petitioner_id and pg.petition_id=pm.petition_id" + " and rs.petition_id=?";

		Petition pl = new Petition();

		return jdbcTemplate.query(sql, new Object[] { petitionerId, pid }, new ResultSetExtractor<Petition>() {
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

					String pid = pl.getPetitionId().substring(0, 2) + "/" + pl.getPetitionerId().substring(2, 6) + "/"
							+ pl.getPetitionerId().substring(6, 10);
					pl.setPetitionId(pid);
				}
				return pl;

			}
		});
	}

	@Override
	public General getGeneralPetition(String appeal) {
		String sql = "SELECT appeal, pet_detail from petition_general where petition_id = ?";
		General general = new General();

		return jdbcTemplate.query(sql, new Object[] { appeal }, new ResultSetExtractor<General>() {
			public General extractData(ResultSet rs) throws SQLException, DataAccessException {
				if (rs.next()) {
					general.setAppeal(rs.getString("appeal"));
					general.setPet_detail(rs.getString("pet_detail"));

				}
				return general;

			}
		});
	}

	@Override
	public int updateGeneral(General g, Login login) {

		int save = 0;

		try {

			String sql = "update petition_general set appeal=:appeal, "
					+ "pet_detail=:pet_detail, action_userid=:action_userid, action_date=now() where petition_id=:petition_id ";

			MapSqlParameterSource map = new MapSqlParameterSource();

			map.addValue("appeal", g.getAppeal());
			map.addValue("pet_detail", g.getPet_detail());
			map.addValue("petition_id", g.getPetition_id());
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
