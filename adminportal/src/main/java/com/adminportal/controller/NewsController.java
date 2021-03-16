package com.adminportal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.adminportal.domain.News;

@Controller
@RequestMapping("/news")
public class NewsController {
	
	@RequestMapping("/add")
	public String addNews(Model model) {
		News news = new News();
		model.addAttribute("news",news);
		return "addNews";
		
		
		
	}

}
