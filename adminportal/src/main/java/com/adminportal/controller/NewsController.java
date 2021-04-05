package com.adminportal.controller;





import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.adminportal.domain.Category;
import com.adminportal.domain.News;
import com.adminportal.service.CategoryService;
import com.adminportal.service.NewsService;

@Controller
@RequestMapping("/news")
public class NewsController {

	
	
	@Autowired
	private NewsService newsService;
	
	@Autowired
	private CategoryService categoryService;
	
	
	
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String addNews(Model model) {
		News news = new News();
		
		List<Category> categoryList = categoryService.findAllActiveByCategory();
		
		
		
		model.addAttribute("news",news);
		model.addAttribute("categoryList",categoryList);
		
		
		return "/news/addNews";
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String addNewsPost(@ModelAttribute("news") News news, HttpServletRequest request
			) {
		
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat format1 = new SimpleDateFormat("d MMM yyy HH:mm");
		String formatted = format1.format(cal.getTime());
		news.setPublicationDate(formatted);
		
		newsService.save(news);
		MultipartFile newsImage = news.getNewsImage();
		
	
		
		try {
			byte[] bytes = newsImage.getBytes();
		
			String name = news.getId() + ".jpg";
			BufferedOutputStream stream = new BufferedOutputStream(
					new FileOutputStream(new File("src/main/resources/static/assets/img/news/" + name)));
			stream.write(bytes);
			stream.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	
	
	
		return "redirect:/news/newsList";
	}
	
	@RequestMapping("/newsInfo")
	public String newsInfo(@RequestParam("id") Long id, Model model) {
		News news = newsService.findOne(id);
		model.addAttribute("news",news);
		
		return "/news/newsInfo";
		
		
		
	}
	
	@RequestMapping("/updateNews")
	public String updateBook(@RequestParam("id") Long id, Model model) {
		News news = newsService.findOne(id);
		List<Category> categoryList = categoryService.findAllActiveByCategory();

		model.addAttribute("news", news);
		model.addAttribute("categoryList", categoryList);
		return "/news/updateNews";
	}
	
	@RequestMapping(value = "/updateNews", method = RequestMethod.POST)
	public String updateNewsPost(@ModelAttribute("news") News news, HttpServletRequest request) {
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat format1 = new SimpleDateFormat("d MMM yyy HH:mm");
		String formatted = format1.format(cal.getTime());
		news.setPublicationDate(formatted);
		
		newsService.save(news);
		MultipartFile newsImage = news.getNewsImage();
		if(!newsImage.isEmpty()) {
			try {
				byte[] bytes = newsImage.getBytes();
				
				String name = news.getId() + ".jpg";
				
				Files.delete(Paths.get("src/main/resources/static/assets/img/news/"+name));
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(new File("src/main/resources/static/assets/img/news/" + name)));
				stream.write(bytes);
				stream.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return "redirect:/news/newsInfo?id="+news.getId();
	}
	
	
		
	
	
	@RequestMapping("/newsList")
	public String newsList(Model model) {
		List<News> newsList = newsService.findAll();
		model.addAttribute("newsList",newsList);
		
		
		return "/news/newsList";
	}

}
