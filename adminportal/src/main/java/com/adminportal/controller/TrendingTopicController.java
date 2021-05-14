package com.adminportal.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.adminportal.domain.Category;
import com.adminportal.domain.TrendingTopic;
import com.adminportal.domain.User;
import com.adminportal.repository.TrendingTopicRepository;
import com.adminportal.service.AdminService;
import com.adminportal.service.TrendingTopicService;

@Controller
@RequestMapping("/trendingTopic")
public class TrendingTopicController {
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private TrendingTopicRepository trendingTopicRepository;
	
	
	@Autowired
	private TrendingTopicService trendingTopicService;
	
	
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String addTrendingTopic(Model model,Principal principal) {
		TrendingTopic trendingTopic = new TrendingTopic();
		model.addAttribute("trendingTopic",trendingTopic);
		
		
		User adminUser = adminService.findAdminByUsername(principal.getName());
		if(adminUser !=null) {
			model.addAttribute("adminUser",adminUser);
		}
		return "/trendingTopic/addTrendingTopic";
	}
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String addTrendingTopicPost(@ModelAttribute("trendingTopic") TrendingTopic trendingTopic, HttpServletRequest request) {
		trendingTopicService.save(trendingTopic);
		
		return "redirect:/trendingTopic/trendingTopicList";
		
		
	}
	
	@RequestMapping("/trendingTopicList")
	public String trendingTopicList(Model model,Principal principal) {
		List<TrendingTopic> trendingTopicList = trendingTopicService.findAll();
		model.addAttribute("trendingTopicList",trendingTopicList);
		
		User adminUser = adminService.findAdminByUsername(principal.getName());
		if(adminUser !=null) {
			model.addAttribute("adminUser",adminUser);
		}
	
		return "/trendingTopic/trendingTopicList";
	}
	
	
	@RequestMapping("/trendingTopicInfo")
	public String newsInfo(@RequestParam("id") Long id, Model model,Principal principal) {
		TrendingTopic trendingTopic = trendingTopicService.findOne(id);
		model.addAttribute("trendingTopic",trendingTopic);
		
		User adminUser = adminService.findAdminByUsername(principal.getName());
		if(adminUser !=null) {
			model.addAttribute("adminUser",adminUser);
		}
		
		return "/trendingTopic/trendingTopicInfo";
		
		
		
	}
	
	@RequestMapping("/updateTrendingTopic")
	public String updateTrendingTopic(@RequestParam("id") Long id, Model model,Principal principal) {
		TrendingTopic trendingTopic = trendingTopicService.findOne(id);

		model.addAttribute("trendingTopic", trendingTopic);
		
		User adminUser = adminService.findAdminByUsername(principal.getName());
		if(adminUser !=null) {
			model.addAttribute("adminUser",adminUser);
		}
	
		return "/trendingTopic/updateTrendingTopic";
	}
	
	@RequestMapping(value = "/updateTrendingTopic", method = RequestMethod.POST)
	public String updateTrendingTopicPost(@ModelAttribute("trendingTopic") TrendingTopic trendingTopic, HttpServletRequest request) {
		
		
		trendingTopicService.save(trendingTopic);
		
		return "redirect:/trendingTopic/trendingTopicInfo?id="+trendingTopic.getId();
	}
	
	
	
	@RequestMapping(value = "/remove", method = RequestMethod.POST)
	public String remove(
			@ModelAttribute("id") String id, Model model
			) {
		trendingTopicRepository.deleteTrendingTopicById(Long.parseLong(id.substring(10)));
		List<TrendingTopic> trendingTopicList = trendingTopicService.findAll();
		model.addAttribute("trendingTopicList",trendingTopicList);
		
		return "redirect:/trendingTopic/trendingTopicList";
	}
	
	
	


}
