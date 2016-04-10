package frontController.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import frontController.model.Account;
import frontController.model.AccountDAO;
import frontController.model.Address;
import frontController.model.AddressDAO;
import frontController.model.EmailTakenExeption;
import frontController.model.OrderDAO;

@Controller
public class RegistrationController {

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register(Model model) {
		model.addAttribute("account", new Account());
		return "register_form";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registerPost(@ModelAttribute Account account, HttpSession session) {
		try {
			AccountDAO.registerAcc(account);
		} catch (SQLException e) {
			e.printStackTrace();
			session.setAttribute("exeption", "Database isn't working now,please try again later");
			return "exeption";
		} catch (EmailTakenExeption e) {
			e.printStackTrace();
			session.setAttribute("exeption", "The email is already taken");
			return "exeption";
		} catch (Exception e) {
			e.printStackTrace();
			session.setAttribute("exeption", "The server has encountered a problem,please try again later");
			return "exeption";
		}
		return "home";
	}

	@RequestMapping(value = "/order", method = RequestMethod.GET)
	public String order(Model model, HttpSession session) {
		try {
			model.addAttribute("address", new Address());
			return "checkOutPage";
		} catch (Exception e) {
			e.printStackTrace();
			session.setAttribute("exeption", "The server has encountered a problem,please try again later");
			return "exeption";
		}
	}

	@RequestMapping(value = "/order", method = RequestMethod.POST)
	public String orderComplete(@ModelAttribute Address address, HttpSession session) {

		try {
			if (session.getAttribute("islogged") == null) {
				return "product_typeTV";
			}
			Account account = (Account) session.getAttribute("account");
			AddressDAO.registerAddress(address, account.getId());
			OrderDAO.executeOrder(account, address);
		} catch (SQLException e) {
			e.printStackTrace();
			session.setAttribute("exeption", "Database isn't working now,please try again later");
			return "exeption";
		} catch (Exception e) {
			e.printStackTrace();
			session.setAttribute("exeption", "The server has encountered a problem,please try again later");
			return "exeption";
		}
		return "home";
	}
}
