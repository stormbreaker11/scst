package com.nic.in.controller;



import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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

import com.nic.in.dao.PetitionDao;
import com.nic.in.model.Login;
import com.nic.in.model.Petitioner;

@Controller
public class PetitionController {
	
	@Autowired
	private PetitionDao petitiondao; 

	// petition registration page request mapper
	@RequestMapping(value = "/registrtation.htm")
	public String registrtation( Model model) {
		Petitioner petitioner=  new Petitioner();
		model.addAttribute("register",petitioner);
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
			@RequestParam("photo") MultipartFile photofile, @RequestParam("bprpetitiondoc") MultipartFile bprpetitiondocfile, 
			@RequestParam("bprpetitionsign") MultipartFile bprpetitionsignFile,  @RequestParam("bprpetitonphoto") MultipartFile bprpetitonphotofile, HttpServletRequest httpServletRequest) {
		
		
		try {
			//byte[] bytes = IOUtils.toByteArray(prdocfile.getInputStream());
			byte[] bytes = IOUtils.toByteArray(prdocfile.getInputStream());
			byte[] signaturebytes = IOUtils.toByteArray(signaturefile.getInputStream());
			byte[] docbytes = IOUtils.toByteArray(photofile.getInputStream());

			petitioner.setPrPhoto(bytes);
			petitioner.setPrSign(signaturebytes);
			petitioner.setPrProofDoc(docbytes);
			
			byte[] brpbytes = IOUtils.toByteArray(bprpetitiondocfile.getInputStream());
			byte[] brsignaturebytes = IOUtils.toByteArray(bprpetitionsignFile.getInputStream());
			byte[] brdocbytes = IOUtils.toByteArray(bprpetitonphotofile.getInputStream());
			
			petitioner.setBprprPhoto(brpbytes);
			petitioner.setBprprSign(brsignaturebytes);
			petitioner.setBprprProofDoc(brdocbytes);
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		Login login = (Login) httpServletRequest.getSession().getAttribute("login");
		String compid = login.getCompid();
		//String savePetiton = petitiondao.savePetiton(petitioner, compid);
		String savePetiton="2";
		if(!savePetiton.equals("")) {
			model.addAttribute("savePetiton",savePetiton);
			return "savepetition";
		}
		model.addAttribute("register",petitioner);
		return "REGISTERPETITION";
		
	}

	// petition view status page request mapper
	@RequestMapping(value = "/viewpetitionDetails.htm")
	public String viewPetitionstatus(HttpServletRequest httpServletRequest, Model mode) {
		
		Login login = (Login) httpServletRequest.getSession().getAttribute("login");
		List<Petitioner> petitions = petitiondao.getPetitions(login.getCompid());
		mode.addAttribute("petitions", petitions);
		return "viewPetionDetails";
	}
	@RequestMapping(value = "/filepetion.htm/{id}")
	public String filepetion(HttpServletRequest httpServletRequest, Model mode, @PathVariable String id) {
		
		mode.addAttribute("pid", id); //id is petitioner id 
		return "filepetition";
	}
	
	
}
