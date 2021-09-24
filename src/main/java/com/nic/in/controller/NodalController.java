package com.nic.in.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.nic.in.dao.PetitionDao;
import com.nic.in.model.Petition;

@Controller
public class NodalController {

	@Autowired
	private PetitionDao petitiondao;
	@ResponseBody
	@RequestMapping(value = "updateNodal.htm" , method = RequestMethod.POST)
	public String updateNodaL(HttpServletRequest httpServletRequest, @ModelAttribute("petition") Petition petition, 
			@RequestParam("file") MultipartFile file ) throws IOException {

		String flag = "N";
		String pid = (String) httpServletRequest.getSession().getAttribute("petitionID");
		byte[] docbytes = IOUtils.toByteArray(file.getInputStream());
		petition.setNodalSign(docbytes);
		int update = petitiondao.updateNodal(petition, pid);
		if (update == 1) {
			flag = "Y";
		}
		return flag;
	}
	
}
