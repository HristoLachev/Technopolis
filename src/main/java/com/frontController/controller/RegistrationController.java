package com.frontController.controller;

import java.sql.SQLException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.frontController.model.Account;
import com.frontController.model.AccountDAO;
import com.frontController.model.EmailTakenExeption;

@Controller
public class RegistrationController {

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String sayHello3(Model model) {
		model.addAttribute("account", new Account());
		return "register_form";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String sayHello4(@ModelAttribute Account account) {
		System.out.println(account);
		try {
			
			
			AccountDAO.registerAcc(account);
		} catch (SQLException e) {
			e.printStackTrace();
			return "home";
		} catch (EmailTakenExeption e) {
			e.printStackTrace();
			return "home";
		}

		return "product_typeAuto";

	}
}
