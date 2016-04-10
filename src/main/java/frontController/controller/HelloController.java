package frontController.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import frontController.model.Account;
import frontController.model.Address;
import frontController.model.ProductDAO;
import frontController.model.ProductOutOfQuantityException;

@Controller
public class HelloController {

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String returnIndex(HttpSession session) {
		try {
			session.setAttribute("productList", ProductDAO.getProductsByType("New"));
		} catch (SQLException e) {
			e.printStackTrace();
			session.setAttribute("exception", "Database isn't working now,please try again later");
			return "exception";
		} catch (Exception e) {
			e.printStackTrace();
			session.setAttribute("exception", "The server has encountered a problem,please try again later");
			return "exception";
		}
		return "home";
	}

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String returnHome(HttpSession session) {
		try {
			return "home";
		} catch (Exception e) {
			e.printStackTrace();
			session.setAttribute("exception", "The server has encountered a problem,please try again later");
			return "exception";
		}
	}

	@RequestMapping(method = RequestMethod.GET, value = "header")
	public String returnHeader(HttpSession session) {
		try {
			return "header";
		} catch (Exception e) {
			e.printStackTrace();
			session.setAttribute("exception", "The server has encountered a problem,please try again later");
			return "exception";
		}
	}

	@RequestMapping(value = "/basket", method = RequestMethod.GET)
	public String returnBasket(HttpSession session) {
		try {
			if (session.getAttribute("islogged") == null || session.getAttribute("account") == null) {
				return "home";
			}
			return "basket";
		} catch (Exception e) {
			e.printStackTrace();
			session.setAttribute("exception", "The server has encountered a problem,please try again later");
			return "exception";
		}
	}

	@RequestMapping(value = "/checkOut", method = RequestMethod.GET)
	public String checkOut(Model model, HttpSession session) {
		try {
			model.addAttribute("address", new Address());
			if (session.getAttribute("islogged") == null || session.getAttribute("account") == null) {
				return "home";
			}
			return "checkOutPage";
		} catch (Exception e) {
			e.printStackTrace();
			session.setAttribute("exception", "The server has encountered a problem,please try again later");
			return "exception";
		}
	}

	@RequestMapping(value = "/buyProduct", method = RequestMethod.GET)
	public String buyProduct(@RequestParam("productId") Integer id, HttpSession session) {
		try {
			if (session.getAttribute("islogged") == null || session.getAttribute("account") == null) {
				return "redirect:basket";
			}
			Account account = (Account) session.getAttribute("account");
			account.buyProduct(ProductDAO.buyProduct(id));
			account.printProducts();
		} catch (SQLException e) {
			e.printStackTrace();
			session.setAttribute("exception", "Database isn't working now,please try again later");
			return "exception";
		} catch (ProductOutOfQuantityException e) {
			e.printStackTrace();
			session.setAttribute("exception", "The product is sold out");
			return "exception";
		} catch (Exception e) {
			e.printStackTrace();
			session.setAttribute("exception", "The server has encountered a problem,please try again later");
			return "exception";
		}

		return "redirect:basket";
	}

	

}
