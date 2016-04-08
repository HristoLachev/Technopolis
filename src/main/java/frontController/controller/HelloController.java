package frontController.controller;
import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import frontController.model.Account;
import frontController.model.ProductDAO;

@Controller
public class HelloController {

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String returnIndex() {
		return "home";
	}

	@RequestMapping(value = "/home", method = RequestMethod.POST)
	public String returnHome() {
		return "home";
	}

	@RequestMapping(method = RequestMethod.GET,value = "header")
	public String returnHeader() {
		return "header";
	}

	@RequestMapping(value = "/basket", method = RequestMethod.GET)
	public String returnBasket() {
		return "basket";
	}

	@RequestMapping(value = "/checkOut", method = RequestMethod.GET)
	 public String checkOut() {
	  return "checkOutPage";
	 }
	 
	 @RequestMapping(value = "/buyProduct", method = RequestMethod.GET)
	 public String buyProduct(@RequestParam("productId")Integer id,HttpSession session) {
	  try {
	   Account account=(Account)session.getAttribute("account");
	   account.buyProduct(ProductDAO.getProductById(id));
	  } catch (SQLException e) {
	   // TODO Auto-generated catch block
	   e.printStackTrace();
	  }
	  return "redirect:" +"./basket";
	 }
	
}
