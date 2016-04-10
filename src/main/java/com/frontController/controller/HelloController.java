package com.frontController.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HelloController {

	@RequestMapping(value="/index",method = RequestMethod.GET)
	public String sayHello(Model model) {
		model.addAttribute("text", "Hi !");
		return "home";
	}	
	@RequestMapping(value="/login" , method = RequestMethod.GET)
	public String login(Model model) {
		model.addAttribute("text", "Hi !");
		return "login";
	}	

}
}
