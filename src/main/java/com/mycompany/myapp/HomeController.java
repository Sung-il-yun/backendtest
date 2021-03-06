package com.mycompany.myapp;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

import com.mycompany.myapp.TestVO;
import com.mycompany.myapp.ITester;
/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	// 마이바티스 테스트
	@Autowired
	private TestService service;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@GetMapping(value = "/href")
	public String hreftest(Model model) {
		int userMath;
		model.addAttribute("tList", service.selectAllScores());
		List<TestVO> list = service.selectAllScores();
		for(int i = 0 ; i < list.size(); i++ ){
		       userMath = list.get(i).getMath();

		       System.out.println("====userMath==="+userMath );

		}
		return "href";
	}
	
	@GetMapping(value = "/nowhere")
	public String reftest(Model model) {
		return "nowhere";
	}
	
	@ResponseBody
	@PostMapping(value = "/href")
	public String ajaxtest(@RequestBody Map<String, String> text) {
		System.out.println("텍스트: " + text);
		return text.get("key");
	}
	
}
