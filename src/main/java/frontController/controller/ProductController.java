package frontController.controller;

import java.sql.SQLException;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import frontController.model.ProductDAO;

@Controller
public class ProductController {

	@RequestMapping(value = "/product", method = RequestMethod.GET)
	public String returnProduct(@RequestParam("productId") Integer id, HttpSession session) {
		try {
			session.setAttribute("productId", ProductDAO.getProductById(id));
		} catch (SQLException e) {
			session.setAttribute("exeption", e);
			return "exeption";
		}
		return "shop_item";
	}

	@RequestMapping(value = "/product_list", method = RequestMethod.GET)
	public String productView(HttpSession session) {
		try {
			session.setAttribute("productList", ProductDAO.getProductsByType("Телевизор"));
		} catch (SQLException e) {
			session.setAttribute("exeption", e);
			return "exeption";
		}
		return "product_list";
	}
	
	@RequestMapping(value = "/product_listTV", method = RequestMethod.GET)
	public String productViewTV(HttpSession session) {
		try {
			session.setAttribute("productList", ProductDAO.getProductsByType("Телевизор"));
		} catch (SQLException e) {
			session.setAttribute("exeption", e);
			return "exeption";
		}
		return "product_list";
	}

	@RequestMapping(value = "/product_listDVD", method = RequestMethod.GET)
	public String productViewDVD(HttpSession session) {
		try {
			session.setAttribute("productList", ProductDAO.getProductsByType("DVD"));
		} catch (SQLException e) {
			session.setAttribute("exeption", e);
			return "exeption";
		}
		return "product_list";
	}

	@RequestMapping(value = "/product_typeTV", method = RequestMethod.GET)
	public String productListTV() {
		return "product_typeTV";

	}

	@RequestMapping(value = "/product_typePhoto", method = RequestMethod.GET)
	public String productListPhoto() {
		return "product_typePhoto";
	}

	@RequestMapping(value = "/product_typeAuto", method = RequestMethod.GET)
	public String productListAuto() {
		return "product_typeAuto";
	}

	@RequestMapping(value = "/product_typeComp", method = RequestMethod.GET)
	public String productListComp() {
		return "product_typeComp";
	}

	@RequestMapping(value = "/product_typeCompAccesories", method = RequestMethod.GET)
	public String productListCompAccesories() {
		return "product_typeCompAccesories";
	}

	@RequestMapping(value = "/product_typeGSM", method = RequestMethod.GET)
	public String productListGSM() {
		return "product_typeGSM";
	}

	@RequestMapping(value = "/product_typeGame", method = RequestMethod.GET)
	public String productListGame() {
		return "product_typeGame";
	}



}
