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


import com.adminportal.domain.Category;
import com.adminportal.domain.Contact;
import com.adminportal.domain.News;
import com.adminportal.repository.CategoryRepository;
import com.adminportal.repository.ContactRepository;
import com.adminportal.service.CategoryService;
import com.adminportal.service.ContactService;
import com.adminportal.service.TrendingTopicService;

@Controller
@RequestMapping("/category")
public class CategoryController {
	@Autowired
	private CategoryRepository categoryRepository;
	
	
	
	
	@Autowired
	private CategoryService categoryService;
	

	
	
	
	
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String addCategory(Model model) {
		Category category = new Category();
		model.addAttribute("category",category);
		return "/category/addCategory";
	}
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String addCategoryPost(@ModelAttribute("category") Category category, HttpServletRequest request) {
		categoryService.save(category);
		
		return "redirect:categoryList";
		
		
	}
	
	@RequestMapping("/categoryList")
	public String categoryList(Model model) {
		List<Category> categoryList = categoryService.findAll();
		model.addAttribute("categoryList",categoryList);
	
		return "/category/categoryList";
	}
	

	
	
	@RequestMapping("/categoryInfo")
	public String newsInfo(@RequestParam("id") Long id, Model model) {
		Category category = categoryService.findOne(id);
		model.addAttribute("category",category);
		
		return "/category/categoryInfo";
		
		
		
	}
	
	@RequestMapping("/updateCategory")
	public String updateCategory(@RequestParam("id") Long id, Model model) {
		Category category = categoryService.findOne(id);

		model.addAttribute("category", category);
	
		return "/category/updateCategory";
	}
	
	@RequestMapping(value = "/updateCategory", method = RequestMethod.POST)
	public String updateCategoryPost(@ModelAttribute("category") Category category, HttpServletRequest request) {
		
		
		categoryService.save(category);
		
		return "redirect:/category/categoryInfo?id="+category.getId();
	}
	
	
	@RequestMapping(value = "/remove", method = RequestMethod.POST)
	public String remove(
			@ModelAttribute("id") String id, Model model
			) {
		categoryRepository.deleteCategoryById(Long.parseLong(id.substring(10)));
		List<Category> categoryList = categoryService.findAll();
		model.addAttribute("categoryList",categoryList);
		
		return "redirect:/category/categoryList";
	}
	
	
	
	
	
	
	
	


}
