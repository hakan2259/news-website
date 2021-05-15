package com.newswebsite.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.newswebsite.domain.Category;
import com.newswebsite.domain.News;
import com.newswebsite.domain.Settings;
import com.newswebsite.domain.User;
import com.newswebsite.service.CategoryService;
import com.newswebsite.service.NewsService;
import com.newswebsite.service.SettingsService;
import com.newswebsite.service.UserService;

@Controller
public class SearchController {
	@Autowired
	private UserService userService;
	
	@Autowired
	private NewsService newsService;
	
	@Autowired
	private SettingsService settingsService;
		
	@Autowired
	private CategoryService categoryService;
	
	
	
	
   @RequestMapping("/searchNews")
   private String searchNews(
		   @ModelAttribute("keyword") String keyword,
		   Principal principal,
		   Model model) {
	   if(principal !=null) {
		   String username = principal.getName();
		   User user = userService.findByUsername(username);
		   model.addAttribute("user",user);
		   
	   }
	   
	   List<News> newsList = newsService.blurrySearch(keyword);
	   
	   Settings settings = settingsService.findBySettings();
       List<Category> findAllCategoryList = categoryService.findAllCategory();
	  
	   if(newsList.isEmpty()) {
		   model.addAttribute("emptyList",true);
			model.addAttribute("settings",settings);

		   return "searchResultsGrid";
	   }
	   	model.addAttribute("newsList",newsList);
		

		model.addAttribute("settings",settings);
		model.addAttribute("findAllCategoryList",findAllCategoryList);


	   
	   return "searchResultsGrid";
   }
}
