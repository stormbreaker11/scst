package com.nic.in.controller;

import java.io.IOException;
import java.text.ParseException;
import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.postgresql.util.PSQLException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.nic.in.dao.DocDao;
import com.nic.in.model.Documents;
import com.nic.in.model.Login;



@Controller
@RequestMapping("/petition/documents/")
public class UploadController {

	@Autowired
	private DocDao doc;
	@RequestMapping("uploaddocs.htm/{pid}/{type}/{category}")
	public String uploaddocs(HttpServletRequest request, Model model, @PathVariable String pid, @PathVariable String type, @PathVariable String category) {
		
		String petitionID = (String) request.getSession().getAttribute("petitionID");
		model.addAttribute("petitionID", petitionID);
		model.addAttribute("petitionerID", pid);
		model.addAttribute("type", type);
		model.addAttribute("category", category);
		model.addAttribute("upload", new Documents());
		
		List<Documents> uploadedDocsByPid = doc.getUploadedDocsByPid(petitionID);
		model.addAttribute("uploadedDocsByPid", uploadedDocsByPid);
		return "uploaddoc";
		
	}

	@ResponseBody
	@RequestMapping(value = { "savedoc.htm" }, method = RequestMethod.POST)
	public String save(HttpServletRequest request, @ModelAttribute("upload") Documents documents, @RequestParam("file") MultipartFile file) throws IOException, ParseException, PSQLException {
		
		String response="N";
		Login login= (Login) request.getSession().getAttribute("login");
		byte[] docbytes = IOUtils.toByteArray(file.getInputStream());
		documents.setDocContent(docbytes);
		int saveDoc = doc.saveDoc(documents, login);
		if(saveDoc!=0) {
			response=""+saveDoc;
		}
		return response;
		


	}
	
	@ResponseBody
	@RequestMapping(value = { "deletedoc.htm" }, method = RequestMethod.POST)
	public String deleteDoc(HttpServletRequest request, @RequestParam String docid, @RequestParam String pid) {
		
		String delete="N";
		
		int deletePage=doc.deleteDocument(docid, pid);
		if(deletePage==1) {
			delete="Y";
		}
		return delete;
		
		
		
	}


	@RequestMapping(value = { "/viewdoc" })
	public void viewDoc(HttpServletRequest request, HttpServletResponse response, @RequestParam String pid, @RequestParam String docno ) {

		Documents document= doc.getDocumentById(pid,docno);
		try {
			ServletOutputStream sos;
			response.setContentType("application/pdf");
			sos = response.getOutputStream();
			byte[] pdfdoc = document.getDocContent();
			sos.write(pdfdoc);
			sos.flush();
			sos.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
}
}
