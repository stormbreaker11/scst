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

@Repository
public class DocDaoImpl implements DocDao {


	@Autowired
	private JdbcTemplate jdbcTemplate;


	@Autowired
	private NamedParameterJdbcTemplate namedParameterJdbcTemplate;

	@Override
	public int saveDoc(Documents documents, Login login) {
		
		
		int save=0;
		String sql="INSERT INTO evidence(row_id, petition_id, petitioner_id, userid, doc_srno, doc_desc,doc_pdf, entry_date)"
				+ "VALUES (:row_id, :petition_id, :petitioner_id, :userid, :doc_srno, :doc_desc, :doc_pdf, now())";
		int generateDcoSrNo = generateDcoSrNo();
		MapSqlParameterSource map=new MapSqlParameterSource();
		map.addValue("row_id", generateRowIdForDoc());
		map.addValue("petition_id", documents.getPetitionId());
		map.addValue("petitioner_id", documents.getPetitionerId());
		map.addValue("userid", login.getCompid());
		map.addValue("doc_srno", generateDcoSrNo);
		map.addValue("doc_desc", documents.getDocDesc());
		map.addValue("doc_pdf", documents.getDocContent());
		
		try {
			save=namedParameterJdbcTemplate.update(sql, map);
			if(save==1) {
				save=generateDcoSrNo;
			}
		}
		catch (Exception e) {
			e.printStackTrace();
			save=0;
		}
		return save;
	}
	// generating serial number for respondent details
		public int generateDcoSrNo() {
			String query = "SELECT coalesce(max(doc_srno),0) from evidence";
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
	

		// generating rowid for evidence table
		public int generateRowIdForDoc() {
			String query = "SELECT coalesce(max(row_id),0) from evidence";
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
		public List<Documents> getUploadedDocsByPid(String petition) {
			
			String query = "select doc_srno, doc_desc, petitioner_id, petition_id from evidence where petition_id=?" ;
			List<Documents> documents = jdbcTemplate.query(query, new Object[] {petition}, new RowMapper<Documents>() {
				public Documents mapRow(ResultSet rs, int rownumber) throws SQLException {
					Documents documents = new Documents();
					documents.setDocNo(rs.getString("doc_srno"));
					documents.setDocDesc(rs.getString("doc_desc"));
					documents.setPetitionerId(rs.getString("petitioner_id"));
					documents.setPetitionId(rs.getString("petition_id"));
					return documents;
				}
			});
			return documents;
		}
		@Override
		public Documents getDocumentById(String pid, String docid) {
			String query ="select doc_pdf from evidence where upper(petition_id)=? and doc_srno=?";
			Object[] fparam = new Object[] {pid, Integer.valueOf(docid) };
			
			Documents documents= new Documents();

			return jdbcTemplate.query(query, fparam, new ResultSetExtractor<Documents>() {
				public Documents extractData(ResultSet rs) throws SQLException, DataAccessException {
					if (rs.next()) {
						documents.setDocContent(rs.getBytes("doc_pdf"));
					}
					return documents;

				}
			});
			
			
		}
		@Override
		public int deleteDocument(String doccode, String pid) {

			int delete = 0;
			String query = "delete from evidence where doc_srno=? and petition_id=?";
			try {
				delete = jdbcTemplate.update(query, new Object[] { Integer.parseInt(doccode), pid });
			} catch (Exception e) {
				e.printStackTrace();
				delete = 0;
			}
			return delete;
		}

}
