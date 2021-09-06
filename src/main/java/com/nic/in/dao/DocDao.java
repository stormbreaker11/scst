package com.nic.in.dao;

import java.util.List;

import com.nic.in.model.Documents;
import com.nic.in.model.Login;

public interface DocDao {

	public int saveDoc(Documents documents, Login login);
	public List<Documents> getUploadedDocsByPid(String petition);
	public Documents getDocumentById(String pid, String docid);
	public int deleteDocument(String doccode, String pid);
}
