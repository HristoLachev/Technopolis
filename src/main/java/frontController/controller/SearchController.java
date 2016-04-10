package frontController.controller;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import frontController.model.Product;
import frontController.model.ProductDAO;

@Controller
public class SearchController {
	@RequestMapping(value = "/search", method = RequestMethod.POST)
	public String returnProduct(HttpServletRequest request, HttpSession session) {
		try {
			String searchParameter = request.getParameter("search");
			ArrayList<Product> products = ProductDAO.getProducts(null, searchParameter, null, null);
			session.setAttribute("productList", products);
		} catch (SQLException e) {
			session.setAttribute("exception", "Database isn't working now,please try again later");
			e.printStackTrace();
			return "exception";
		} catch (Exception e) {
			e.printStackTrace();
			session.setAttribute("exception", "The server has encountered a problem,please try again later");
			return "exception";
		}

		return "product_list";
	}
	@RequestMapping(value = "/searchByPrice", method = RequestMethod.POST)
	public String returnProductByPrice(HttpServletRequest request, HttpSession session) {
		try {
			int searchParameter =Integer.parseInt(request.getParameter("price")) ;
			ArrayList<Product> products = ProductDAO.getProducts(null, null, null, searchParameter);
			session.setAttribute("productList", products);
		} catch (SQLException e) {
			session.setAttribute("exception", "Database isn't working now,please try again later");
			e.printStackTrace();
			return "exception";
		} catch (Exception e) {
			e.printStackTrace();
			session.setAttribute("exception", "The server has encountered a problem,please try again later");
			return "exception";
		}

		return "product_list";
	}

}
