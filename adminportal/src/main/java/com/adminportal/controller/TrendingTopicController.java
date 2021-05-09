package com.adminportal.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;



import com.adminportal.domain.TrendingTopic;

import com.adminportal.service.TrendingTopicService;

@Controller
@RequestMapping("/trendingTopic")
public class TrendingTopicController {
	
	
	
	@Autowired
	private TrendingTopicService trendingTopicService;
	
	
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String addTrendingTopic(Model model) {
		TrendingTopic trendingTopic = new TrendingTopic();
		model.addAttribute("trendingTopic",trendingTopic);
		return "/trendingTopic/addTrendingTopic";
	}
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String addTrendingTopicPost(@ModelAttribute("trendingTopic") TrendingTopic trendingTopic, HttpServletRequest request) {
		trendingTopicService.save(trendingTopic);
		
		return "redirect:/trendingTopic/trendingTopicList";
		
		
	}
	
	@RequestMapping("/trendingTopicList")
	public String trendingTopicList(Model model) {
		List<TrendingTopic> trendingTopicList = trendingTopicService.findAll();
		model.addAttribute("trendingTopicList",trendingTopicList);
	
		return "/trendingTopic/trendingTopicList";
	}
	
	
	@RequestMapping("/trendingTopicInfo")
	public String newsInfo(@RequestParam("id") Long id, Model model) {
		TrendingTopic trendingTopic = trendingTopicService.findOne(id);
		model.addAttribute("trendingTopic",trendingTopic);
		
		return "/trendingTopic/trendingTopicInfo";
		
		
		
	}
	
	@RequestMapping("/updateTrendingTopic")
	public String updateTrendingTopic(@RequestParam("id") Long id, Model model) {
		TrendingTopic trendingTopic = trendingTopicService.findOne(id);

		model.addAttribute("trendingTopic", trendingTopic);
	
		return "/trendingTopic/updateTrendingTopic";
	}
	
	@RequestMapping(value = "/updateTrendingTopic", method = RequestMethod.POST)
	public String updateTrendingTopicPost(@ModelAttribute("trendingTopic") TrendingTopic trendingTopic, HttpServletRequest request) {
		
		
		trendingTopicService.save(trendingTopic);
		
		return "redirect:/trendingTopic/trendingTopicInfo?id="+trendingTopic.getId();
	}
	
	
	


}
