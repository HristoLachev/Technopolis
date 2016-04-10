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
	public String login(Model model, HttpSession session) {
		try {
			model.addAttribute("account", new Account());
			return "login";
		} catch (Exception e) {
			e.printStackTrace();
			session.setAttribute("exception", "The server has encountered a problem,please try again later");
			return "exeption";
		}
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginPost(@ModelAttribute Account account, HttpSession session) {
		try {
			session.setAttribute("islogged", true);
			Account gotten = AccountDAO.getAcc(account.getEmail(), account.getPassword());
			session.setAttribute("account", gotten);
		} catch (SQLException e) {
			e.printStackTrace();
			session.setAttribute("exeption", "Database isn't working now,please try again later");
			return "exeption";
		} catch (InvalidEmailOrPasswordExeption e) {
			e.printStackTrace();
			session.setAttribute("exeption", "Invalid email or password,try again");
			return "exeption";
		} catch (Exception e) {
			e.printStackTrace();
			session.setAttribute("exception", "The server has encountered a problem,please try again later");
			return "exeption";
		}
		return "home";

	}
}
