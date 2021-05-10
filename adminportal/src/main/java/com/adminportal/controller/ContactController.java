package com.adminportal.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.adminportal.domain.Contact;
import com.adminportal.repository.ContactRepository;
import com.adminportal.service.ContactService;

@Controller
@RequestMapping("/contact")
public class ContactController {
	
	@Autowired
	private ContactRepository contactRepository;
	
	@Autowired
	private ContactService contactService;
	
	
	@RequestMapping("/contactList")
	public String contactList(Model model) {
		List<Contact> contactList = contactService.findAll();
		model.addAttribute("contactList",contactList);
	
		return "contactList";
	}
	
	@RequestMapping(value = "/remove", method = RequestMethod.POST)
	public String removeContact(
			@ModelAttribute("id") String id, Model model
			) {
		contactRepository.deleteContactById(Long.parseLong(id.substring(10)));
		List<Contact> contactList = contactService.findAll();
		model.addAttribute("contactList",contactList);
		
		return "redirect:/contact/contactList";
	}
}
