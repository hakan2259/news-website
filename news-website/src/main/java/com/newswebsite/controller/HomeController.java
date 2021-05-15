package com.newswebsite.controller;



import java.security.Principal;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import com.newswebsite.domain.Category;
import com.newswebsite.domain.Comment;
import com.newswebsite.domain.Contact;
import com.newswebsite.domain.News;
import com.newswebsite.domain.Settings;
import com.newswebsite.domain.TrendingTopic;
import com.newswebsite.domain.User;
import com.newswebsite.domain.security.PasswordResetToken;
import com.newswebsite.domain.security.Role;
import com.newswebsite.domain.security.UserRole;
import com.newswebsite.repository.UserRepository;
import com.newswebsite.service.CategoryService;
import com.newswebsite.service.CommentService;
import com.newswebsite.service.ContactService;
import com.newswebsite.service.HomeService;
import com.newswebsite.service.NewsService;
import com.newswebsite.service.PasswordResetTokenService;
import com.newswebsite.service.SettingsService;
import com.newswebsite.service.TrendingTopicService;
import com.newswebsite.service.UserService;
import com.newswebsite.service.impl.UserSecurityService;
import com.newswebsite.utility.MailConstructor;
import com.newswebsite.utility.SecurityUtility;

@Controller
public class HomeController {
	@Autowired
	private UserService userService;
	
	@Autowired
	private JavaMailSender mailSender;
	
	@Autowired
	private MailConstructor mailConstructor;
	
	@Autowired
	private UserSecurityService userSecurityService;
	
	@Autowired
	private ContactService contactService;
	
	@Autowired
	private CommentService commentService;
	
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private TrendingTopicService trendingTopicService;
	
	@Autowired
	private HomeService homeService;
	
	@Autowired
	private NewsService newsService;
	
	@Autowired
	private SettingsService settingsService;
	
	@Autowired
	private PasswordResetTokenService passwordResetTokenService;
	
	
	
	
	
	
	@RequestMapping("/")
	public String index(Model model,Principal principal) {
		
		
		
		
		
		
		model.addAttribute("standardDate", new Date());
		
		List<Category> firstSixByCategoryList = categoryService.findFirst6ByCategory();
		List<Category> afterSixByCategoryList = categoryService.findAfter6ByCategory();
        List<Category> findAllCategoryList = categoryService.findAllCategory();
		List<TrendingTopic> trendingTopicList = trendingTopicService.findAll();
		List<News> lastSixNewsList = homeService.findLast6ByNews();
		List<News> StartAt6Find2NewsList = homeService.StartAt6Find2News();
		List<News> StartAt8Find6NewsList = homeService.StartAt8Find6News();
		List<News> StartAt14Find10NewsList = homeService.StartAt14Find10News();
		List<News> findEditorPicksLast8ByNewsList = homeService.findEditorPicksLast8ByNews();
		Settings settings = settingsService.findBySettings();
		List<News> StartAt24Find10NewsList = homeService.StartAt24Find10News();
		List<News> findPopularLast6ByNewsList = homeService.findPopularLast6ByNews();
		List<News> findScienceByNewsList = homeService.findScienceByNews();
		List<News> findTechByNewsList = homeService.findTechByNews();
		List<News> findHealthByNewsList = homeService.findHealthByNews();
		List<News> findBookArtByNewsList = homeService.findBookArtByNews();
		
		if(principal !=null) {
			User user = userService.findByUsername(principal.getName());
			PasswordResetToken passwordResetToken = passwordResetTokenService.findPasswordResetTokenById(user.getId());
			model.addAttribute("passwordResetToken",passwordResetToken);
		}
	
		
		model.addAttribute("firstSixByCategoryList",firstSixByCategoryList);
		model.addAttribute("afterSixByCategoryList",afterSixByCategoryList);
		model.addAttribute("trendingTopicList",trendingTopicList);
		model.addAttribute("lastSixNewsList",lastSixNewsList);
		model.addAttribute("StartAt6Find2NewsList",StartAt6Find2NewsList);
		model.addAttribute("StartAt8Find6NewsList",StartAt8Find6NewsList);
		model.addAttribute("StartAt14Find10NewsList",StartAt14Find10NewsList);
		model.addAttribute("findEditorPicksLast8ByNewsList",findEditorPicksLast8ByNewsList);
		model.addAttribute("StartAt24Find10NewsList",StartAt24Find10NewsList);
		model.addAttribute("findPopularLast6ByNewsList",findPopularLast6ByNewsList);
		model.addAttribute("findScienceByNewsList",findScienceByNewsList);
		model.addAttribute("findTechByNewsList",findTechByNewsList);
		model.addAttribute("findHealthByNewsList",findHealthByNewsList);
		model.addAttribute("findBookArtByNewsList",findBookArtByNewsList);
		model.addAttribute("findAllCategoryList",findAllCategoryList);
		
		

		
		model.addAttribute("settings",settings);
		return "index";
	}
	
	@RequestMapping("/login")
	public String login(Model model) {
		model.addAttribute("classActiveLogin",true);
		return "login";
	}
	
	@RequestMapping("/newsDetail")
	public String newsDetail(
			@PathParam("id") Long id,Model model
			
			) {
		News news = newsService.findOne(id);
		Settings settings = settingsService.findBySettings();
		List<News> findPopularLast6ByNewsList = homeService.findPopularLast6ByNews();
        List<Category> findAllCategoryList = categoryService.findAllCategory();
        List<Comment> findCommentByNewsIdList = commentService.findCommentByNewsId(id);
        

		
		
		model.addAttribute("news",news);
		model.addAttribute("settings",settings);
		model.addAttribute("findPopularLast6ByNewsList",findPopularLast6ByNewsList);
		model.addAttribute("findAllCategoryList",findAllCategoryList);
		model.addAttribute("findCommentByNewsIdList",findCommentByNewsIdList);
		return "newsDetail";
	}
	
	@RequestMapping("/category")
	public String category(
			@PathParam("name") String name, Model model
			
			) {
		
		List<News> newsByCategoryNameList = newsService.findNewsByCategoryName(name);
		Settings settings = settingsService.findBySettings();
        List<Category> findAllCategoryList = categoryService.findAllCategory();
		List<News> findPopularLast6ByNewsList = homeService.findPopularLast6ByNews();

		
		model.addAttribute("newsByCategoryNameList",newsByCategoryNameList);
		model.addAttribute("settings",settings);
		model.addAttribute("findAllCategoryList",findAllCategoryList);
		model.addAttribute("findPopularLast6ByNewsList",findPopularLast6ByNewsList);

		return "categoryDetail";
	}
	
	@RequestMapping("/vipCategory")
	public String vipCategory(
			@PathParam("name") String name, Model model
			
			) {
		
		List<News> findAllVipNewsList = newsService.findAllVipNews(name);
		Settings settings = settingsService.findBySettings();
        List<Category> findAllCategoryList = categoryService.findAllCategory();
		List<News> findPopularLast6ByNewsList = homeService.findPopularLast6ByNews();

		
		model.addAttribute("findAllVipNewsList",findAllVipNewsList);
		model.addAttribute("settings",settings);
		model.addAttribute("findAllCategoryList",findAllCategoryList);
		model.addAttribute("findPopularLast6ByNewsList",findPopularLast6ByNewsList);

		return "vipCategoryDetail";
	}
	
	
	
	@RequestMapping("/myAccount")
	public String myAccount(Model model) {
		model.addAttribute("classActiveMyAccount",true);
		return "myAccount";
	}
	
	@RequestMapping("/forgetPassword")
	public String forgetPassword(Model model) {
		model.addAttribute("classActiveForgetPassword", true);
		return "forgetPassword";
	}
	

	@RequestMapping("/contact")
	public String contact(Model model) {
		model.addAttribute("postingDate", new Date());
		return "contact";
	}
	
	@RequestMapping("/about")
	public String about(Model model) {
		
		Settings settings = settingsService.findBySettings();
        List<Category> findAllCategoryList = categoryService.findAllCategory();

		model.addAttribute("settings",settings);
		model.addAttribute("findAllCategoryList",findAllCategoryList);

		return "about";
	}
	
	@RequestMapping(value="/contact/add",method=RequestMethod.POST)
	public String addContactPost(@ModelAttribute("contact") 
	Contact contact, 
	HttpServletRequest request,
	Model model) {
		contactService.save(contact);
		
		
		model.addAttribute("messageSent", "true");
		
		return "contact";
	}
	
	
	
	@RequestMapping(value = "/forgetPassword",method = RequestMethod.POST)
	public String forgetPasswordPost(
			HttpServletRequest request,
			@ModelAttribute("email") String email,
			Model model
			) {
		
		User user = userService.findByEmail(email);
		
		if (user == null) {
			model.addAttribute("emailNotExist", true);
			return "forgetPassword";
		}
		
		String password = SecurityUtility.randomPassword();
		
		String encryptedPassword = SecurityUtility.passwordEncoder().encode(password);
		user.setPassword(encryptedPassword);
		
		userService.save(user);
		
		String token = UUID.randomUUID().toString();
		userService.createPasswordResetTokenForUser(user, token);
		
		String appUrl = "http://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath();
		
		SimpleMailMessage newEmail = mailConstructor.constructResetTokenEmail(appUrl, request.getLocale(), token, user, password);
		
		mailSender.send(newEmail);
		
		model.addAttribute("forgetPasswordEmailSent", "true");
		
		
		return "forgetPassword";
	}
	
	@RequestMapping(value="/newUser", method = RequestMethod.POST)
	public String newUserPost(
			HttpServletRequest request,
			@ModelAttribute("email") String userEmail,
			@ModelAttribute("username") String username,
			Model model
			) throws Exception{
		model.addAttribute("classActiveNewAccount", true);
		model.addAttribute("email", userEmail);
		model.addAttribute("username", username);
		
		if (userService.findByUsername(username) != null) {
			model.addAttribute("usernameExists", true);
			
			return "myAccount";
		}
		
		if (userService.findByEmail(userEmail) != null) {
			model.addAttribute("emailExists", true);
			
			return "myAccount";
		}
		
		User user = new User();
		user.setUsername(username);
		user.setEmail(userEmail);
		user.setRoleId(2);
		
		String password = SecurityUtility.randomPassword();
		
		String encryptedPassword = SecurityUtility.passwordEncoder().encode(password);
		user.setPassword(encryptedPassword);
		
		Role role = new Role();
		role.setRoleId(2);
		role.setName("ROLE_USER");
		Set<UserRole> userRoles = new HashSet<>();
		userRoles.add(new UserRole(user, role));
		userService.createUser(user, userRoles);
		
		String token = UUID.randomUUID().toString();
		userService.createPasswordResetTokenForUser(user, token);
		
		String appUrl = "http://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath();
		
		
		SimpleMailMessage email = mailConstructor.constructResetTokenEmail(appUrl, request.getLocale(), token, user, password);
		
		mailSender.send(email);
		
		model.addAttribute("emailSent", "true");
	
		
		return "myAccount";
	}
	@RequestMapping("/newUser")
	public String newUser(Locale locale, @RequestParam("token") String token, Model model) {
		PasswordResetToken passToken = userService.getPasswordResetToken(token);

		if (passToken == null) {
			String message = "Invalid Token.";
			model.addAttribute("message", message);
			return "redirect:/badRequest";
		}

		User user = passToken.getUser();
		String username = user.getUsername();

		UserDetails userDetails = userSecurityService.loadUserByUsername(username);

		Authentication authentication = new UsernamePasswordAuthenticationToken(userDetails, userDetails.getPassword(),
				userDetails.getAuthorities());
		
		SecurityContextHolder.getContext().setAuthentication(authentication);
		
		model.addAttribute("user", user);

		model.addAttribute("classActiveEdit", true);
		
		return "myProfile";
	}
	
	// update user info -- user profile
	@RequestMapping(value = "/updateUserInfo",method=RequestMethod.POST)
	public String updateUserInfo(
			 @ModelAttribute("user") User user,
			 @ModelAttribute("newPassword") String newPassword,
			 @ModelAttribute("confirmPassword") String confirmPassword,
			 Model model
			 
			) throws Exception {
		
		User currentUser = userService.findOne(user.getId());
		if(currentUser == null) {
			throw new Exception("User not found!");
			
		}
		/* check email already exists */
		if(userService.findByEmail(user.getEmail()) !=null) {
			if(userService.findByEmail(user.getEmail()).getId() != currentUser.getId()) {
				model.addAttribute("emailExists",true);
				return "myProfile";
			}
		}
		
		/* check Username already exists */
		if(userService.findByUsername(user.getUsername()) !=null) {
			if(userService.findByUsername(user.getUsername()).getId() != currentUser.getId()) {
				model.addAttribute("usernameExists",true);
				return "myProfile";
			}
		}
		
		// update Password
		
		if(newPassword !=null & !newPassword.isEmpty() & !newPassword.equals("")) {
			BCryptPasswordEncoder passwordEncoder = SecurityUtility.passwordEncoder();
			String dbPassword = currentUser.getPassword();
			if(passwordEncoder.matches(user.getPassword(), dbPassword) & newPassword.equals(confirmPassword)) {
				currentUser.setPassword(passwordEncoder.encode(newPassword));
				
			}else {
				model.addAttribute("incorrectPassword", true);
				return "myProfile";
				
			}
			
		}
		currentUser.setFirstname(user.getFirstname());
		currentUser.setLastname(user.getLastname());
		currentUser.setUsername(user.getUsername());
		currentUser.setEmail(user.getEmail());
	    currentUser.setEnabled(true);
	    
		userService.save(currentUser);
		model.addAttribute("updateSuccess",true);
		model.addAttribute("user",currentUser);
		
		
		UserDetails userDetails = userSecurityService.loadUserByUsername(currentUser.getUsername());

		Authentication authentication = new UsernamePasswordAuthenticationToken(userDetails, userDetails.getPassword(),
				userDetails.getAuthorities());
		
		SecurityContextHolder.getContext().setAuthentication(authentication);
		
		return "myProfile";
		
	}
	
	@RequestMapping(value="/comment/add",method=RequestMethod.POST)
	public String addCommentPost(@ModelAttribute("comment")
	Comment comment,
	RedirectAttributes redirAttrs,
	Principal principal,
	HttpServletRequest request,

	Model model) {
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat format1 = new SimpleDateFormat("d MMM yyy HH:mm");
		String formatted = format1.format(cal.getTime());
		
		comment.setUsername(principal.getName());
		comment.setPostingDate(formatted);
		
		commentService.save(comment);
		redirAttrs.addFlashAttribute("message","Your comment has been made successfully. Your comment will appear after getting admin approval");

		return "redirect:/newsDetail?id="+comment.getNewsId();
	
		
	}
	
	
	
	
	
	
}
