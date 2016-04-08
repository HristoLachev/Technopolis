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
import frontController.model.EmailTakenExeption;

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
			session.setAttribute("exeption", e);
			return "exeption";
		} catch (EmailTakenExeption e) {
			e.printStackTrace();
			session.setAttribute("exeption", e);
			return "exeption";
		}
		return "home";
	}

}
