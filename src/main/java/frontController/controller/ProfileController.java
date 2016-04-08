package frontController.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import frontController.model.Account;
import frontController.model.Address;
import frontController.model.AddressDAO;

@Controller
public class ProfileController {
	
	@RequestMapping(value="/profile", method = RequestMethod.GET)
	public String profile() {		
		return "profile";
	}
	
	
	@RequestMapping(value = "/profile_Address", method = RequestMethod.GET)
	public String profileAddress(Model model, HttpSession session) {
		try {
			session.setAttribute("addresses",
					AddressDAO.getAdressForAccount((Account) session.getAttribute("account")));
		} catch (SQLException e) {
			e.printStackTrace();
			session.setAttribute("exeption", e);
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
			session.setAttribute("exeption", e);
			return "exeption";
		}
		return "profile_Address";
	}

}
