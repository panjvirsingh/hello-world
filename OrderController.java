package com.order.management.controller;

import java.io.IOException;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.order.management.domain.OrderDocument;
import com.order.management.model.FileBucket;
import com.order.management.service.OrderDocumentService;

@Controller
public class OrderController {

	@Autowired
	OrderDocumentService orderDocumentService;
	
	
	@RequestMapping("/uploadMultipleFile")
	public String uploadDocument(@Valid FileBucket fileBucket)
			throws IOException {
		System.out.println("Test");
		saveDocument(fileBucket);
		return "createprincipal";
	}

	private void saveDocument(FileBucket fileBucket) throws IOException {

		OrderDocument document = new OrderDocument();

		MultipartFile multipartFile = fileBucket.getFile();

		document.setName(multipartFile.getOriginalFilename());
		document.setDescription(fileBucket.getDescription());
		System.out.println("Description :"+fileBucket.getDescription());
		document.setType(multipartFile.getContentType());
		document.setContent(multipartFile.getBytes());
		orderDocumentService.saveDocument(document);
	}

	@RequestMapping(value = { "/uploaddocuments" }, method = RequestMethod.GET)
	public String addDocuments(ModelMap model) {
		FileBucket fileModel = new FileBucket();
		System.out.println("Test addDocuments");
		model.addAttribute("fileBucket", fileModel);
		return "uploaddocuments";
	}

}
