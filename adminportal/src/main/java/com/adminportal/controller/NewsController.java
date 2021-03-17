package com.adminportal.controller;





import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.adminportal.domain.News;
import com.adminportal.service.NewsService;

@Controller
@RequestMapping("/news")
public class NewsController {
	
	@Autowired
	private NewsService newsService;
	
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String addNews(Model model) {
		News news = new News();
		model.addAttribute("news",news);
		return "addNews";
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String addNewsPost(@ModelAttribute("news") News news, HttpServletRequest request) {
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

		return "redirect:newsList";
	}
	
	@RequestMapping("/newsList")
	public String newsList(Model model) {
		List<News> newsList = newsService.findAll();
		model.addAttribute("newsList",newsList);
		
		
		return "newsList";
	}

}
