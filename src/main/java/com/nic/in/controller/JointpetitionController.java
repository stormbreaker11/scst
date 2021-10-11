
package com.nic.in.controller;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.nic.in.commons.ScstCommons;
import com.nic.in.dao.JointPetitionerDao;
import com.nic.in.model.Atrocity;
import com.nic.in.model.District;
import com.nic.in.model.General;
import com.nic.in.model.Login;
import com.nic.in.model.Petitioner;
import com.nic.in.model.Petitition_Land;
import com.nic.in.model.Service;
import com.nic.in.model.State;

@Controller
public class JointpetitionController {

	
	@Autowired
	private ScstCommons scstcommons;

	
	
	@Autowired
	private JointPetitionerDao jointpetitionerdao;
	@RequestMapping(value = "proceed.htm/{pid}/{type}/{category}")
	public String jointPetitioner(HttpServletRequest httpServletRequest, Model model, @PathVariable String pid, @PathVariable String type, @PathVariable String category  ) {

		
		String view="";
		Login login = (Login) httpServletRequest.getSession().getAttribute("login");
		if (login == null) {
			return "redirect:sessexp";
		}
		String petitionID = (String) httpServletRequest.getSession().getAttribute("petitionID");
		model.addAttribute("type", type);
		model.addAttribute("category", category);
		model.addAttribute("pid", pid);
		model.addAttribute("petId", petitionID);
	
		if (category.equals("Land")) {
			model.addAttribute("typeVal", "L");
			model.addAttribute("typeOpt", "Land");
		}
		if (category.equals("Atrocity")) {
			model.addAttribute("typeVal", "A");
			model.addAttribute("typeOpt", "Atrocity");
		}
		if (category.equals("Service")) {
			model.addAttribute("typeVal", "S");
			model.addAttribute("typeOpt", "Service");
		}
		if (category.equals("General")) {
			model.addAttribute("typeVal", "G");
			model.addAttribute("typeOpt", "General");
		}
		List<State> states = scstcommons.getStates();
		List<District> district = scstcommons.getDistrict("36");
		model.addAttribute("district", district);
		
		if(category.equals("Land")) {  //L for land
			model.addAttribute("petitionland", new Petitition_Land());
			model.addAttribute("states", states);
			view= "land_petition";
		}
		if(category.equals("Atrocity")) { //A for Atrocity
			List<Atrocity> atrocities=scstcommons.getAtrocities();
			
			model.addAttribute("atrocities", atrocities);
			model.addAttribute("atrocity", new Atrocity());
			view= "atrocity_petition"; //
		}
		if(category.equals("Service")) { //S for Service
			model.addAttribute("service", new Service());
			view= "service_petition";
		}
		if(category.equals("General")) { //G for general
			model.addAttribute("general", new General());
			view= "general_petition";
		}
		
		return view;
	}

	@ResponseBody
	@RequestMapping(value = "addjointpetitioner.htm", method = RequestMethod.POST )
	public String addlanddetails(HttpServletRequest httpServletRequest, @RequestParam("petid") String petid, @RequestParam("name") String name , @RequestParam("file") MultipartFile file ) throws IOException {
		
		String save="N";
		Login login = (Login) httpServletRequest.getSession().getAttribute("login");
		String pid = (String) httpServletRequest.getSession().getAttribute("petitionID");
		Petitioner petitioner= new Petitioner();
		byte[] docbytes = IOUtils.toByteArray(file.getInputStream());
		petitioner.setPrSign(docbytes);
		petitioner.setPetionerId(petid);
		petitioner.setPetionerName(name);
		int savedata=jointpetitionerdao.addJointPetitioner(petitioner, login ,pid);
		if(savedata>=1) {
			save=""+savedata;
		}
		return save;
	}
	
	@RequestMapping(value = "viewSign")
	public void getSign(HttpServletResponse response, @RequestParam String pid, @RequestParam String docno ) {

		Petitioner petition = jointpetitionerdao.getSign(pid, docno);
		try {
			OutputStream out = response.getOutputStream();
			response.setContentType("image/jpeg");
			// IOUtils.copy(photoById.getIpsPhoto().getBinaryStream(), out);
			IOUtils.copy(new ByteArrayInputStream(petition.getPrSign()), out);
			out.flush();
			out.close();

		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	@ResponseBody
	@RequestMapping(value = "deletesign.htm" , method = RequestMethod.POST)
	public String deleteLand(HttpServletRequest httpServletRequest, @RequestParam String doccode, @RequestParam String petitionerId ) {
		
		String delete="N";
		int deleteLand=jointpetitionerdao.deleteSign(doccode, petitionerId);
		if(deleteLand==1) {
			delete="Y";
		}
		return delete;
	}
	

	
}
