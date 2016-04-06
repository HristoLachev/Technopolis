package com.frontController.controller;

import java.sql.SQLException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.frontController.model.Account;
import com.frontController.model.AccountDAO;
import com.frontController.model.InvalidEmailOrPasswordExeption;

@Controller
public class HelloController {

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String sayHello1(Model model) {
		return "home";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String sayHello3(Model model) {
		model.addAttribute("account", new Account());
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String sayHello4(@ModelAttribute Account account) {
		try {
			Account gotten = AccountDAO.getAcc(account.getEmail(), account.getPassword());
		} catch (SQLException e) {
			e.printStackTrace();
			return "login";
		} catch (InvalidEmailOrPasswordExeption e) {
			e.printStackTrace();
			return "home";
		}
		return "header";

	}
}
