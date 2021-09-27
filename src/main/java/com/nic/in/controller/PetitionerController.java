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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.nic.in.commons.ScstCommons;
import com.nic.in.dao.PetitionDao;
import com.nic.in.dao.PetitionerDao;
import com.nic.in.model.District;
import com.nic.in.model.Identity;
import com.nic.in.model.Login;
import com.nic.in.model.NodalOfficer;
import com.nic.in.model.Petition;
import com.nic.in.model.Petitioner;

@Controller
public class PetitionerController {

	@Autowired
	private PetitionDao petitiondao;
	
	@Autowired
	private PetitionerDao petitionerdao;
	
	
	@Autowired
	private ScstCommons scstcommons; 

	// petition registration page request mapper
	@RequestMapping(value = "/registrtation.htm")
	public String registrtation(Model model) {
		Petitioner petitioner = new Petitioner();
		List<Identity> identities = scstcommons.getIdentities();
		model.addAttribute("identities", identities);
		model.addAttribute("register", petitioner);
List<District> district = scstcommons.getDistrict("36");
		
		model.addAttribute("district", district);
		return "REGISTERPETITION";
	}

	// petition details page request mapper
	@RequestMapping(value = "/registrtationdetails.htm")
	public String petitionDetails() {
		return "landpetition";
	}

	@RequestMapping(value = "/savePetition.htm", method = RequestMethod.POST)
	public String savePetition(@ModelAttribute("register") Petitioner petitioner, Model model,
			@RequestParam("prdoc") MultipartFile prdocfile, @RequestParam("signature") MultipartFile signaturefile,
			@RequestParam("photo") MultipartFile photofile,
			@RequestParam("bprpetitiondoc") MultipartFile bprpetitiondocfile,
			@RequestParam("bprpetitionsign") MultipartFile bprpetitionsignFile,
			@RequestParam("bprpetitonphoto") MultipartFile bprpetitonphotofile, HttpServletRequest httpServletRequest) {
		try {
			// byte[] bytes = IOUtils.toByteArray(prdocfile.getInputStream());
			byte[] bytes = IOUtils.toByteArray(prdocfile.getInputStream());
			byte[] signaturebytes = IOUtils.toByteArray(signaturefile.getInputStream());
			byte[] docbytes = IOUtils.toByteArray(photofile.getInputStream());

			petitioner.setPrPhoto(docbytes);
			petitioner.setPrSign(signaturebytes);
			petitioner.setPrProofDoc(bytes);

			byte[] brdocbytes = IOUtils.toByteArray(bprpetitiondocfile.getInputStream());
			byte[] brsignaturebytes = IOUtils.toByteArray(bprpetitionsignFile.getInputStream());
			byte[] brphotobytes = IOUtils.toByteArray(bprpetitonphotofile.getInputStream());

			petitioner.setBprprPhoto(brphotobytes);
			petitioner.setBprprSign(brsignaturebytes);
			petitioner.setBprprProofDoc(brdocbytes);

		} catch (Exception e) {
			e.printStackTrace();
		}
		Login login = (Login) httpServletRequest.getSession().getAttribute("login");
		String compid = login.getCompid();
		int savePetiton = petitiondao.savePetiton(petitioner, compid);
		if (savePetiton == 1) {
			model.addAttribute("savePetiton", petitioner.getPetionerId());
			return "savepetition";
		} else {
			model.addAttribute("error", "Error: Petitioner Registration failed, try again!!");
			model.addAttribute("register", petitioner);
			return "REGISTERPETITION";
		}

	}

	@RequestMapping(value = "/filepetion.htm/{pid}/{type}")
	public String filepetion(HttpServletRequest httpServletRequest, Model model, @PathVariable("pid") String pid,
			@PathVariable("type") String type) {
		model.addAttribute("pid", pid); // id is petitioner id

		if (type.equals("L")) {
			model.addAttribute("typeVal", "L");
			model.addAttribute("typeOpt", "Land");
		}
		if (type.equals("A")) {
			model.addAttribute("typeVal", "A");
			model.addAttribute("typeOpt", "Atrocity");
		}
		if (type.equals("S")) {
			model.addAttribute("typeVal", "S");
			model.addAttribute("typeOpt", "Service");
		}
		if (type.equals("G")) {
			model.addAttribute("typeVal", "G");
			model.addAttribute("typeOpt", "General");
		}
		model.addAttribute("petition", new Petition());
		return "filepetition";
	}

	@RequestMapping(value = "getphotobypid/{petid}")
	public void getphoto(HttpServletResponse response, @PathVariable String petid) {

		Petitioner petition = petitionerdao.getDocs(petid);
		try {

			OutputStream out = response.getOutputStream();
			response.setContentType("image/jpeg");
			// IOUtils.copy(photoById.getIpsPhoto().getBinaryStream(), out);
			IOUtils.copy(new ByteArrayInputStream(petition.getPrPhoto()), out);
			out.flush();
			out.close();

		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	@RequestMapping(value = "getsign/{pid}")
	public void getSign(HttpServletResponse response, @PathVariable String pid) {

		Petitioner petition = petitionerdao.getDocs(pid);
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

	
}
