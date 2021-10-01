package com.nic.in.util;

import java.io.BufferedOutputStream;
import java.nio.file.Files;
import java.text.ParseException;
import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itextpdf.io.IOException;
import com.itextpdf.io.source.ByteArrayOutputStream;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Image;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.nic.in.model.Documents;
import com.nic.in.model.Petition;
import com.nic.in.model.Petitioner;

public class PDFViewPoint {
	
	
	
	public void export(HttpServletRequest request, HttpServletResponse response, Petition petition, List<Documents> gettingDocsByPid, Petitioner docs) 
			throws DocumentException, IOException, ParseException, java.io.IOException
	{
		Document doc  = new Document(PageSize.A4);
		
		ByteArrayOutputStream baos = null;
		BufferedOutputStream bos = null;
		baos = new ByteArrayOutputStream();
		bos = new BufferedOutputStream(baos);
		baos.reset();
		
		Paragraph bottom = new Paragraph();
		bottom.add(Chunk.NEWLINE);
		bottom.setAlignment(Element.ALIGN_BOTTOM);
		bottom.setAlignment(Element.ALIGN_CENTER);
		

		
		doc.open();
		
		PdfPTable table = new PdfPTable(3);
		table.setWidthPercentage(100.0f);
	
		
		table.setWidths(new float[] { 1.5f, 15.0f, 10.0f });
		Paragraph heading = new Paragraph();

		Font mainHeadingFont = FontFactory.getFont(FontFactory.defaultEncoding, 13, Font.BOLD);
		Font small = FontFactory.getFont(FontFactory.defaultEncoding, 10, Font.NORMAL);
		Font small1 = FontFactory.getFont(FontFactory.defaultEncoding, 11, Font.NORMAL);
		Font medium = FontFactory.getFont(FontFactory.defaultEncoding, 10, Font.BOLD);
		Chunk tscfscst = new Chunk("TELANGANA STATE COMMISSION FOR SCHEDULED CASTES\r\n"
				+ "AND SCHEDULED TRIBES ", mainHeadingFont);
		Chunk govt = new Chunk("3rd floor Parishrama bhavan, basheerbagh, hyderabad-500004", small);
		Chunk govt1 = new Chunk("(A Statutory Body exercising powers of a Civil Court under Chapter III Section\r\n"
				+ "11(i)of the Act 9 of 2003 of the State Legislature )", small);
		Chunk govt3 = new Chunk("Petition ID: "+petition.getPetitionFormat(), medium);
		heading.add(tscfscst);
		heading.add(Chunk.NEWLINE);
		heading.add(govt);
		heading.add(Chunk.NEWLINE);
		heading.add(govt1);
		heading.add(Chunk.NEWLINE);
		heading.add(Chunk.NEWLINE);
		heading.add(govt3);
		
		heading.setAlignment(Element.ALIGN_CENTER);
		heading.add(Chunk.NEWLINE);
		doc.add(heading);
		Paragraph paragraph = new Paragraph();
		paragraph.setAlignment(Element.ALIGN_LEFT);
		paragraph.add(Chunk.NEWLINE);
		paragraph.add(Chunk.NEWLINE);
		doc.add(paragraph);
		
		Font font = FontFactory.getFont(FontFactory.defaultEncoding, 11, Font.NORMAL);
		Paragraph paragraph1 = new Paragraph();
		doc.add(paragraph1);
			
			
		PdfPCell c1 = new PdfPCell(new Phrase("1", font));
		c1.setVerticalAlignment(Element.ALIGN_CENTER);
		c1.setPaddingBottom(12f);
		//c1.setBorder(Rectangle.NO_BORDER);
		table.addCell(c1);
		
		 c1 = new PdfPCell(new Phrase("Name of the Petitioner ", font));
		c1.setVerticalAlignment(Element.ALIGN_CENTER);
		c1.setPaddingBottom(12f);
		//c1.setBorder(Rectangle.NO_BORDER);			
		table.addCell(c1);
		
		c1 = new PdfPCell(new Phrase(petition.getPetitionerName(),  font));
		c1.setVerticalAlignment(Element.ALIGN_CENTER);
		c1.setPaddingBottom(12f);
		//c1.setBorder(Rectangle.NO_BORDER);		
		table.addCell(c1); 
		
		PdfPCell c2 = new PdfPCell(new Phrase("2", font));
		c2.setVerticalAlignment(Element.ALIGN_CENTER);
		c2.setPaddingBottom(12f);
		table.addCell(c2);
		
		c2 = new PdfPCell(new Phrase("Name of Mandal ", font));
		c2.setVerticalAlignment(Element.ALIGN_CENTER);
		c2.setPaddingBottom(12f);
		table.addCell(c2);
		
		c2 = new PdfPCell(new Phrase(petition.getMandal(),  font));
		c2.setVerticalAlignment(Element.ALIGN_CENTER);
		c2.setPaddingBottom(12f);
		table.addCell(c2); 
		
		PdfPCell c3 = new PdfPCell(new Phrase("3", font));
		c3.setVerticalAlignment(Element.ALIGN_CENTER);
		c3.setPaddingBottom(12f);
		table.addCell(c3);
		
		c3 = new PdfPCell(new Phrase("Name of the district ", font));
		c3.setVerticalAlignment(Element.ALIGN_CENTER);
		c3.setPaddingBottom(12f);
		table.addCell(c3);
		
		c3 = new PdfPCell(new Phrase(petition.getDistrict(),  font));
		c3.setVerticalAlignment(Element.ALIGN_CENTER);
		c3.setPaddingBottom(12f);
		table.addCell(c3); 
		
		PdfPCell c4 = new PdfPCell(new Phrase("4", font));
		c4.setVerticalAlignment(Element.ALIGN_CENTER);
		c4.setPaddingBottom(12f);
		table.addCell(c4);
		
		c4 = new PdfPCell(new Phrase("Category of petition ", font));
		c4.setVerticalAlignment(Element.ALIGN_CENTER);
		c4.setPaddingBottom(12f);
		table.addCell(c4);
		
		String petitionCat = petition.getPetitionCat();
		
		
		if(petitionCat.equals("L")) {
			petitionCat = "Land";
		}
		if(petitionCat.equals("A")) {
			petitionCat = "Atrocity";
		}
		if(petitionCat.equals("S")) {
			petitionCat = "Service";
		}
		if(petitionCat.equals("G")) {
			petitionCat = "General";
		}
		c4 = new PdfPCell(new Phrase(petitionCat,  font));
		c4.setVerticalAlignment(Element.ALIGN_CENTER);
		c4.setPaddingBottom(12f);
		table.addCell(c4); 
		
		PdfPCell c5 = new PdfPCell(new Phrase("5", font));
		c5.setVerticalAlignment(Element.ALIGN_CENTER);
		c5.setPaddingBottom(12f);
		table.addCell(c5);
		
		c5 = new PdfPCell(new Phrase("Date of the petition Submitted ", font));
		c5.setVerticalAlignment(Element.ALIGN_CENTER);
		c5.setPaddingBottom(12f);
		table.addCell(c5);
		
		c5 = new PdfPCell(new Phrase(petition.getSubmit(),  font));
		c5.setVerticalAlignment(Element.ALIGN_CENTER);
		c5.setPaddingBottom(12f);
		table.addCell(c5); 
		
		PdfPCell c6 = new PdfPCell(new Phrase("6", font));
		c6.setVerticalAlignment(Element.ALIGN_CENTER);
		c6.setPaddingBottom(12f);
		table.addCell(c6);
		
		c6 = new PdfPCell(new Phrase("Address ", font));
		c6.setVerticalAlignment(Element.ALIGN_CENTER);
		c6.setPaddingBottom(12f);
		table.addCell(c6);
		
		c6 = new PdfPCell(new Phrase(petition.getVillage()+","+petition.getMandal()+","+petition.getDistrict(),  font));
		c6.setVerticalAlignment(Element.ALIGN_CENTER);
		c6.setPaddingBottom(12f);
		table.addCell(c6); 
		
		PdfPCell c7 = new PdfPCell(new Phrase("7", font));
		c7.setVerticalAlignment(Element.ALIGN_CENTER);
		c7.setPaddingBottom(12f);
		table.addCell(c7);
		
		c7 = new PdfPCell(new Phrase("Ph.No. of the petitioner ", font));
		c7.setVerticalAlignment(Element.ALIGN_CENTER);
		c7.setPaddingBottom(12f);
		table.addCell(c7);
		
		c7 = new PdfPCell(new Phrase(petition.getMobile(),  font));
		c7.setVerticalAlignment(Element.ALIGN_CENTER);
		c7.setPaddingBottom(12f);
		table.addCell(c7); 
		
		PdfPCell c8 = new PdfPCell(new Phrase("8", font));
		c8.setVerticalAlignment(Element.ALIGN_CENTER);
		c8.setPaddingBottom(12f);
		table.addCell(c8);
		
		c8 = new PdfPCell(new Phrase("Email of the petitioner ", font));
		c8.setVerticalAlignment(Element.ALIGN_CENTER);
		c8.setPaddingBottom(12f);
		table.addCell(c8);
		
		c8 = new PdfPCell(new Phrase(petition.getEmail(),  font));
		c8.setVerticalAlignment(Element.ALIGN_CENTER);
		c8.setPaddingBottom(12f);
		table.addCell(c8); 
		
		PdfPCell c9 = new PdfPCell(new Phrase("9", font));
		c9.setVerticalAlignment(Element.ALIGN_CENTER);
		c9.setPaddingBottom(12f);
		table.addCell(c9);
		
		c9 = new PdfPCell(new Phrase("Caste of the petitioner ", font));
		c9.setVerticalAlignment(Element.ALIGN_CENTER);
		c9.setPaddingBottom(12f);
		table.addCell(c9);
		
		String petitionerCaste = petition.getCaste();
		if(petitionerCaste.trim().equals("1")) {
			petitionerCaste = "ST";
		}
		if(petitionerCaste.trim().equals("2")) {
			petitionerCaste = "SC";
		}
		c9 = new PdfPCell(new Phrase(petitionerCaste,  font));
		c9.setVerticalAlignment(Element.ALIGN_CENTER);
		c9.setPaddingBottom(12f);
		table.addCell(c9); 
		 
		
		PdfPCell c10 = new PdfPCell(new Phrase("10", font));
		c10.setVerticalAlignment(Element.ALIGN_CENTER);
		c10.setPaddingBottom(12f);
		table.addCell(c10);
		
		c10 = new PdfPCell(new Phrase("Type of Petition ", font));
		c10.setVerticalAlignment(Element.ALIGN_CENTER);
		c10.setPaddingBottom(12f);
		table.addCell(c10);
		
		String petitionType = petition.getPetitionType();
		if(petitionType.equals("I")) {
			petitionType = "Individual";
		}
		if(petitionType.equals("G")) {
			petitionType = "Group";
		}
		c10 = new PdfPCell(new Phrase(petitionType,  font));
		c10.setVerticalAlignment(Element.ALIGN_CENTER);
		c10.setPaddingBottom(12f);
		table.addCell(c10); 
		
		
		
		PdfPCell c11 = new PdfPCell(new Phrase("11", font));
		c11.setVerticalAlignment(Element.ALIGN_CENTER);
		c11.setPaddingBottom(12f);
		table.addCell(c11);
		
		c11 = new PdfPCell(new Phrase("Respondent ", font));
		c11.setVerticalAlignment(Element.ALIGN_CENTER);
		c11.setPaddingBottom(12f);
		table.addCell(c11);
		
	
		c11 = new PdfPCell(new Phrase("",  font));
		c11.setVerticalAlignment(Element.ALIGN_CENTER);
		c11.setPaddingBottom(12f);
		table.addCell(c11); 
		
		PdfPCell c12 = new PdfPCell(new Phrase("12", font));
		c12.setVerticalAlignment(Element.ALIGN_CENTER);
		c12.setPaddingBottom(12f);
		table.addCell(c12);
		
		c12 = new PdfPCell(new Phrase("Appeal / Prayer of the petitioner: ", font));
		c12.setVerticalAlignment(Element.ALIGN_CENTER);
		c12.setPaddingBottom(12f);
		table.addCell(c12);
		
		c12 = new PdfPCell(new Phrase(petition.getAppeal(),  font));
		c12.setVerticalAlignment(Element.ALIGN_CENTER);
		c12.setPaddingBottom(12f);
		table.addCell(c12);
		
		PdfPCell c13 = new PdfPCell(new Phrase("13", font));
		c13.setVerticalAlignment(Element.ALIGN_CENTER);
		c13.setPaddingBottom(12f);
		table.addCell(c13);
		
		c13 = new PdfPCell(new Phrase("Case Details ", font));
		c13.setVerticalAlignment(Element.ALIGN_CENTER);
		c13.setPaddingBottom(12f);
		table.addCell(c13);
		
		c13 = new PdfPCell(new Phrase(petition.getCourtPet(),  font));
		c13.setVerticalAlignment(Element.ALIGN_CENTER);
		c13.setPaddingBottom(12f);
		table.addCell(c13);
		
		PdfPCell c14 = new PdfPCell(new Phrase("14", font));
		c14.setVerticalAlignment(Element.ALIGN_CENTER);
		c14.setPaddingBottom(12f);
		table.addCell(c14);
		
		c14 = new PdfPCell(new Phrase("List of evidences submitted by petitioner ", font));
		c14.setVerticalAlignment(Element.ALIGN_CENTER);
		c14.setPaddingBottom(12f);
		table.addCell(c14);
		
		StringBuilder s = new StringBuilder();
		
		int k = 0;
		for (Documents d : gettingDocsByPid) {
			s.append(++k + ". " + d.getDocDesc());
			s.append("\n");
			
		}
		table.addCell(s.toString());

		
	
		
		doc.add(table);
		doc.add(Chunk.NEWLINE);
		doc.add(Chunk.NEWLINE);
		doc.add(Chunk.NEWLINE);
		doc.add(new Chunk("Signature of Petitioner ", small1));
		
		//----For Image-01----
		//final String realPath1 = request.getSession().getServletContext().getRealPath("/getsign/"+petition.getPetitionerId());
		final String realPath = request.getSession().getServletContext().getRealPath("/static/images/deptlogo.png");
	
		byte[] readAllBytes = Files.readAllBytes(java.nio.file.Paths.get(realPath));
		byte[] prPhoto = docs.getPrPhoto();
		byte[] prSign = docs.getPrSign(); 
		//Image instance1 = Image.getInstance(realPath1);
		
		if(prPhoto!=null ) {
			Image photoPR = Image.getInstance(prPhoto); //photo
			photoPR.scaleToFit(100,80);
			photoPR.setAbsolutePosition(470, 660);
			doc.add(photoPR);
		}
		if(prSign!=null) {
			
			Image signpr = Image.getInstance(prSign); //sign
			signpr.scaleToFit(100,80);
			signpr.setAbsolutePosition(20, 240);
			doc.add(signpr);
		}
		Image tslogo = Image.getInstance(readAllBytes); //ts logo
		tslogo.scaleToFit(90,70);
		tslogo.setAbsolutePosition(25, 730);
		doc.add(tslogo);

		//doc.add(instance1);
		
		ServletOutputStream os = response.getOutputStream();
		doc.close();
		try {
			bos.write(baos.toByteArray());
			bos.flush();
			byte[] pdfDocument = baos.toByteArray();
			os.write(pdfDocument);
			baos.reset();
			baos = null;
			bos.close();
			os.flush();
			os.close();
			return;
		} catch (Exception e) {
		}
		return;

		
	}
}
