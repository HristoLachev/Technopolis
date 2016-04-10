package frontController.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import frontController.model.Account;
import frontController.model.AccountDAO;
import frontController.model.Address;
import frontController.model.AddressDAO;

@Controller
public class ProfileController {

	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public String profile(HttpSession session) {
		try {
			if (session.getAttribute("account") == null) {
				return "redirect:home";
			}
			session.setAttribute("addresses",
					AddressDAO.getAdressForAccount((Account) session.getAttribute("account")));
		} catch (SQLException e) {
			e.printStackTrace();
			session.setAttribute("exeption", "Database isn't working now,please try again later");
			return "exeption";
		} catch (Exception e) {
			e.printStackTrace();
			session.setAttribute("exeption", "The server has encountered a problem,please try again later");
			return "exeption";
		}
		return "profile";
	}

	@RequestMapping(value = "/profile", method = RequestMethod.POST)
	public String profilePost(HttpServletRequest request, HttpSession session) {
		try {
			if (request.getParameter("password") != null) {
				AccountDAO.passwordChange((Account) session.getAttribute("account"), request.getParameter("password"));

			}
			if ((request.getParameter("firstName") != null) && (request.getParameter("email") != null)) {
				if (!(request.getParameter("firstName")
						.equals(((Account) session.getAttribute("account")).getFirstName()))) {
					AccountDAO.firstNameChange((Account) session.getAttribute("account"),
							request.getParameter("firstName"));
				}
				if (!(request.getParameter("lastName")
						.equals(((Account) session.getAttribute("account")).getLastName()))) {
					AccountDAO.lastNameChange((Account) session.getAttribute("account"),
							request.getParameter("lastName"));
				}
				if (!(request.getParameter("email").equals(((Account) session.getAttribute("account")).getEmail()))) {
					AccountDAO.emailChange((Account) session.getAttribute("account"), request.getParameter("email"));
				}
				if (!(request.getParameter("phoneNumber")
						.equals(((Account) session.getAttribute("account")).getPhoneNumber()))) {
					AccountDAO.phoneNumberChange((Account) session.getAttribute("account"),
							request.getParameter("phoneNumber"));
				}
			}

		} catch (SQLException e) {
			e.printStackTrace();
			session.setAttribute("exeption", "Database isn't working now,please try again later");
			return "exeption";
		} catch (Exception e) {
			e.printStackTrace();
			session.setAttribute("exeption", "The server has encountered a problem,please try again later");
			return "exeption";
		}
		return "profile";
	}

	@RequestMapping(value = "/profile_Address", method = RequestMethod.GET)
	public String profileAddress(Model model, HttpSession session) {
		try {
			session.setAttribute("addresses",
					AddressDAO.getAdressForAccount((Account) session.getAttribute("account")));
		} catch (SQLException e) {
			e.printStackTrace();
			session.setAttribute("exeption", "Database isn't working now,please try again later");
			return "exeption";
		} catch (Exception e) {
			e.printStackTrace();
			session.setAttribute("exeption", "The server has encountered a problem,please try again later");
			return "exeption";
		}
		model.addAttribute("address", new Address());
		return "profile_Address";
	}

	@RequestMapping(value = "/profile_Address", method = RequestMethod.POST)
	public String profileAddressPost(@ModelAttribute Address address, HttpSession session) {
		try {
			AddressDAO.registerAddress(address, ((Account) session.getAttribute("account")).getId());
		} catch (SQLException e) {
			e.printStackTrace();
			session.setAttribute("exeption", "Database isn't working now,please try again later");
			return "exeption";
		} catch (Exception e) {
			e.printStackTrace();
			session.setAttribute("exeption", "The server has encountered a problem,please try again later");
			return "exeption";
		}
		return "profile_Address";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(Model model, HttpSession session) {
		try {
			session.setAttribute("islogged", null);
			session.setAttribute("account", null);
		} catch (Exception e) {
			e.printStackTrace();
			session.setAttribute("exeption", "The server has encountered a problem,please try again later");
			return "exeption";
		}

		return "redirect:home";
	}

}
