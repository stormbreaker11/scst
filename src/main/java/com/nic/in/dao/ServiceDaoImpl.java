package com.nic.in.dao;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.nic.in.model.Login;
import com.nic.in.model.Petition;
import com.nic.in.model.Service;

@Repository
public class ServiceDaoImpl implements ServiceDao
{
		
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	private NamedParameterJdbcTemplate namedParameterJdbcTemplate;

	@Override
	public int saveServicePetition(Service s, Login login, String pid) {
		
		int save=0;
       
		try {

			String sql = "insert into petition_service(petition_id,petitioner_id,userid,service_type,oth_name,"
					+ "appeal,pet_detail, entry_date)"

					+ "VALUES (:petition_id, :petitioner_id, :userid, :service_type, :oth_name, :appeal, "
					+ ":pet_detail, now())";


			MapSqlParameterSource map = new MapSqlParameterSource();

			map.addValue("petition_id", pid);
			map.addValue("petitioner_id", s.getPetitioner_id()); // petitioner Id
			map.addValue("userid", login.getCompid());
			map.addValue("service_type", s.getService_type());
			map.addValue("oth_name", s.getOth_name());
			map.addValue("appeal", s.getAppeal());
			map.addValue("pet_detail", s.getPet_detail());
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
	public Petition getPetition(String petitionerId, String petid) {
		
		String sql="SELECT pm.petition_id, pm.petitioner_id,  pm.submit_date, pr.pr_name, pr.pr_caste, pr.address, pr.pr_photo,  pr.pr_signature, "
				+ "pr.pr_mobile, pr.pr_email, pr.district, pr.mandal, pr.village, "
				+ "pm.petition_type, pm.petition_category, pm.submit_date, " 
				+ "s.appeal,s.pet_detail, rs.resp_type from petitioner  pr, " 
				+ "petition_master pm, petition_service s, petition_respondent rs "
				+ "where pr.petitioner_id=? and pr.petitioner_id=s.petitioner_id "
				+ "and pr.petitioner_id=rs.petitioner_id and s.petition_id=s.petition_id"
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
	public Service getSerivePetiton(String petition) {

		String sql="SELECT service_type, appeal, pet_detail, oth_name from petition_service where petition_id=?";
		Service s= new Service();
		return jdbcTemplate.query(sql, new Object[] {petition}, new ResultSetExtractor<Service>() {
			public Service extractData(ResultSet rs) throws SQLException, DataAccessException {
				if (rs.next()) {
					s.setService_type(rs.getString("service_type"));
					s.setAppeal(rs.getString("appeal"));
					s.setPet_detail(rs.getString("pet_detail"));
					s.setOth_name(rs.getString("oth_name"));
				}
				return  s;
			}
		});
	}

	@Override
	public int updateServiceAppeal(Service service, Login login) {
		int update = 0;
		try {
			String sql = "UPDATE petition_service " + " SET service_type=:service_type, appeal=:appeal, "
					+ " oth_name=:oth_name, pet_detail=:pet_detail, action_date=now(), "
					+ " action_userid=:action_userid where petition_id=:petition_id";

			MapSqlParameterSource map = new MapSqlParameterSource();

			map.addValue("appeal", service.getAppeal());
			map.addValue("service_type", service.getService_type());
			map.addValue("pet_detail", service.getPet_detail());
			map.addValue("petition_id", service.getPetition_id());
			map.addValue("action_userid", login.getCompid());
			if (service.getService_type().equals("3")) {
				map.addValue("oth_name", service.getOth_name());
			} else {
				map.addValue("oth_name", null);
			}
			update = namedParameterJdbcTemplate.update(sql, map);
			if (update == 1) {
				update = 1;
			}
		} catch (Exception e) {
			e.printStackTrace();
			update = 0;
		}
		return update;
	}

}
