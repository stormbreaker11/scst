package com.nic.in.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
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
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import com.nic.in.model.Login;
import com.nic.in.model.Petition;
import com.nic.in.model.Petitioner;
import com.nic.in.util.Date_Id_generator;

@Repository
public class PetitonDaoImpl implements PetitionDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;


	@Autowired
	private NamedParameterJdbcTemplate namedParameterJdbcTemplate;
	
	@Autowired
	public PlatformTransactionManager transactionManager;

	@Override
	public int savePetiton(Petitioner petitioner, String compid) {
		
		
		
		int save=0;
		try {
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
		if(petitioner.getIsPetitioner().equals("Y")) { //self petition
			map.addValue("petitioner_id", petitonerId);
			//map.addValue("petition_id", generatePetionId());
			map.addValue("pr_name", petitioner.getPetionerName());
			map.addValue("age", petitioner.getAge());
			map.addValue("gender", petitioner.getGender());
			map.addValue("userid", compid);
			map.addValue("pr_caste", petitioner.getCaste());
			map.addValue("pr_sub_caste", petitioner.getSubcaste());
			map.addValue("relation_type", petitioner.getRelationType());
			map.addValue("relation_name", petitioner.getRelationName());
			map.addValue("address", petitioner.getAddress());
			map.addValue("pincode", petitioner.getPincode());
			map.addValue("pr_mobile", petitioner.getPrMobile());
			map.addValue("pr_email", petitioner.getPrMail());
			map.addValue("district", Integer.parseInt(petitioner.getDistrict()));
			map.addValue("mandal", petitioner.getMandal());
			map.addValue("village", petitioner.getVillage());
			map.addValue("pr_id_type", petitioner.getBprprProofType());
			map.addValue("pr_id_no", petitioner.getBprProofId());
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
		else { //on behalf
			map.addValue("petitioner_id", petitonerId);
			//map.addValue("petition_id", generatePetionId());
			map.addValue("pr_name", petitioner.getBprpetionerName());
			map.addValue("age", petitioner.getBprage());
			map.addValue("userid", compid);
			map.addValue("gender", petitioner.getBprgender());
			map.addValue("pr_caste", petitioner.getBprcaste());
			map.addValue("pr_sub_caste", petitioner.getBprsubcaste());
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
			int update = namedParameterJdbcTemplate.update(sql, map);
			if(update==1) {
				petitioner.setPetionerId(petitonerId);
				save=1;
			}
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
			save=0;
		}
		return save;
		
	}


	//fetching petitions details by userid 
	@Override
	public List<Petition> getSubmittedPetition(String compid) {

		String quer = "SELECT petitioner_id, petition_id, petition_type, petition_category, submit_date, final_submit from"
				+ " petition_master pm where userid=?";
		Object[] eduParam = new Object[] { compid };
		List<Petition> plist = jdbcTemplate.query(quer, eduParam, new RowMapper<Petition>() {
			public Petition mapRow(ResultSet rs, int rownumber) throws SQLException {
				Petition p = new Petition();
				p.setPetitionerId(rs.getString("petitioner_id"));
				p.setPetitionId(rs.getString("petition_id"));
				p.setSubmit(rs.getString("submit_date"));
				p.setPetitionType(rs.getString("petition_type"));
				p.setPetitionCat(rs.getString("petition_category"));
				p.setFinalsubmit(rs.getString("final_submit"));
				p.setPetitionFormat(p.getPetitionId().substring(0,2)+"/"+p.getPetitionId().substring(2,6)+"/"+p.getPetitionId().substring(6,10));
				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
				Date fechaNueva;
				try {
					fechaNueva = format.parse(p.getSubmit());
					format = new SimpleDateFormat("dd-MM-YYYY");
					p.setSubmit(format.format(fechaNueva));
				} catch (ParseException e) {
					e.printStackTrace();
				}
				return p;
			}
		});
		return plist;
	}


	@Override
	public int submitPetition(String petitioner, String petiId) {
		
		
		int update = 0;
		String sql = "update petition_master set final_submit=:final_submit,"
				+ " submit_date=:submit_date where petitioner_id=:petitioner_id and petition_id=:petition_id  ";

		try {
			MapSqlParameterSource map = new MapSqlParameterSource();
			map.addValue("final_submit", "Y");
			map.addValue("submit_date", Date_Id_generator.dateFormat());
			map.addValue("petitioner_id", petitioner);
			map.addValue("petition_id", petiId);
			update = namedParameterJdbcTemplate.update(sql, map);
			
			if(update==1) {
							update=1;
			}
		} catch (Exception e) {
			e.printStackTrace();
			update = 0;
		}

		return update;
	}


	@Override
	public List<Petition> getEvedince(String pid, String petid) {
		
		String quer = "SELECT doc_desc, doc_pdf from evidence"
				+ " where petition_id=? and petitioner_id=?";
		Object[] param = new Object[] { petid,pid};
		List<Petition> plist = jdbcTemplate.query(quer, param, new RowMapper<Petition>() {
			public Petition mapRow(ResultSet rs, int rownumber) throws SQLException {
				Petition p = new Petition();
				p.setDocdesc(rs.getString("doc_desc"));
				return p;
			}
		});
		return plist;
	}


	@Override
	public Petition getPetitionDetails(String petition) {
		
		String sql="SELECT petition_id, petitioner_id,"
				+ " petition_type, petition_category, group_name, nodal_name, nodal_desig, "
				+ " nodal_mobile, nodal_email from petition_master where petition_id=?";
		Petition pl= new Petition();

		return jdbcTemplate.query(sql, new Object[] {petition}, new ResultSetExtractor<Petition>() {
			public Petition extractData(ResultSet rs) throws SQLException, DataAccessException {
				if (rs.next()) {
					pl.setPetitionerId(rs.getString("petitioner_id"));
					pl.setPetitionId(rs.getString("petition_id"));
					pl.setPetitionCat(rs.getString("petition_category"));
					pl.setPetitionType(rs.getString("petition_type"));
					pl.setGroupName(rs.getString("group_name"));
					pl.setNodalName(rs.getString("nodal_name"));
					pl.setNodalDesign(rs.getString("nodal_desig"));
					pl.setNodalMobile(rs.getString("nodal_mobile"));
					pl.setNodalEmail(rs.getString("nodal_email"));
					
					String pid=pl.getPetitionId().substring(0, 2)+"/"+pl.getPetitionerId().substring(2, 6)+"/"+pl.getPetitionerId().substring(6, 10);
					pl.setPetitionFormat(pid);
				}
				return pl;

			}
		});
	}


	@Override
	public int updateNodal(Petition petition, String pid) {

		int update = 0;
		String sql = "update petition_master set group_name=:group_name,"
				+ " nodal_name=:nodal_name, nodal_desig=:nodal_desig, nodal_mobile=:nodal_mobile,"
				+ " nodal_email=:nodal_email, nodal_sign=:nodal_sign where petition_id=:petition_id  ";

		try {
			MapSqlParameterSource map = new MapSqlParameterSource();
			map.addValue("group_name", petition.getGroupName());
			map.addValue("nodal_name", petition.getNodalName());
			map.addValue("nodal_desig", petition.getNodalDesign());
			map.addValue("nodal_mobile", petition.getNodalMobile());
			map.addValue("nodal_email", petition.getNodalEmail());
			map.addValue("nodal_sign", petition.getNodalSign());
			map.addValue("nodal_mobile", petition.getNodalMobile());
			map.addValue("petition_id", pid);

			update = namedParameterJdbcTemplate.update(sql, map);

		} catch (Exception e) {
			System.out.println(e.getMessage());
			update = 0;
		}

		return update;

	}

	// generating Petition id
		@Override
		public String createPetitionId(String pid, String type) {

			/*
			 * Date date = new Date(); int year = date.getYear() + 1900;
			 */
			
			Calendar cal=Calendar.getInstance();
			int year = cal.get(Calendar.YEAR);
			String idGenerate = "";
			try {
				
				
			String sql = "select count(*) from petition_master where substring(petition_id from 3 for 4) =?"; //petition id 3 for 4 gives year eg 2021
			
			
				int petitionId = jdbcTemplate.queryForObject(sql, new Object[] {String.valueOf(year)}, Integer.class);

				if (petitionId > 0) {
				
					String sqlMax = "select max(right(petition_id, 4)) as pid from petition_master where  "
							+ "substring(petition_id from 3 for 4)=?";
					
					idGenerate = "";
					String newid = jdbcTemplate.queryForObject(sqlMax, new Object[] { String.valueOf(year) }, String.class);
					// idGenerate = PetitionIdGenerator.idGenerate(queryForObject, type);

					if (!newid.equals("")) {
						String yearAndId=year+newid; // gives eg. 2021+maxid from table
						int increment = Integer.parseInt(yearAndId);
						increment++;
						if (type.equals("I")) {
							idGenerate = "PI"+increment; 
						}
						if (type.equals("G")) {
							idGenerate = "PG"+increment;
						}
					} 
					
				} else {
				
					if (type.equals("I")) {
						idGenerate = "P" + type + year + "0001";
					}
					if (type.equals("G")) {
						idGenerate = "P" + type + year + "0001";
					}
					
				}

			} catch (Exception e) {
				e.printStackTrace();
				idGenerate = "";
			}
			return idGenerate;
		}

		@Override
		public int insertPetition(Petition petition, Login login) {
			int flag = 0;
			TransactionDefinition transactionDefinition = new DefaultTransactionDefinition();
			TransactionStatus status = transactionManager.getTransaction(transactionDefinition);

			try {
				String sql = "select count(*) from petition_master where petition_type=? and petition_category=? and petitioner_id=?";
				int count = jdbcTemplate.queryForObject(sql,
						new Object[] { petition.getPetitionType(), petition.getPetitionCat(), petition.getPetitionerId() }, Integer.class);
				if (count == 0) {
					String queryInsert = "INSERT INTO petition_master( "
							+ " petition_id, petitioner_id, userid, petition_type, petition_category, "
							+ " petition_status, status_date, final_submit, submit_date, group_name, nodal_name, nodal_desig,"
							+ " nodal_mobile, nodal_email, nodal_sign, entry_date)"
							+ " VALUES (:petition_id, :petitioner_id, :userid, :petition_type, :petition_category, "
							+ " :petition_status, :status_date, :final_submit,"
							+ " :submit_date, :group_name, :nodal_name, :nodal_desig, "
							+ "	:nodal_mobile, :nodal_email, :nodal_sign, now())";
					 
					MapSqlParameterSource map = new MapSqlParameterSource();

					map.addValue("petition_id", petition.getPetitionId());
					map.addValue("petitioner_id", petition.getPetitionerId());
					map.addValue("userid", login.getCompid());
					map.addValue("petition_type", petition.getPetitionType());
					map.addValue("petition_category", petition.getPetitionCat());
					map.addValue("petition_status", "1");
					map.addValue("status_date", new Date());
					map.addValue("final_submit", "N");
					map.addValue("submit_date", new Date());
					if(petition.getPetitionType().equals("G")) { //checking for type of petition G-Group , I-individual 
						map.addValue("group_name", petition.getGroupName());
						map.addValue("nodal_name", petition.getNodalName());
						map.addValue("nodal_desig", petition.getNodalDesign());
						map.addValue("nodal_mobile", petition.getNodalMobile());
						map.addValue("nodal_email", petition.getNodalEmail());
						map.addValue("nodal_sign", petition.getNodalSign());
					}
					else {
						map.addValue("group_name", null);
						map.addValue("nodal_name", null);
						map.addValue("nodal_desig", null);
						map.addValue("nodal_mobile", null);
						map.addValue("nodal_email", null);
						map.addValue("nodal_sign", null);
						map.addValue("nodal_represent", null);
					}
					
					int update = namedParameterJdbcTemplate.update(queryInsert, map);
					String setPetition="Update petitioner set petition_id=:petition_id where petitioner_id=:petitioner_id";
					
					map = new MapSqlParameterSource();
					map.addValue("petition_id", petition.getPetitionId());
					map.addValue("petitioner_id", petition.getPetitionerId());
					
					int setpPid=namedParameterJdbcTemplate.update(setPetition,map);
					if (update == 1 & setpPid==1) {
						transactionManager.commit(status);
						flag = 1;
					}
					else {
						transactionManager.rollback(status);
						flag = 0;
					}
				}
			} catch (Exception e) {
				System.out.println(e.getMessage());
				transactionManager.rollback(status);
				flag = 0;
			}
			
			return flag;
		}

}
