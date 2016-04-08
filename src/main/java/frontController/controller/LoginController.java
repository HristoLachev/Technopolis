package frontController.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import frontController.model.Account;
import frontController.model.AccountDAO;
import frontController.model.InvalidEmailOrPasswordExeption;

@Controller
public class LoginController {
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model) {
		model.addAttribute("account", new Account());
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginPost(@ModelAttribute Account account, HttpSession session) {
		try {
			session.setAttribute("islogged", true);
			Account gotten = AccountDAO.getAcc(account.getEmail(), account.getPassword());
			session.setAttribute("account", gotten);
		} catch (SQLException e) {
			e.printStackTrace();
			session.setAttribute("exeption", e);
			return "exeption";
		} catch (InvalidEmailOrPasswordExeption e) {
			e.printStackTrace();
			session.setAttribute("exeption", e);
			return "exeption";
		}
		return "home";

	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(Model model, HttpSession session) {
		session.setAttribute("islogged", null);
		session.setAttribute("account", null);

		return "home";
	}
}
