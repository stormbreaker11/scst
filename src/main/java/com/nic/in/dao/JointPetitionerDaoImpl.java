package com.nic.in.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.nic.in.model.Documents;
import com.nic.in.model.Login;
import com.nic.in.model.Petitioner;

@Repository
public class JointPetitionerDaoImpl implements JointPetitionerDao {


	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Autowired
	private NamedParameterJdbcTemplate namedParameterJdbcTemplate;

	@Override
	public int addJointPetitioner(Petitioner petitioner, Login login, String pid) {

		int update =0;
		int generateJointSrNo = generateJointSrNo();
		try {
			String query = "INSERT INTO joint_petitioner("
					+ " row_id, petition_id, petitioner_id, userid, joint_srno, joint_pet_name, "
					+ " joint_pet_sign, entry_date) VALUES (:row_id,:petition_id,:petitioner_id,:userid,:joint_srno,:joint_pet_name, :joint_pet_sign, now())";

			MapSqlParameterSource map = new MapSqlParameterSource();
			map.addValue("row_id", generateRowSrNo());
			map.addValue("petition_id", pid );
			map.addValue("petitioner_id", petitioner.getPetionerId() );
			map.addValue("userid", login.getCompid() );
			map.addValue("joint_srno", generateJointSrNo);
			map.addValue("joint_pet_name", petitioner.getPetionerName());
			map.addValue("joint_pet_sign", petitioner.getPrSign());

			update = namedParameterJdbcTemplate.update(query, map);
			 if(update==1) {
				 update=generateJointSrNo;
			 }
		}
		catch (Exception e) {
			e.printStackTrace();
			update=0;
		}
		return update;
	}

	//generating serial number for Joint petitioner table
	public int generateJointSrNo() {
		String query = "SELECT coalesce(max(joint_srno),0) from joint_petitioner";
		int maxid = 0;
		try {
			int id = jdbcTemplate.queryForObject(query, Integer.class);
			if (id==0) {
				maxid =1;
			} else {
				maxid =id+1;
			}
		} catch (Exception e) {
			e.printStackTrace();
			maxid = 0;
		}
		return maxid;
	}

	
	//generating serial number for Joint petitioner table
		public int generateRowSrNo() {
			String query = "SELECT coalesce(max(row_id),0) from joint_petitioner";
			int maxid = 0;
			try {
				int id = jdbcTemplate.queryForObject(query, Integer.class);
				if (id==0) {
					maxid =1;
				} else {
					maxid =id+1;
				}
			} catch (Exception e) {
				e.printStackTrace();
				maxid = 0;
			}
			return maxid;
		}

		@Override
		public Petitioner getSign(String pid, String docno) {

			String sql = "select joint_pet_sign from joint_petitioner where joint_srno=? and petitioner_id=?";

			Petitioner pl = new Petitioner();

			return jdbcTemplate.query(sql, new Object[] { Integer.parseInt(docno), pid }, new ResultSetExtractor<Petitioner>() {
				public Petitioner extractData(ResultSet rs) throws SQLException, DataAccessException {
					if (rs.next()) {
						pl.setPrSign(rs.getBytes("joint_pet_sign"));
					}
					return pl;
				}
			});

		}

		@Override
		public int deleteSign(String doccode, String petitionerId) {
			String sql="delete from joint_petitioner where joint_srno=? and petitioner_id=?";
			int delete=0;
			try {
				delete = jdbcTemplate.update(sql, new Object[] {Integer.parseInt(doccode), petitionerId } );
			}
			catch (Exception e) {
				delete=0;
				e.printStackTrace();
			}
			return delete;
}

		@Override
		public List<Petitioner> getJointPetioners(String pid) {
			
			String query = "select joint_srno, joint_pet_name from joint_petitioner where petition_id=?" ;
			List<Petitioner> documents = jdbcTemplate.query(query, new Object[] {pid}, new RowMapper<Petitioner>() {
				public Petitioner mapRow(ResultSet rs, int rownumber) throws SQLException {
					Petitioner petitioner = new Petitioner();
					petitioner.setPetionerName(rs.getString("joint_pet_name"));
					petitioner.setPrProofId(rs.getString("joint_srno"));
				
					return petitioner;
				}
			});
			return documents;
		}

	
}
