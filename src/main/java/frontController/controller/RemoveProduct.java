package frontController.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.bind.annotation.RestController;

import frontController.model.Account;
import frontController.model.Product;
import frontController.model.ProductDAO;

@RestController
public class RemoveProduct {

	@RequestMapping(value = "/removeProduct", method = RequestMethod.GET)
	public List<Product> remove(HttpServletRequest request, HttpSession session) {
		try {
			Account account = (Account) session.getAttribute("account");
			return account.getBasket();
		} catch (Exception e) {
			e.printStackTrace();
			session.setAttribute("exeption", "The server has encountered a problem,please try again later");
			return null;
		}
	}

	@RequestMapping(value = "/removeProduct", method = RequestMethod.DELETE)
	public List<Product> doPost(HttpServletRequest request, HttpSession session) {
		String idString = null;
		try {
			idString = new BufferedReader(new InputStreamReader(request.getInputStream())).readLine();
		} catch (IOException e) {
			e.printStackTrace();
			session.setAttribute("exeption", "The server has encountered a problem,please try again later");
			return null;
		} catch (Exception e) {
			e.printStackTrace();
			session.setAttribute("exeption", "The server has encountered a problem,please try again later");
			return null;
		}

		Integer id = Integer.parseInt(idString);
		System.out.println(id);
		Account account = (Account) session.getAttribute("account");
		try {
			account.removeFromBasket(ProductDAO.getProductById(id));
		} catch (Exception e) {
			e.printStackTrace();
			session.setAttribute("exeption", "The server has encountered a problem,please try again later");
			return null;
		}

		return account.getBasket();
	}

}
